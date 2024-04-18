import React, { useContext, useEffect, useState } from "react";
import { UserContext } from "../context/UserContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBookmark as fullBookmark } from "@fortawesome/free-solid-svg-icons";
import { faBookmark as emptyBookmark } from "@fortawesome/free-regular-svg-icons";

function FavoritesToggle({ trailId }) {
  const { user } = useContext(UserContext);
  const { userFavorites, setUserFavorites } = useContext(FavoritesContext);
  const [isFavorite, setIsFavorite] = useState(
    userFavorites.some((fav) => fav.trail_id === trailId)
  );

  useEffect(() => {
    setIsFavorite(userFavorites.some((fav) => fav.trail_id === trailId));
  }, [userFavorites, trailId]);

  const toggleFavorite = () => {
    const method = isFavorite ? "DELETE" : "POST";
    const endpoint = isFavorite ? `/favorites/${trailId}` : "/favorites";

    fetch(endpoint, {
      method: method,
      headers: {
        "Content-Type": "application/json",
      },
      body: !isFavorite
        ? JSON.stringify({ user_id: user.id, trail_id: trailId })
        : null,
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        const updatedTrailId = data.trail_id;
        if (method === "POST") {
          // Adding to favorites
          setUserFavorites((prevFavorites) => [...prevFavorites, data]);
          setIsFavorite(true);
        } else if (method === "DELETE") {
          // Removing from favorites
          setUserFavorites((prevFavorites) =>
            prevFavorites.filter((fav) => fav.trail_id !== updatedTrailId)
          );
          setIsFavorite(false);
        }
      })
      .catch((error) => console.error("Error toggling favorite:", error));
  };

  return (
    <button
      onClick={toggleFavorite}
      className={`favorite-button ${isFavorite ? "isFavorite" : ""}`}
    >
      <FontAwesomeIcon icon={isFavorite ? fullBookmark : emptyBookmark} />
    </button>
  );
}

export default FavoritesToggle;
