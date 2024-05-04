import React, { useState, useEffect, useContext } from "react";
import Header from "./Header";
import FavoritesToggle from "./FavoritesToggle";
import NewReport from "./NewReport";
import Reports from "./Reports";
import EditTrailModal from "./EditTrailModal";
import { useParams } from "react-router-dom";
import ReactHtmlParser from "html-react-parser";
import { TrailsContext } from "../context/TrailsContext";
import { UserContext } from "../context/UserContext";
import { LoadingContext } from "../context/LoadingContext";
import "../css/TrailPage.css";

function TrailPage() {
  const { trails } = useContext(TrailsContext);
  const { user } = useContext(UserContext);
  const { loading, setLoading } = useContext(LoadingContext);
  const { trailId } = useParams();
  const [trail, setTrail] = useState(null);
  const [showReportForm, setShowReportForm] = useState(false);
  const [showEditModal, setShowEditModal] = useState(false);

  useEffect(() => {
    document.title = `Wilder | ${trail?.name}`;
    window.scrollTo(0, 0);
  }, [trail]);

  console.log("trail", trail);

  useEffect(() => {
    setLoading(true);
    const foundTrail = trails.find((t) => t.id.toString() === trailId);

    if (foundTrail) {
      setTrail(foundTrail);
      setLoading(false);
    } else {
      setTrail(null);
      setLoading(false);
    }
  }, [trails, trailId, setLoading]);

  const trailStats = trail
    ? [
        { label: "Length", value: `${trail.length || "N/A"} miles` },
        { label: "Elevation", value: `${trail.elevation_gain || "N/A"} feet` },
        {
          label: "Highest Point",
          value: `${trail.highest_point || "N/A"} feet`,
        },
        { label: "Intensity", value: trail.intensity || "N/A" },
      ]
    : [];

  const handleEditClick = () => {
    setShowEditModal(true);
  };

  const handleToggleReportForm = () => {
    setShowReportForm(!showReportForm);
  };

  if (loading || !trail) {
    return (
      <div className="home">
        <div className="photo-loading">
          <div className="home-loader"></div>
        </div>
      </div>
    );
  }

  return (
    <div className="trail-page">
      <Header />
      <div className="trail-information">
        <div className="trail-heading">
          <h1>{trail.name}</h1>
          <p>{trail.location}</p>
          {user && user.id === 1 && (
            <button className="edit-trail-button" onClick={handleEditClick}>
              Edit Trail
            </button>
          )}
          <div className="external-links">
            <button
              onClick={() =>
                window.open(
                  `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(
                    `${trail.latitude},${trail.longitude}`
                  )}&query_place_id=${trail.place_id}`,
                  "_blank"
                )
              }
              className="directions-button"
            >
              Get Directions
            </button>
            <button
              onClick={() =>
                window.open(
                  `https://forecast.weather.gov/MapClick.php?lat=${trail.latitude}&lon=${trail.longitude}`,
                  "_blank"
                )
              }
              className="weather-button"
            >
              Weather Forecast
            </button>
          </div>
          {showEditModal && (
            <EditTrailModal
              trail={trail}
              closeForm={() => setShowEditModal(false)}
            />
          )}
        </div>
        <div className="trail-stats">
          {trailStats.map((stat, index) => (
            <div key={index} className="stat-item">
              <p className="stat-label">{stat.label}</p>
              <p className="stat-value">{stat.value}</p>
            </div>
          ))}
        </div>
      </div>
      <div className="trail-content">
        <div className="trail-visuals">
          {trail.image_url && (
            <img
              src={trail.image_url}
              alt={trail.name}
              className="trail-image"
            ></img>
          )}
          {user && !loading && (
            <div className="favorite-toggle">
              <FavoritesToggle trailId={trail.id} />
            </div>
          )}
        </div>
        <div className="trail-summary">
          <p>{ReactHtmlParser(trail.summary)}</p>
          <div className="dogs-pass">
            <p>{trail.dogs ? "Dogs are allowed" : "Dogs are not allowed"}</p>
            <p>
              {trail.pass === "None" || trail.pass === "none"
                ? "You don't need a pass for parking"
                : `You need a ${trail.pass} Pass for parking`}
            </p>
          </div>
        </div>
      </div>
      <section className="trailpage-reports-section">
        <h1>Trail Reports</h1>
        {trail.reports.length === 0 && (
          <p>{`No trail reports for ${trail.name} yet.`}</p>
        )}
        {user ? (
          <button
            onClick={handleToggleReportForm}
            className="new-report-button"
          >
            Submit New Report
          </button>
        ) : (
          <p>
            <a href="/login">Log in</a> to submit a new report.
          </p>
        )}
        {showReportForm && (
          <div
            className={`modal-backdrop ${showReportForm ? "active" : ""}`}
            onClick={handleToggleReportForm}
          >
            <div
              className={`modal-content ${showReportForm ? "active" : ""}`}
              onClick={(e) => e.stopPropagation()}
            >
              <NewReport
                trailId={trailId}
                trailName={trail.name}
                closeForm={handleToggleReportForm}
              />
            </div>
          </div>
        )}
        <Reports reports={trail.reports} />
      </section>
    </div>
  );
}

export default TrailPage;
