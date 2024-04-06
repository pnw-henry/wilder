import React from "react";
import TrailCard from "./TrailCard";
function TrailList({ trails }) {
  return (
    <div className="trail-list-grid">
      {trails.map((trail) => (
        <TrailCard key={trail.id} trail={trail} />
      ))}
    </div>
  );
}
export default TrailList;
