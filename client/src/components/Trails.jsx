import React, { useState, useContext } from "react";
import IntensityFilter from "./IntensityFilter";
import TrailList from "./TrailList";
import SearchBar from "./SearchBar";
import { TrailsContext } from "../context/TrailsContext";

import "../css/Trails.css";

function Trails() {
  const [selectedIntensity, setSelectedIntensity] = useState("All");
  const [searchTerm, setSearchTerm] = useState("");
  const [expandedTrailId, setExpandedTrailId] = useState(null);

  const intensities = ["All", "Easy", "Moderate", "Hard"];

  const { trails } = useContext(TrailsContext);

  const handleFilterChange = (intensity) => {
    setSelectedIntensity(intensity);
    setExpandedTrailId(null);
  };

  const handleTrailClick = (id) => {
    setExpandedTrailId(id === expandedTrailId ? null : id);
  };

  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const filteredTrails = trails
    .filter(
      (trail) =>
        selectedIntensity === "All" || trail.intensity === selectedIntensity
    )
    .filter((trail) =>
      trail.name.toLowerCase().includes(searchTerm.toLowerCase())
    );

  const sortedTrails = filteredTrails.sort((a, b) => {
    return a.name.localeCompare(b.name);
  });
  return (
    <div className="trails">
      <header>
        <section>
          <h1>All Trails</h1>
          <SearchBar
            searchTerm={searchTerm}
            onSearchChange={handleSearchChange}
          />
          <IntensityFilter
            intensities={intensities}
            selectedIntensity={selectedIntensity}
            onFilterChange={handleFilterChange}
          />
        </section>
      </header>
      <TrailList
        trails={sortedTrails}
        expandedTrailId={expandedTrailId}
        onTrailClick={handleTrailClick}
      />
    </div>
  );
}

export default Trails;
