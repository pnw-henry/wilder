import React, { useState, useEffect, useContext } from "react";
import Header from "./Header";
import FavoritesToggle from "./FavoritesToggle";
import NewReport from "./NewReport";
import Reports from "./Reports";
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

  useEffect(() => {
    const foundTrail = trails.find((t) => t.id.toString() === trailId);
    if (foundTrail) {
      setLoading(true);
      const img = new Image();
      img.src = foundTrail.image_url;
      img.onload = () => {
        setTrail(foundTrail);
        setLoading(false);
      };
      img.onerror = () => {
        console.error("Image loading failed for", foundTrail.name);
        setTrail(foundTrail);
        setLoading(false);
      };
    }
  }, [trails, trailId, setLoading]);

  useEffect(() => {
    document.title = `Wilder | ${trail?.name}`;
    window.scrollTo(0, 0);
  }, [trail]);

  if (loading || !trail) {
    return (
      <div className="home">
        <div className="photo-loading">
          <div className="home-loader"></div>
        </div>
      </div>
    );
  }

  const handleToggleReportForm = () => {
    setShowReportForm(!showReportForm);
  };

  const trailStats = [
    { label: "Length", value: `${trail.length} miles` },
    { label: "Elevation", value: `${trail.elevation_gain} feet` },
    { label: "Highest Point", value: `${trail.highest_point} feet` },
    { label: "Intensity", value: trail.intensity },
  ];

  return (
    <div className="trail-page">
      <Header />
      <div className="trail-information">
        <div className="trail-heading">
          <h1>{trail.name}</h1>
          <p>{trail.location}</p>
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
      <div className="page-divider"> </div>
      <div className="trail-content">
        <div className="trail-visuals">
          <img src={trail.image_url} alt={`View of ${trail.name}`} />
          {user && (
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
              {trail.pass === "None"
                ? "You don't need a pass for parking"
                : `You need a ${trail.pass} Pass for parking`}
            </p>
          </div>
        </div>
      </div>
      <section className="trailpage-reports-section">
        <h2>Trail Reports</h2>
        {trail.reports.length === 0 && <p>No reports yet.</p>}
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
          <div className={`modal-backdrop ${showReportForm ? "active" : ""}`}>
            <div className={`modal-content ${showReportForm ? "active" : ""}`}>
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
