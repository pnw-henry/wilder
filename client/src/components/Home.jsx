import React, { useState, useContext } from "react";
import { TrailsContext } from "../context/TrailsContext";
import SearchBar from "./SearchBar";

import "../css/Home.css";

function Home() {
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedTrailId, setSelectedTrailId] = useState(null);
  const { trails } = useContext(TrailsContext);

  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
    setSelectedTrailId(null);
  };

  const handleTrailClick = (clickedTrail) => {
    if (selectedTrailId === clickedTrail.id) {
      setSelectedTrailId(null);
    } else {
      setSelectedTrailId(clickedTrail.id);
    }
  };

  const filteredTrails = trails.filter((trail) => {
    return trail.name.toLowerCase().includes(searchTerm.toLowerCase());
  });

  return (
    <div className="home">
      <SearchBar searchTerm={searchTerm} onSearchChange={handleSearchChange} />
      <div className="trail-list">
        {searchTerm !== "" && (
          <div className="search-results">
            {filteredTrails.map((trail) => (
              <div
                className={`trail-card ${
                  selectedTrailId === trail.id ? "expanded" : ""
                }`}
                key={trail.id}
                onClick={() => handleTrailClick(trail)}
              >
                <h2>{trail.name}</h2>
                {selectedTrailId === trail.id && (
                  <div className="trail-detail">
                    <p>{trail.location}</p>
                    <p>{trail.length} miles</p>
                  </div>
                )}
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

export default Home;
