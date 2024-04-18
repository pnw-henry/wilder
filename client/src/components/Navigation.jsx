import React, { useContext } from "react";
import { NavLink } from "react-router-dom";

import { UserContext } from "../context/UserContext";

import "../css/Navigation.css";
function Navigation() {
  const { user, isLoggedIn } = useContext(UserContext);
  return (
    <nav className="nav-bar">
      <NavLink
        to="/trails"
        className={(isActive) => "nav-link" + (!isActive ? " unselected" : "")}
      >
        All Trails
      </NavLink>
      <div className="login">
        {isLoggedIn && user ? (
          <div className="welcome">
            <NavLink
              className={(isActive) =>
                "nav-link" + (!isActive ? " unselected" : "")
              }
              to="/profile"
            >
              {user.username}
            </NavLink>
          </div>
        ) : (
          <NavLink
            className={(isActive) =>
              "nav-link" + (!isActive ? " unselected" : "")
            }
            to="/login"
          >
            Login
          </NavLink>
        )}
      </div>
    </nav>
  );
}

export default Navigation;