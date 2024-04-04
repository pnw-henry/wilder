import React, { useState, useContext, useEffect } from "react";
import { Link } from "react-router-dom";
import { TrailsContext } from "../context/TrailsContext";
import SearchBar from "./SearchBar";

import "../css/Home.css";

function Home() {
  const [searchTerm, setSearchTerm] = useState("");
  const { trails } = useContext(TrailsContext);
  const [randomTrails, setRandomTrails] = useState([]);
  const [homeImage, setHomeImage] = useState(null);
  const [placeholderTrailImage, setPlaceholderTrailImage] = useState(null);

  useEffect(() => {
    const shuffledTrails = trails.sort(() => 0.5 - Math.random());
    setRandomTrails(shuffledTrails.slice(0, 8));
  }, [trails]);

  useEffect(() => {
    fetch("/home_image")
      .then((response) => response.json())
      .then((data) => {
        setHomeImage(data.home_image_url);
        setPlaceholderTrailImage(data.placeholder_trail_image_url);
      })
      .catch((error) => console.error("Failed to load home image:", error));
  }, []);
  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const filteredTrails = trails.filter((trail) => {
    return trail.name.toLowerCase().includes(searchTerm.toLowerCase());
  });

  return (
    <div className="home">
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
      <section className="random-trails-section">
        <div className="random-trails">
          {randomTrails.map((trail) => (
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
      <footer className="footer">
        <a
          href="https://www.linkedin.com/in/pnw-henry/"
          target="_blank"
          rel="noopener noreferrer"
        >
          LinkedIn
        </a>
        <a
          href="https://www.instagram.com/pnw.henry/"
          target="_blank"
          rel="noopener noreferrer"
        >
          Instagram
        </a>
        <a href="mailto:henrye@gmail.com">Email</a>
        <p>Made by Henry in Seattle</p>
      </footer>
    </div>
  );
}

export default Home;
