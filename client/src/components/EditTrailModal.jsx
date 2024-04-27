import React, { useState } from "react";

function EditTrailModal({ trail, closeForm }) {
  const [trailData, setTrailData] = useState({
    name: trail.name,
    location: trail.location,
    length: trail.length,
    elevation_gain: trail.elevation_gain,
    intensity: trail.intensity,
    summary: trail.summary,
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setTrailData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    fetch(`/trails/${trail.id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(trailData),
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.error) {
          console.error("Error updating trail:", data.error);
        } else {
          closeForm();
        }
      })
      .catch((error) => console.error("Error updating trail:", error));
  };

  return (
    <div className="modal-backdrop" onClick={closeForm}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <form className="form" onSubmit={handleSubmit}>
          <div className="form-group">
            <label htmlFor="name">Name</label>
            <input
              type="text"
              name="name"
              value={trailData.name}
              onChange={handleChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="location">Location</label>
            <input
              type="text"
              name="location"
              value={trailData.location}
              onChange={handleChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="length">Length (mi)</label>
            <input
              type="number"
              name="length"
              value={trailData.length}
              onChange={handleChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="elevation_gain">Elevation Gain (ft)</label>
            <input
              type="number"
              name="elevation_gain"
              value={trailData.elevation_gain}
              onChange={handleChange}
            />
          </div>
          <div className="form-group">
            <label htmlFor="intensity">Intensity</label>
            <select
              name="intensity"
              value={trailData.intensity}
              onChange={handleChange}
            >
              <option value="Easy">Easy</option>
              <option value="Moderate">Moderate</option>
              <option value="Hard">Hard</option>
            </select>
          </div>
          <div className="form-group">
            <label htmlFor="summary">Description</label>
            <textarea
              name="summary"
              value={trailData.summary}
              onChange={handleChange}
            />
          </div>
          <button type="submit">Update Trail</button>
        </form>
      </div>
    </div>
  );
}

export default EditTrailModal;
