import React, {
  useState,
  useContext,
  useEffect,
  useRef,
  useCallback,
  useLayoutEffect,
} from "react";
import { Link } from "react-router-dom";
import { TrailsContext } from "../context/TrailsContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { ReportsContext } from "../context/ReportsContext";
import { LoadingContext } from "../context/LoadingContext";
import SearchBar from "./SearchBar";
import TrailCard from "./TrailCard";
import Reports from "./Reports";
import Header from "./Header";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faChevronDown } from "@fortawesome/free-solid-svg-icons";
import "../css/Home.css";

function Home({ errors }) {
  const [searchTerm, setSearchTerm] = useState("");
  const [shuffledTrails, setShuffledTrails] = useState([]);
  const [displayedTrails, setDisplayedTrails] = useState([]);
  const [latestTrailReports, setLatestTrailReports] = useState([]);
  const [homeImage, setHomeImage] = useState(null);

  const [trailsLoaded, setTrailsLoaded] = useState(false);
  const [favoritesLoaded, setFavoritesLoaded] = useState(false);
  const [imageLoaded, setImageLoaded] = useState(false);

  const [windowWidth, setWindowWidth] = useState(window.innerWidth);

  const { trails } = useContext(TrailsContext);
  const { userFavorites } = useContext(FavoritesContext);
  const { reports } = useContext(ReportsContext);
  const { loading } = useContext(LoadingContext);

  console.log("trails", trails);

  const trailsContainerRef = useRef(null);
  const allContentLoaded = trailsLoaded && favoritesLoaded && imageLoaded;

  useEffect(() => {
    document.title = "Wilder | Home";
    window.scrollTo(0, 0);
  }, []);

  useEffect(() => {
    if (trails.length > 0) {
      if (userFavorites === null) {
        setShuffledTrails(trails.sort(() => 0.5 - Math.random()));
        setTrailsLoaded(true);
      } else {
        const favoriteIds = new Set(userFavorites.map((fav) => fav.trail_id));
        const nonFavoriteTrails = trails.filter(
          (trail) => !favoriteIds.has(trail.id)
        );
        const shuffled = nonFavoriteTrails.sort(() => 0.5 - Math.random());
        setShuffledTrails(shuffled);
        setTrailsLoaded(true);
      }
    }
  }, [trails, userFavorites]);

  useEffect(() => {
    if (userFavorites !== undefined && userFavorites !== null) {
      setFavoritesLoaded(true);
    }
  }, [userFavorites]);

  useEffect(() => {
    fetch("/home_image")
      .then((response) => response.json())
      .then((data) => {
        const img = new Image();
        img.src = data.home_image_url;
        img.onload = () => {
          setHomeImage(data.home_image_url);
          setImageLoaded(true);
        };
        img.onerror = () => {
          console.error("Image loading failed");
          setImageLoaded(false);
        };
      })
      .catch((error) => {
        console.error("Fetching home image failed:", error);
        setImageLoaded(false);
      });
  }, []);

  const adjustDisplayedTrails = useCallback(() => {
    if (trailsContainerRef.current && allContentLoaded) {
      const containerWidth = trailsContainerRef.current.offsetWidth;
      const cardWidthWithGap = 150;
      const maxItemsPerRow = Math.floor(containerWidth / cardWidthWithGap);
      const totalMaxItems = maxItemsPerRow * 2;

      setDisplayedTrails(shuffledTrails.slice(0, totalMaxItems));
    }
  }, [shuffledTrails, allContentLoaded]);

  useEffect(() => {
    adjustDisplayedTrails();

    const handleResize = () => {
      setWindowWidth(window.innerWidth);
    };

    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, [adjustDisplayedTrails]);

  useLayoutEffect(() => {
    adjustDisplayedTrails();
  }, [adjustDisplayedTrails, windowWidth]);

  useEffect(() => {
    if (!loading) {
      const latestReports = reports.sort(
        (a, b) => new Date(b.date) - new Date(a.date)
      );
      setLatestTrailReports(latestReports);
    }
  }, [reports, loading]);

  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const filteredTrails = trails.filter((trail) => {
    return trail.name.toLowerCase().includes(searchTerm.toLowerCase());
  });

  if (!allContentLoaded) {
    return (
      <div className="home">
        <div className="photo-loading">
          <div className="home-loader"></div>
        </div>
      </div>
    );
  }

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
            {searchTerm &&
              (filteredTrails.length > 0 ? (
                <div
                  className={`search-results ${searchTerm ? "expanded" : ""}`}
                >
                  {filteredTrails.length > 3 && (
                    <div className="scroll-indicator">
                      <FontAwesomeIcon icon={faChevronDown} />
                    </div>
                  )}
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
              ) : (
                <div className="no-results">
                  <p>No trails found matching "{searchTerm}"</p>
                </div>
              ))}
          </div>
        </div>
      </section>
      <section className="home-trails-section">
        <div className="home-titles">Featured Trails</div>
        <div className="home-trails-container" ref={trailsContainerRef}>
          {displayedTrails.map((trail) => (
            <TrailCard key={trail.id} trail={trail} />
          ))}
        </div>
      </section>
      <section className="home-reports-section">
        <h2 className="home-titles">Latest Trail Reports</h2>
        <Reports reports={latestTrailReports} isHome={true} showName={true} />
      </section>
      {errors && (
        <div className="error-messages">
          {errors.map((error, index) => (
            <p key={index} className="error-message">
              {error}
            </p>
          ))}
        </div>
      )}
    </div>
  );
}

export default Home;
