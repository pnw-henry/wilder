import React, { useState, useContext } from "react";
import { UserContext } from "../context/UserContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { useNavigate } from "react-router-dom";

function UserSignUp({ className }) {
  const [formData, setFormData] = useState({
    name: "",
    username: "",
    password: "",
    passwordConfirmation: "",
  });
  const [errors, setErrors] = useState([]);
  const { setUser, setIsLoggedIn } = useContext(UserContext);
  const { setUserFavorites } = useContext(FavoritesContext);
  const navigate = useNavigate();

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  function handleNewUserSubmit(e) {
    e.preventDefault();

    fetch("/users", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        name: formData.name,
        username: formData.username.toLowerCase(),
        password: formData.password,
        password_confirmation: formData.passwordConfirmation,
      }),
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.username) {
          setIsLoggedIn(true);
          setUser(data);
          setUserFavorites(data.favorites);
          navigate("/");
        } else {
          setErrors(data.errors || ["Registration failed"]);
        }
      })
      .catch((error) => {
        setErrors([
          ...errors,
          error.message || "Network error, please try again",
        ]);
      });
  }

  return (
    <div className={`signup-page ${className}`}>
      <form className="credentials-form" onSubmit={handleNewUserSubmit}>
        <h2>Join the wild</h2>
        <fieldset>
          <input
            type="text"
            name="name"
            placeholder="Name"
            autoComplete="off"
            value={formData.name}
            onChange={handleChange}
          />
        </fieldset>
        <fieldset>
          <input
            type="text"
            name="username"
            placeholder="Username"
            autoComplete="off"
            value={formData.username}
            onChange={handleChange}
          />
        </fieldset>
        <fieldset>
          <input
            type="password"
            name="password"
            placeholder="Password"
            autoComplete="current-password"
            value={formData.password}
            onChange={handleChange}
          />
        </fieldset>
        <fieldset>
          <input
            type="password"
            name="passwordConfirmation"
            placeholder="Confirm Password"
            autoComplete="current-password"
            value={formData.passwordConfirmation}
            onChange={handleChange}
          />
        </fieldset>
        <input type="submit" value="Sign Up" />
      </form>
      {errors && (
        <div className="error-messages">
          {errors.map((error, index) => (
            <p className="error" key={index}>
              {error}
            </p>
          ))}
        </div>
      )}
    </div>
  );
}

export default UserSignUp;
