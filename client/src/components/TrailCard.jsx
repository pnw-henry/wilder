import React from "react";

function TrailCard({ trail, expandedTrailId, onTrailClick }) {
  const {
    id,
    name,
    location,
    intensity,
    length,
    elevation_gain,
    highest_point,
    image_url,
  } = trail;
  const isExpanded = expandedTrailId === trail.id;

  return (
    <div
      className={`trail-card ${isExpanded ? "expanded" : ""}`}
      onClick={() => onTrailClick(isExpanded ? null : id)}
      tabIndex="0"
      role="button"
      aria-expanded={isExpanded}
    >
      <div className="trail-card-header">
        <h2>{name}</h2>
        <p>{location}</p>
      </div>
      {isExpanded && (
        <div className="trail-card-body">
          {image_url && (
            <img
              src={image_url}
              alt={`View of ${name}`}
              loading="lazy"
              width="400px"
            />
          )}
          <p>Intensity: {intensity}</p>
          <p>Length: {length} miles</p>
          <p>Elevation Gain: {elevation_gain} feet</p>
          <p>Highest Point: {highest_point} feet</p>
        </div>
      )}
    </div>
  );
}

export default TrailCard;
