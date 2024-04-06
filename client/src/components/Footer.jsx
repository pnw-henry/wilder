import React from "react";

import "../css/Footer.css";

function Footer() {
  return (
    <footer className="footer">
      <a
        href="https://www.linkedin.com/in/pnw-henry/"
        target="_blank"
        rel="noopener noreferrer"
      >
        LinkedIn
      </a>
      <a
        href="https://www.instagram.com/pnw.henry/"
        target="_blank"
        rel="noopener noreferrer"
      >
        Instagram
      </a>
      <a href="mailto:henrye@gmail.com">Email</a>
      <p>Made by Henry in Seattle</p>
    </footer>
  );
}

export default Footer;
