import React, { useState, useEffect, useMemo } from "react";
import { Route, Routes, useLocation } from "react-router-dom";
import Footer from "./Footer";
import Home from "./Home";
import Trails from "./Trails";
import TrailPage from "./TrailPage";
import UserProfile from "./UserProfile";
import Login from "./Login";
import { UserContext } from "../context/UserContext";
import { TrailsContext } from "../context/TrailsContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { ReportsContext } from "../context/ReportsContext";

function App() {
  const [user, setUser] = useState(null);
  const [userFavorites, setUserFavorites] = useState([]);
  const [userReports, setUserReports] = useState([]);
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [errors, setErrors] = useState([]);
  const [trails, setTrails] = useState([]);
  const [reports, setReports] = useState([]);
  const [fadeIn, setFadeIn] = useState(false);
  const [loading, setLoading] = useState(true);

  const location = useLocation();

  useEffect(() => {
    setLoading(true);

    const fetchTrails = fetch("/trails").then((res) => res.json());
    const fetchReports = fetch("/reports").then((res) => res.json());

    Promise.all([fetchTrails, fetchReports])
      .then(([fetchedTrails, fetchedReports]) => {
        setTrails(fetchedTrails);
        setReports(fetchedReports);
      })
      .catch((error) => {
        setErrors((prevErrors) => [...prevErrors, error.message]);
      })
      .finally(() => {
        setLoading(false);
      });
  }, []);

  useEffect(() => {
    fetch("/me", { credentials: "include" })
      .then((response) => response.json())
      .then((user) => {
        if (user.username) {
          console.log(user);
          setIsLoggedIn(true);
          setUser(user);
          setUserFavorites(user.favorites);
          setUserReports(user.reports);
        } else {
          setErrors(user.errors);
        }
      })
      .catch((error) => {
        console.error("Authentication error:", error);
        setErrors([...errors, error.message]);
      });
  }, [setIsLoggedIn, setUser, setErrors, errors]);

  useEffect(() => {
    setFadeIn(true);

    const timer = setTimeout(() => setFadeIn(false), 500);
    return () => clearTimeout(timer);
  }, [location]);

  const userContextValue = useMemo(
    () => ({
      user,
      setUser,
      isLoggedIn,
      setIsLoggedIn,
    }),
    [user, isLoggedIn]
  );
  const trailsContextValue = useMemo(() => ({ trails, setTrails }), [trails]);
  const favoritesContextValue = useMemo(
    () => ({ userFavorites, setUserFavorites }),
    [userFavorites]
  );
  const reportsContextValue = useMemo(
    () => ({
      userReports,
      setUserReports,
      reports,
      setReports,
      loading,
      setLoading,
    }),
    [userReports, loading, reports]
  );

  return (
    <UserContext.Provider value={userContextValue}>
      <TrailsContext.Provider value={trailsContextValue}>
        <FavoritesContext.Provider value={favoritesContextValue}>
          <ReportsContext.Provider value={reportsContextValue}>
            <div className="App">
              <div className={fadeIn ? "fade-in" : ""}>
                <Routes>
                  <Route path="/trails" element={<Trails />}></Route>
                  <Route path="/trail/:trailId" element={<TrailPage />} />
                  <Route path="/login" element={<Login />} />
                  <Route path="/profile" element={<UserProfile />} />
                  <Route path="/" element={<Home />} />
                </Routes>
                <Footer />
              </div>
            </div>
          </ReportsContext.Provider>
        </FavoritesContext.Provider>
      </TrailsContext.Provider>
    </UserContext.Provider>
  );
}

export default App;
