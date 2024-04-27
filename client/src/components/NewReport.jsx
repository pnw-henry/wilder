import React, { useContext, useState, useEffect } from "react";
import { UserContext } from "../context/UserContext";
import { TrailsContext } from "../context/TrailsContext";
import { ReportsContext } from "../context/ReportsContext";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faSnowflake, faMosquito } from "@fortawesome/free-solid-svg-icons";

import "../css/NewReport.css";

function NewReport({
  trailId,
  trailName,
  closeForm,
  existingReport,
  windowRef,
}) {
  const { user } = useContext(UserContext);
  const { setUserReports, setReports } = useContext(ReportsContext);
  const { setTrails } = useContext(TrailsContext);

  const [reportData, setReportData] = useState({
    date: existingReport?.date || "",
    road_condition: existingReport?.road_condition || "",
    trail_condition: existingReport?.trail_condition || "",
    snow: existingReport?.snow || false,
    bugs: existingReport?.bugs || false,
    summary: existingReport?.summary || "",
  });

  useEffect(() => {
    if (existingReport) {
      setReportData(existingReport);
    }
  }, [existingReport]);

  const handleChange = (e) => {
    const { name, value, type, checked } = e.target;
    setReportData((prevData) => ({
      ...prevData,
      [name]: type === "checkbox" ? checked : value,
    }));
  };

  const isFormFilled =
    reportData.date &&
    reportData.road_condition &&
    reportData.trail_condition &&
    reportData.summary;

  const handleSubmit = (e) => {
    e.preventDefault();

    const endpoint = existingReport
      ? `/reports/${existingReport.id}`
      : "/reports";
    const method = existingReport ? "PATCH" : "POST";

    if (user && trailId) {
      fetch(endpoint, {
        method: method,
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          ...reportData,
          user_id: user.id,
          trail_id: trailId,
        }),
      })
        .then((response) => {
          if (!response.ok) {
            throw new Error("Network response was not ok");
          }
          return response.json();
        })
        .then((newOrUpdatedReport) => {
          // Update Trails Context
          setTrails((prevTrails) =>
            prevTrails.map((trail) => {
              if (trail.id === parseInt(trailId)) {
                return {
                  ...trail,
                  reports: existingReport
                    ? trail.reports.map((r) =>
                        r.id === newOrUpdatedReport.id ? newOrUpdatedReport : r
                      )
                    : [...trail.reports, newOrUpdatedReport],
                };
              }
              return trail;
            })
          );

          // Update User Reports Context
          setUserReports((prevReports) =>
            existingReport
              ? prevReports.map((r) =>
                  r.id === newOrUpdatedReport.id ? newOrUpdatedReport : r
                )
              : [...prevReports, newOrUpdatedReport]
          );

          // Update Global Reports Context
          setReports((prevReports) =>
            existingReport
              ? prevReports.map((r) =>
                  r.id === newOrUpdatedReport.id ? newOrUpdatedReport : r
                )
              : [...prevReports, newOrUpdatedReport]
          );

          closeForm();
          windowRef.current.scrollIntoView({ behavior: "smooth" });
        })
        .catch((error) => {
          console.error("Report Error:", error);
        });
    }
  };

  return user ? (
    <form className="new-report-form" onSubmit={handleSubmit}>
      <h2>{`Trail Report for ${trailName}`}</h2>
      <div className="form-group">
        <label htmlFor="date">Date</label>
        <input
          type="date"
          name="date"
          id="date"
          value={reportData.date}
          onChange={handleChange}
          required
        />
      </div>
      <div className="form-group">
        <label htmlFor="road_condition">Road Condition</label>
        <input
          type="text"
          name="road_condition"
          placeholder="Road Condition"
          value={reportData.road_condition}
          onChange={handleChange}
          required
        />
      </div>
      <div className="form-group">
        <label htmlFor="trail_condition">Trail Condition</label>
        <input
          type="text"
          name="trail_condition"
          placeholder="Trail Condition"
          value={reportData.trail_condition}
          onChange={handleChange}
          required
        />
      </div>
      <div className="checkbox-group">
        <input
          type="checkbox"
          name="snow"
          id="snow"
          checked={reportData.snow}
          onChange={handleChange}
        />
        <label htmlFor="snow">
          <FontAwesomeIcon icon={faSnowflake} className="icon" /> Snow
        </label>
      </div>
      <div className="checkbox-group">
        <input
          type="checkbox"
          name="bugs"
          id="bugs"
          checked={reportData.bugs}
          onChange={handleChange}
        />
        <label htmlFor="bugs">
          <FontAwesomeIcon icon={faMosquito} className="icon" /> Bugs
        </label>
      </div>
      <div className="form-group">
        <label htmlFor="summary">Summary</label>
        <textarea
          name="summary"
          id="summary"
          placeholder="Summary"
          value={reportData.summary}
          onChange={handleChange}
          required
        />
      </div>
      <div className="form-buttons">
        <button type="submit" disabled={!isFormFilled}>
          {existingReport ? "Update Report" : "Submit Report"}
        </button>
        <button type="button" onClick={closeForm}>
          Cancel
        </button>
      </div>
    </form>
  ) : (
    <div>Please log in to submit a report.</div>
  );
}

export default NewReport;
