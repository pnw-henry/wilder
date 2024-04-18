import React, { useState, useEffect } from "react";
import UserLogin from "./UserLogin";
import UserSignup from "./UserSignup";
import Header from "./Header";

import "../css/Login.css";

function Login() {
  const [signUp, setSignUp] = useState(false);

  useEffect(() => {
    document.title = "Wilder | Login";
    window.scrollTo(0, 0);
  }, []);

  const toggleSignup = () => setSignUp((prevSignUp) => !prevSignUp);

  return (
    <div className="login-page">
      <Header />
      <div className="login-container">
        <div
          className={`login-signup ${signUp ? "show-signup" : "show-login"}`}
        >
          {signUp ? (
            <UserSignup key="signup" className="user-signup-enter" />
          ) : (
            <UserLogin key="login" className="user-login-enter" />
          )}
        </div>
      </div>
      <button
        onClick={toggleSignup}
        className="toggle-form"
        aria-label={signUp ? "Go to login" : "Go to sign up"}
      >
        {signUp
          ? "Already have an account? Log in"
          : "Don't have an account? Sign up"}
      </button>
    </div>
  );
}

export default Login;
