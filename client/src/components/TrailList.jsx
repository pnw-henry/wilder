import React from "react";
import TrailCard from "./TrailCard";
function TrailList({ trails, expandedTrailId, onTrailClick }) {
  return (
    <div className="trail-cards">
      {trails.map((trail) => (
        <TrailCard
          key={trail.id}
          trail={trail}
          expandedTrailId={expandedTrailId}
          onTrailClick={onTrailClick}
        />
      ))}
    </div>
  );
}
export default TrailList;
