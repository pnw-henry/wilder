import React from "react";

function IntensityFilter({ intensities, selectedIntensity, onFilterChange }) {
  return (
    <select
      value={selectedIntensity}
      onChange={(e) => onFilterChange(e.target.value)}
      className="intensity-dropdown"
    >
      {intensities.map((intensity) => (
        <option key={intensity} value={intensity}>
          {intensity}
        </option>
      ))}
    </select>
  );
}
export default IntensityFilter;
