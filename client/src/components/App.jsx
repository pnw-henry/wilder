import React, { useState, useEffect, useMemo } from "react";
import { Route, Routes } from "react-router-dom";
import Header from "./Header";
import Home from "./Home";
import Trails from "./Trails";
import UserProfile from "./UserProfile";
import Login from "./Login";
import { UserContext } from "../context/UserContext";
import { TrailsContext } from "../context/TrailsContext";

function App() {
  const [user, setUser] = useState(null);
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [errors, setErrors] = useState([]);
  const [trails, setTrails] = useState([]);

  console.log("user", user);

  const trailsAPI = "/trails";

  useEffect(() => {
    fetch(trailsAPI)
      .then((response) => response.json())
      .then(setTrails)
      .catch((error) => console.error("Failed to load trails:", error));
  }, []);

  useEffect(() => {
    fetch("/me", { credentials: "include" })
      .then((response) => response.json())
      .then((data) => {
        if (data.username) {
          console.log(data);
          setIsLoggedIn(true);
          setUser(data);
        } else {
          setErrors(data.errors);
        }
      })
      .catch((error) => {
        console.error("Authentication error:", error);
        setErrors([...errors, error.message]);
      });
  }, [setIsLoggedIn, setUser, setErrors]);

  const userContextValue = useMemo(
    () => ({ user, setUser, isLoggedIn, setIsLoggedIn }),
    [user, isLoggedIn]
  );
  const trailsContextValue = useMemo(() => ({ trails }), [trails]);

  return (
    <UserContext.Provider value={userContextValue}>
      <TrailsContext.Provider value={trailsContextValue}>
        <div className="App">
          <Header />
          <main>
            <Routes>
              <Route path="/trails" element={<Trails />}></Route>

              <Route
                path="/login"
                element={<Login errors={errors} setErrors={setErrors} />}
              />
              <Route path="/profile" element={<UserProfile />} />
              <Route path="/" element={<Home />} />
            </Routes>
          </main>
        </div>
      </TrailsContext.Provider>
    </UserContext.Provider>
  );
}

export default App;
