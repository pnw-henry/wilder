import React, { useState, useContext } from "react";
import { useNavigate } from "react-router-dom";
import { UserContext } from "../context/UserContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { ReportsContext } from "../context/ReportsContext";

function UserLogin({ className }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [errors, setErrors] = useState([]);
  const navigate = useNavigate();
  const { setUser, setIsLoggedIn } = useContext(UserContext);
  const { setUserFavorites } = useContext(FavoritesContext);
  const { setUserReports } = useContext(ReportsContext);

  function handleLogin(e) {
    e.preventDefault();
    const userData = {
      username,
      password,
    };
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(userData),
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        if (data.username) {
          setUser(data);
          setUserFavorites(data.favorites);
          setUserReports(data.reports);
          setIsLoggedIn(true);
          navigate("/");
        } else {
          setErrors(data.errors || ["Login failed"]);
        }
      })
      .catch((error) => {
        console.error("Login Error:", error);
        setErrors([...errors, "Network error, please try again"]);
      });
  }

  return (
    <div className={`login-page ${className}`}>
      <form className="credentials-form" onSubmit={handleLogin}>
        <h2>Start Exploring</h2>
        <input
          type="text"
          placeholder="Username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
          autoComplete="off"
        />
        <input
          type="password"
          placeholder="Password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          autoComplete="current-password"
        />
        <input type="submit" value="Login" />
      </form>
      {errors.length > 0 && (
        <div className="errors" aria-live="polite">
          {errors.map((error, index) => (
            <p key={index}>{error}</p>
          ))}
        </div>
      )}
    </div>
  );
}
export default UserLogin;
