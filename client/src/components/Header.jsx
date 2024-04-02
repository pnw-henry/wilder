import React, { useContext } from "react";
import Logo from "./Logo";
import { UserContext } from "../context/UserContext";
import { NavLink } from "react-router-dom";
import Navigation from "./Navigation";

import "../css/Header.css";

function Header() {
  const { user, isLoggedIn } = useContext(UserContext);

  return (
    <header>
      <NavLink to="/">
        <Logo />
        <h1 className="title">Wild Loops</h1>
      </NavLink>
      <Navigation />
    </header>
  );
}

export default Header;
