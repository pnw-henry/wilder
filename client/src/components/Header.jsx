import React, { useState, useEffect } from "react";
import Logo from "./Logo";
import { NavLink } from "react-router-dom";
import Navigation from "./Navigation";

import "../css/Header.css";

function Header() {
  const [showHeader, setShowHeader] = useState(false);

  useEffect(() => {
    const timer = setTimeout(() => {
      setShowHeader(true);
    }, 500);
    return () => clearTimeout(timer);
  }, []);

  return (
    <>
      <header className={`header ${showHeader ? "loaded" : ""}`}>
        <NavLink to="/">
          <h1 className="title">
            <Logo />
            <div className="title-part">ilder</div>
          </h1>
        </NavLink>
      </header>
      <Navigation showHeader={showHeader} />
    </>
  );
}

export default Header;
