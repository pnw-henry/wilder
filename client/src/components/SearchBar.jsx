import React from "react";

function SearchBar({ searchTerm, onSearchChange }) {
  return (
    <input
      type="text"
      className="search-bar"
      placeholder="Find a trail by name..."
      value={searchTerm}
      onChange={onSearchChange}
    />
  );
}

export default SearchBar;
