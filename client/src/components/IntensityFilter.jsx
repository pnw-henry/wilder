import React from "react";

function IntensityFilter({ intensities, selectedIntensity, onFilterChange }) {
  return (
    <div className="intensity-filter">
      {intensities.map((intensity) => (
        <button
          key={intensity}
          className={selectedIntensity === intensity ? "active" : ""}
          onClick={() => onFilterChange(intensity)}
        >
          {intensity}
        </button>
      ))}
    </div>
  );
}
export default IntensityFilter;
