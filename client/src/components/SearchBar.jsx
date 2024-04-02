import React from "react";

function SearchBar({ searchTerm, onSearchChange }) {
  return (
    <input
      type="text"
      className="search-bar"
      placeholder="Search for a trail by name..."
      value={searchTerm}
      onChange={onSearchChange}
    />
  );
}

export default SearchBar;
