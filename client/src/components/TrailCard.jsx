import React, { useState, useEffect } from "react";
import FavoritesToggle from "./FavoritesToggle";
import { Link } from "react-router-dom";
import "../css/TrailCard.css";

function TrailCard({ trail, isProfile }) {
  const [imageLoaded, setImageLoaded] = useState(false);
  const { id, name, location, image_url } = trail;

  console.log("isProfile:", isProfile);

  useEffect(() => {
    const img = new Image();
    img.src = trail.image_url;
    img.onload = () => setImageLoaded(true);
    img.onerror = () => console.error("Failed to load image:", trail.image_url);
  }, [trail.image_url]);

  return (
    <div className="trail-card">
      {!imageLoaded && (
        <div className="image-placeholder">
          <div className="loader"></div>
        </div>
      )}
      <img
        src={image_url}
        alt={name}
        className="trail-image"
        style={{ display: imageLoaded ? "block" : "none" }}
      />
      {isProfile && (
        <div className="trail-card-overlay">
          <FavoritesToggle trailId={id} />
        </div>
      )}
      <Link to={`/trail/${id}`}>
        <h2>{name}</h2>
      </Link>
      <p>{location}</p>
    </div>
  );
}

export default TrailCard;
