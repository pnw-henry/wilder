import React from "react";

import "../css/Filter.css";

function Filter({
  selectedIntensity,
  selectedLength,
  selectedElevation,
  onFilterChange,
}) {
  const intensities = ["All Difficulties", "Easy", "Moderate", "Hard"];
  const lengths = ["All Distances", "Less than 4 miles", "More than 4 miles"];
  const elevations = [
    "All Elevation Gains",
    "Less than 2000 feet",
    "More than 2000 feet",
  ];

  function handleSelection(type, value) {
    onFilterChange(type, value);
  }

  return (
    <div className="filter-options">
      <div className="filter-group">
        {intensities.map((intensity) => (
          <button
            key={intensity}
            className={`filter-button ${
              selectedIntensity === intensity ? "active" : ""
            }`}
            onClick={() => handleSelection("intensity", intensity)}
          >
            {intensity}
          </button>
        ))}
      </div>
      <div className="filter-group">
        {lengths.map((length) => (
          <button
            key={length}
            className={`filter-button ${
              selectedLength === length ? "active" : ""
            }`}
            onClick={() => handleSelection("length", length)}
          >
            {length}
          </button>
        ))}
      </div>
      <div className="filter-group">
        {elevations.map((elevation) => (
          <button
            key={elevation}
            className={`filter-button ${
              selectedElevation === elevation ? "active" : ""
            }`}
            onClick={() => handleSelection("elevation", elevation)}
          >
            {elevation}
          </button>
        ))}
      </div>
    </div>
  );
}
export default Filter;
