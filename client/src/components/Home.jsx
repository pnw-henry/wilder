import React, { useState, useContext, useEffect, useRef } from "react";
import { Link } from "react-router-dom";
import { TrailsContext } from "../context/TrailsContext";
import SearchBar from "./SearchBar";
import Header from "./Header";

import "../css/Home.css";

function Home() {
  const [searchTerm, setSearchTerm] = useState("");
  const { trails } = useContext(TrailsContext);
  const [shuffledTrails, setShuffledTrails] = useState([]);
  const [displayedTrails, setDisplayedTrails] = useState([]);
  const [homeImage, setHomeImage] = useState(null);
  const [placeholderTrailImage, setPlaceholderTrailImage] = useState(null);
  const trailsContainerRef = useRef(null);

  useEffect(() => {
    fetch("/home_image")
      .then((response) => response.json())
      .then((data) => {
        setHomeImage(data.home_image_url);
        setPlaceholderTrailImage(data.placeholder_trail_image_url);
      })
      .catch((error) => console.error("Failed to load home image:", error));
  }, []);

  useEffect(() => {
    const shuffledTrails = trails.sort(() => 0.5 - Math.random());
    setShuffledTrails(shuffledTrails);
  }, [trails]);

  useEffect(() => {
    const adjustDisplayedTrails = () => {
      if (trailsContainerRef.current) {
        const containerWidth = trailsContainerRef.current.offsetWidth;
        const minCardWidth = 250; // Your trail card width + margin
        const gap = 30; // The gap between cards
        const maxCards = Math.floor(containerWidth / (minCardWidth + gap));
        setDisplayedTrails(shuffledTrails.slice(0, maxCards));
      }
    };

    adjustDisplayedTrails(); // Adjust initially
    window.addEventListener("resize", adjustDisplayedTrails); // Adjust on resize

    return () => window.removeEventListener("resize", adjustDisplayedTrails);
  }, [shuffledTrails]);

  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const filteredTrails = trails.filter((trail) => {
    return trail.name.toLowerCase().includes(searchTerm.toLowerCase());
  });

  return (
    <div className="home">
      <Header />
      <section className="upper-section">
        <div
          className="home-background"
          style={{ backgroundImage: `url(${homeImage})` }}
        >
          <div className="search-container">
            <SearchBar
              searchTerm={searchTerm}
              onSearchChange={handleSearchChange}
            />
            {searchTerm && (
              <div
                className={`search-results ${
                  searchTerm && filteredTrails.length > 0 ? "expanded" : ""
                }`}
              >
                {filteredTrails.map((trail) => (
                  <Link
                    to={`/trail/${trail.id}`}
                    key={trail.id}
                    className="trail-preview"
                  >
                    <h2>{trail.name}</h2>
                    <p>{trail.location}</p>
                  </Link>
                ))}
              </div>
            )}
          </div>
        </div>
      </section>
      <section className="random-trails-section" ref={trailsContainerRef}>
        <div className="random-trails">
          {displayedTrails.map((trail) => (
            <div key={trail.id} className="trail-card">
              <Link to={`/trail/${trail.id}`}>
                <img
                  src={trail.image_url || placeholderTrailImage}
                  alt={trail.name}
                />
                <h2>{trail.name}</h2>
                <p>{trail.location}</p>Read more
              </Link>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}

export default Home;
