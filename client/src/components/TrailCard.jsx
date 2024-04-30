import React, { useState, useEffect } from "react";
import FavoritesToggle from "./FavoritesToggle";
import { Link } from "react-router-dom";
import "../css/TrailCard.css";

function TrailCard({ trail, isProfile }) {
  const [imageLoaded, setImageLoaded] = useState(false);
  const { id, name, location, image_url } = trail;

  useEffect(() => {
    const img = new Image();
    img.src = trail.image_url;
    img.onload = () => setImageLoaded(true);
    img.onerror = () => console.error("Failed to load image:", trail.image_url);
  }, [trail.image_url]);

  return (
    <div className="trail-card">
      <div className="image-container">
        {!imageLoaded ? (
          <div className="image-placeholder">
            <div className="loader"></div>
          </div>
        ) : (
          <img
            src={image_url}
            onContextMenu={(e) => e.preventDefault()}
            alt={name}
            className="trail-image"
          />
        )}
      </div>
      {isProfile && (
        <div className="trail-card-overlay">
          <FavoritesToggle trailId={id} />
        </div>
      )}
      <div className="trail-card-info">
        <Link to={`/trail/${id}`}>
          <h2>{name}</h2>
        </Link>
        <p>{location}</p>
      </div>
    </div>
  );
}

export default TrailCard;
