import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faInstagram, faLinkedin } from "@fortawesome/free-brands-svg-icons";
import { faEnvelope } from "@fortawesome/free-solid-svg-icons";

import "../css/Footer.css";

function Footer() {
  return (
    <footer className="footer">
      <div className="footer-links">
        <a
          href="https://www.linkedin.com/in/pnw-henry/"
          target="_blank"
          rel="noopener noreferrer"
        >
          {<FontAwesomeIcon icon={faLinkedin} />}
        </a>
        <a
          href="https://www.instagram.com/pnw.henry/"
          target="_blank"
          rel="noopener noreferrer"
        >
          {<FontAwesomeIcon icon={faInstagram} />}
        </a>
        <a href="mailto:henrye@gmail.com">
          {<FontAwesomeIcon icon={faEnvelope}></FontAwesomeIcon>}
        </a>
      </div>
      <div className="footer-tagline">
        <p>Made by Henry in Seattle</p>
      </div>
    </footer>
  );
}

export default Footer;
