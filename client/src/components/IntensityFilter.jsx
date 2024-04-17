import React from "react";

function IntensityFilter({ selectedIntensity, onFilterChange }) {
  const intensities = ["All Difficulties", "Easy", "Moderate", "Hard"];

  return (
    <div className="dropdown-wrapper">
      <select
        value={selectedIntensity}
        onChange={(e) => onFilterChange(e.target.value)}
        className="intensity-dropdown"
      >
        <option value="" disabled>
          Difficulty Select
        </option>
        {intensities.map((intensity) => (
          <option key={intensity} value={intensity}>
            {intensity}
          </option>
        ))}
      </select>
    </div>
  );
}
export default IntensityFilter;
