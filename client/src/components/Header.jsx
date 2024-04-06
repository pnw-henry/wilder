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
        <h1 className="title">
          <div className="title-part">Tr</div>
          <Logo />
          <div className="title-part">il</div>
          <div className="title-part">Quest</div>
        </h1>
      </NavLink>
      <Navigation />
    </header>
  );
}

export default Header;
