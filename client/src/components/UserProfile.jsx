import React, { useContext, useState, useEffect } from "react";
import TrailCard from "./TrailCard";
import Reports from "./Reports";
import { Grid, AutoSizer } from "react-virtualized";
import { Link, useNavigate } from "react-router-dom";
import { UserContext } from "../context/UserContext";
import { FavoritesContext } from "../context/FavoritesContext";
import { ReportsContext } from "../context/ReportsContext";
import { TrailsContext } from "../context/TrailsContext";
import Header from "./Header";

import "../css/UserProfile.css";

function UserProfile() {
  const [isLoading, setIsLoading] = useState(true);
  const { user, setUser, setIsLoggedIn, isLoggedIn } = useContext(UserContext);
  const { userFavorites, setUserFavorites } = useContext(FavoritesContext);
  const { userReports, setUserReports } = useContext(ReportsContext);
  const { trails } = useContext(TrailsContext);
  const navigate = useNavigate();

  useEffect(() => {
    document.title = `Wilder | ${user.username}`;
    window.scrollTo(0, 0);
  }, []);

  const now = new Date();
  const hours = now.getHours();
  let greeting;
  if (hours < 12) {
    greeting = "Good morning";
  } else if (hours >= 12 && hours < 18) {
    greeting = "Good afternoon";
  } else {
    greeting = "Good evening";
  }

  useEffect(() => {
    const fetchUser = async () => {
      setIsLoading(true);
      try {
        const response = await fetch("/me", { credentials: "include" });
        const userData = await response.json();
        if (userData.username) {
          setUser(userData);
          setIsLoggedIn(true);
        }
      } catch (error) {
      } finally {
        setIsLoading(false);
      }
    };

    if (!user) {
      fetchUser();
    } else {
      setIsLoading(false);
    }
  }, [user, setUser, setIsLoggedIn]);

  const handleLogout = () => {
    fetch("/logout", { method: "DELETE", credentials: "include" })
      .then((response) => {
        if (response.ok) {
          setIsLoggedIn(false);
          setUser(null);
          setUserFavorites([]);
          setUserReports([]);
          navigate("/");
        }
      })
      .catch((error) => console.error("Logout Error:", error));
  };

  function cellRenderer({ columnIndex, key, style }) {
    const { trail_id } = userFavorites[columnIndex];
    const trail = trails.find((trail) => trail.id === trail_id);

    return (
      <div key={key} style={style}>
        {trail && <TrailCard key={trail.id} trail={trail} isProfile={true} />}
      </div>
    );
  }

  if (isLoading) {
    return <div>Loading...</div>;
  }

  return (
    <div className="user-profile">
      <Header />
      {isLoggedIn ? (
        <>
          <div className="user-details">
            <h1>{`${greeting}, ${user.username}!`}</h1>
            <button onClick={handleLogout}>Logout</button>
          </div>
          <section className="user-favorites-section">
            <h2 className="profile-heading">Saved Trails</h2>
            {userFavorites.length > 0 ? (
              <div className="favorite-trails-container">
                <AutoSizer>
                  {({ width, height }) => (
                    <Grid
                      cellRenderer={cellRenderer}
                      columnCount={userFavorites.length}
                      columnWidth={425} // Adjust based on your TrailCard width
                      height={height}
                      rowCount={1}
                      rowHeight={350} // Adjust based on your TrailCard height, ensuring it fits within the .favorite-trails-container's height
                      width={width}
                      style={{ overflowX: "auto" }}
                    />
                  )}
                </AutoSizer>
              </div>
            ) : (
              <p className="no-favorites">
                You haven't favorited any trails yet.{" "}
                <Link to="/trails">Find a trail</Link>
              </p>
            )}
          </section>
          <section className="profile-trail-reports">
            <h2 className="profile-heading">Trail Reports</h2>
            <Reports reports={userReports} showName={true} />
          </section>
        </>
      ) : (
        <div className="user-not-found">
          <Link to="/login">
            <p>Sign in or create an account to see your profile!</p>
          </Link>
        </div>
      )}
    </div>
  );
}

export default UserProfile;
