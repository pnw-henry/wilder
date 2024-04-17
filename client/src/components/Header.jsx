import React from "react";
import Logo from "./Logo";
import { NavLink } from "react-router-dom";
import Navigation from "./Navigation";

import "../css/Header.css";

function Header() {
  return (
    <header>
      <NavLink to="/">
        <h1 className="title">
          <Logo />
          <div className="title-part">ilder</div>
        </h1>
      </NavLink>
      <Navigation />
    </header>
  );
}

export default Header;
