import React, { useState, useEffect, useContext } from "react";
import IntensityFilter from "./IntensityFilter";
import TrailList from "./TrailList";
import SearchBar from "./SearchBar";
import Header from "./Header";
import { TrailsContext } from "../context/TrailsContext";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faChevronLeft,
  faChevronRight,
} from "@fortawesome/free-solid-svg-icons";

import "../css/Trails.css";

function Trails() {
  const [selectedIntensity, setSelectedIntensity] = useState("All");
  const [searchTerm, setSearchTerm] = useState("");
  const [currentPage, setCurrentPage] = useState(1);

  const intensities = ["All", "Easy", "Moderate", "Hard"];
  const trailsPerPage = 6;
  const { trails } = useContext(TrailsContext);

  const filteredTrails = trails
    .filter(
      (trail) =>
        selectedIntensity === "All" || trail.intensity === selectedIntensity
    )
    .filter((trail) =>
      trail.name.toLowerCase().includes(searchTerm.toLowerCase())
    );

  const totalPages = Math.ceil(filteredTrails.length / trailsPerPage);

  const indexOfLastTrail = currentPage * trailsPerPage;
  const indexOfFirstTrail = indexOfLastTrail - trailsPerPage;
  const currentTrails = filteredTrails.slice(
    indexOfFirstTrail,
    indexOfLastTrail
  );

  useEffect(() => {
    setCurrentPage(1);
  }, [selectedIntensity]);

  const handleNextPage = () => {
    setCurrentPage((prev) => (prev < totalPages ? prev + 1 : prev));
  };

  const handlePrevPage = () => {
    setCurrentPage((prev) => (prev > 1 ? prev - 1 : prev));
  };

  const handleFilterChange = (intensity) => {
    setSelectedIntensity(intensity);
  };

  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const sortedTrails = currentTrails.sort((a, b) => {
    return a.name.localeCompare(b.name);
  });
  return (
    <div className="all-trails">
      <Header />
      <section className="search-filters">
        <div className="all-trails-search">
          <SearchBar
            searchTerm={searchTerm}
            onSearchChange={handleSearchChange}
          />
        </div>
        <div className="intensity-filter">
          <IntensityFilter
            intensities={intensities}
            selectedIntensity={selectedIntensity}
            onFilterChange={handleFilterChange}
          />
        </div>
      </section>
      <section className="trail-list">
        <TrailList trails={sortedTrails} />
        <div className="pagination-controls">
          <FontAwesomeIcon
            icon={faChevronLeft}
            className={`arrow ${currentPage === 1 ? "lighten" : "darken"}`}
            onClick={handlePrevPage}
          />
          <span>
            Page {currentPage} of {totalPages}
          </span>
          <FontAwesomeIcon
            icon={faChevronRight}
            className={`arrow ${
              currentPage === totalPages ? "lighten" : "darken"
            }`}
            onClick={handleNextPage}
          />
        </div>
      </section>
    </div>
  );
}

export default Trails;
