import React, { useState, useEffect, useContext } from "react";
import { useParams } from "react-router-dom";
import { TrailsContext } from "../context/TrailsContext";
import Header from "./Header";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faSnowflake, faBug } from "@fortawesome/free-solid-svg-icons";
import "../css/TrailPage.css";

function TrailPage() {
  const { trails } = useContext(TrailsContext);
  const { trailId } = useParams();
  const [trail, setTrail] = useState(null);

  console.log("trail", trail);

  useEffect(() => {
    const foundTrail = trails.find((trail) => trail.id.toString() === trailId);
    setTrail(foundTrail);
  }, [trails, trailId]);

  if (!trail) {
    return <div>Loading...</div>;
  }

  const trailStats = [
    { label: "Length", value: `${trail.length} miles` },
    { label: "Elevation Gain", value: `${trail.elevation_gain} feet` },
    { label: "Highest Point", value: `${trail.highest_point} feet` },
    { label: "Intensity", value: trail.intensity },
  ];

  return (
    <div className="trail-page">
      <Header />
      <section className="trail-details">
        <div className="trail-name-location">
          <h1>{trail.name}</h1>
          <p>{trail.location}</p>
        </div>
        <div className="trail-stats">
          {trailStats.map((stat, index) => (
            <div key={index} className="stat-item">
              <p className="stat-value">{stat.value}</p>
              <p className="stat-label">{stat.label}</p>
            </div>
          ))}
        </div>
      </section>
      <section className="trail-summary">
        <img src={trail.image_url} alt={`View of ${trail.name}`} />
        <p className="trail-text">{trail.summary}</p>
      </section>
      <section className="trail-reports">
        {trail.reports.map((report, index) => (
          <div key={index} className="report">
            <p className="report-date">{report.date}</p>
            <p className="report-road-condition">
              <strong>Road Condition:</strong> {report.road_condition}
            </p>
            <p className="report-trail-condition">
              <strong>Trail Condition:</strong> {report.trail_condition}
            </p>
            <p className="report-summary">{report.summary}</p>
            <div className="conditions">
              <FontAwesomeIcon
                icon={faSnowflake}
                color={report.snow ? "#00f" : "#333"}
              />
              <FontAwesomeIcon
                icon={faBug}
                color={report.bugs ? "#0f0" : "#333"}
              />
            </div>
          </div>
        ))}
      </section>
    </div>
  );
}

export default TrailPage;
