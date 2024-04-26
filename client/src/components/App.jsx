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
import { LoadingContext } from "../context/LoadingContext";

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
    const fetchData = async () => {
      try {
        const [trailsRes, reportsRes] = await Promise.all([
          fetch("/trails").then((res) => res.json()),
          fetch("/reports").then((res) => res.json()),
        ]);

        trailsRes.sort((a, b) => a.name.localeCompare(b.name));
        setTrails(trailsRes);

        setReports(reportsRes);
        setLoading(false);
      } catch (error) {
        setErrors((prev) => [...prev, error.message]);
      }
    };
    fetchData();
  }, []);

  useEffect(() => {
    const fetchUser = async () => {
      try {
        const userData = await fetch("/me", { credentials: "include" }).then(
          (res) => res.json()
        );
        if (userData.username) {
          setUser(userData);
          setIsLoggedIn(true);
          setUserReports(userData.reports);
          setUserFavorites(userData.favorites);
        } else {
          const errors = Array.isArray(userData.errors)
            ? userData.errors
            : [userData.errors];
          setErrors(errors);
        }
      } catch (error) {
        setErrors((prev) => [...prev, error.message]);
      }
    };
    fetchUser();
  }, []);

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
    }),
    [userReports, reports]
  );

  const loadingContextValue = useMemo(
    () => ({ loading, setLoading }),
    [loading]
  );

  return (
    <UserContext.Provider value={userContextValue}>
      <TrailsContext.Provider value={trailsContextValue}>
        <FavoritesContext.Provider value={favoritesContextValue}>
          <ReportsContext.Provider value={reportsContextValue}>
            <LoadingContext.Provider value={loadingContextValue}>
              <div className="App">
                <div className={fadeIn ? "fade-in" : ""}>
                  <Routes>
                    <Route path="/trails" element={<Trails />}></Route>
                    <Route path="/trail/:trailId" element={<TrailPage />} />
                    <Route path="/login" element={<Login />} />
                    <Route path="/profile" element={<UserProfile />} />
                    <Route path="/" element={<Home errors={errors} />} />
                  </Routes>
                </div>
                {!loading && <Footer />}
              </div>
            </LoadingContext.Provider>
          </ReportsContext.Provider>
        </FavoritesContext.Provider>
      </TrailsContext.Provider>
    </UserContext.Provider>
  );
}

export default App;
