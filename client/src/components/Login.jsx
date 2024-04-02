import React, { useState, useContext } from "react";
import UserLogin from "./UserLogin";
import UserSignup from "./UserSignup";
import { UserContext } from "../context/UserContext";

function Login({ errors, setErrors }) {
  const { user, setUser, isLoggedIn, setIsLoggedIn } = useContext(UserContext);
  const [signUp, setSignUp] = useState(false);

  function handleLogout() {
    fetch("/logout", { method: "DELETE", credentials: "include" }).then(
      (response) => {
        if (response.ok) {
          setUser(null);
          setIsLoggedIn(false);
        }
      }
    );
  }

  const toggleSignup = () => setSignUp(!signUp);

  if (isLoggedIn && user) {
    return (
      <div className="welcome">
        <h1>Welcome, {user.username}!</h1>
        <button type="button" onClick={handleLogout}>
          Logout
        </button>
      </div>
    );
  }

  return (
    <div className="login-signup">
      <div className="login-signup-button">
        {signUp ? (
          <UserSignup
            errors={errors}
            setErrors={setErrors}
            toggleSignup={toggleSignup}
          />
        ) : (
          <UserLogin
            errors={errors}
            setErrors={setErrors}
            toggleSignup={toggleSignup}
          />
        )}
      </div>
    </div>
  );
}

export default Login;
