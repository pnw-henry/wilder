import React from "react";
import { Link } from "react-router-dom";

function TrailCard({ trail }) {
  const { id, name, location, image_url } = trail;

  return (
    <div className="trail-card">
      <Link to={`/trail/${id}`}>
        <div>
          {image_url && (
            <img
              src={image_url}
              alt={`View of ${name}`}
              loading="lazy"
              width="400px"
            />
          )}
          <h2>{name}</h2>
          <p>{location}</p>
        </div>
      </Link>
    </div>
  );
}

export default TrailCard;
