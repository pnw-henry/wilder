import React, { useContext } from "react";
import { Link, useNavigate } from "react-router-dom";
import { UserContext } from "../context/UserContext";

import "../css/UserProfile.css";

function UserProfile() {
  const { user, setUser, setIsLoggedIn } = useContext(UserContext);
  const navigate = useNavigate();

  const handleLogout = () => {
    fetch("/logout", { method: "DELETE", credentials: "include" })
      .then((response) => {
        if (response.ok) {
          setIsLoggedIn(false);
          setUser(null);
          navigate("/");
        }
      })
      .catch((error) => console.error("Logout Error:", error));
  };
  return (
    <div>
      {user ? (
        <div className="user-profile">
          <section>
            <h2>Hiking Profile</h2>
            <div>Name:{user.name}</div>
            <div>Experience:{user.experience}</div>
          </section>

          <button onClick={handleLogout}>Logout</button>

          <h3>Visited Trails</h3>
          {user.trails && user.trails.length > 0 ? (
            <div>
              {user.trails.map((trail) => (
                <div key={trail.id}>{trail.name}</div>
              ))}
            </div>
          ) : (
            <p>
              You haven't visited any trails yet. Why not go hiking?{" "}
              <Link to="/trails">Find a trail</Link>
            </p>
          )}
        </div>
      ) : (
        <p>Sign in or create an account to see your profile!</p>
      )}
    </div>
  );
}

export default UserProfile;
