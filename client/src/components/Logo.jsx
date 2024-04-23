import React from "react";
import "../css/Logo.css";

function Logo() {
  return (
    <svg
      width="100%"
      height="100%"
      viewBox="0 0 300 300"
      version="1.1"
      className="logo"
    >
      <defs>
        <linearGradient id="strokeGradient" x1="0%" y1="0%" x2="0%" y2="100%">
          <stop
            offset="0%"
            style={{ stopColor: "rgb(245, 245, 245)", stopOpacity: 1 }}
          />
          <stop
            offset="80%"
            style={{ stopColor: "rgb(245, 245, 245)", stopOpacity: 1 }}
          />
        </linearGradient>
      </defs>
      <g transform="matrix(2.40179,0,0,2.40179,-106.991,-251.098)">
        <path
          d="M51,130L97.5,204L122.832,156.664L119.5,150L135,181L163,130"
          stroke="url(#strokeGradient)"
          fill="none"
        />
      </g>
    </svg>
  );
}

export default Logo;
