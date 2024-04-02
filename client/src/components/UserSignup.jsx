import React, { useState, useContext } from "react";
import { UserContext } from "../context/UserContext";

function UserSignUp({ toggleSignup }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [experience, setExperience] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("");
  const [errors, setErrors] = useState([]);

  const { setUser, setIsLoggedIn } = useContext(UserContext);

  function handleNewUserSubmit(e) {
    e.preventDefault();
    const userData = {
      name,
      experience,
      username,
      email,
      password,
      password_confirmation: passwordConfirmation,
    };
    fetch("/users", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(userData),
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.username) {
          setIsLoggedIn(true);
          setUser(data);
        } else {
          setErrors(data.errors || ["Registration failed"]);
        }
      })
      .catch((error) => {
        console.error("Signup Error:", error);
        setErrors([...errors, "Network error, please try again"]);
      });
  }

  return (
    <div className="signup-form">
      <form onSubmit={handleNewUserSubmit}>
        <fieldset>
          <input
            type="text"
            placeholder="Name"
            autoComplete="off"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </fieldset>
        <fieldset>
          <div className="experience-dropdown">
            <select
              id="experience"
              defaultValue={""}
              onChange={(e) => setExperience(e.target.value)}
            >
              <option value="" disabled>
                Experience
              </option>
              <option value="Beginner">Beginner</option>
              <option value="Intermediate">Intermediate</option>
              <option value="Expert">Expert</option>
            </select>
          </div>
        </fieldset>
        <fieldset>
          <input
            type="text"
            placeholder="Username"
            autoComplete="off"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
          />
        </fieldset>
        <fieldset>
          <input
            type="text"
            placeholder="Email"
            autoComplete="off"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </fieldset>

        <fieldset>
          <input
            type="password"
            placeholder="Password"
            autoComplete="current-password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </fieldset>
        <fieldset>
          <input
            type="password"
            placeholder="Password Confirmation"
            autoComplete="current-password"
            value={passwordConfirmation}
            onChange={(e) => setPasswordConfirmation(e.target.value)}
          />
        </fieldset>
        <input type="submit" value="Sign Up" />
      </form>
      <button onClick={toggleSignup}>Already have an account? Login</button>
      {errors.length > 0 && (
        <div className="errors" aria-live="assertive">
          <p>There were errors with your submission:</p>
          <ul>
            {errors.map((error, index) => (
              <li key={index}>{error}</li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

export default UserSignUp;
