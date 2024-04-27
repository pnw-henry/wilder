import React, { useState, useRef } from "react";
import ReportCard from "./ReportCard";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faChevronLeft,
  faChevronRight,
} from "@fortawesome/free-solid-svg-icons";

function Reports({ reports, isHome, showName }) {
  const [currentPage, setCurrentPage] = useState(1);
  const reportsPerPage = 3;
  const windowRef = useRef(null);

  const indexOfLastReport = currentPage * reportsPerPage;
  const indexOfFirstReport = indexOfLastReport - reportsPerPage;
  const currentReports = reports.slice(indexOfFirstReport, indexOfLastReport);
  const totalPages = Math.ceil(reports.length / reportsPerPage);

  const handleNextPage = () => {
    setCurrentPage((prev) => (prev < totalPages ? prev + 1 : prev));
    windowRef.current?.scrollIntoView({ behavior: "smooth" });
  };

  const handlePrevPage = () => {
    setCurrentPage((prev) => (prev > 1 ? prev - 1 : prev));
    windowRef.current?.scrollIntoView({ behavior: "smooth" });
  };

  return (
    <div className="reports-container" ref={windowRef}>
      {currentReports.map((report) => (
        <ReportCard
          key={report.id}
          report={report}
          showName={showName}
          isHome={isHome}
        />
      ))}
      {reports.length > 0 && (
        <div className="pagination-controls">
          <FontAwesomeIcon
            icon={faChevronLeft}
            className={`arrow ${currentPage === 1 ? "lighten" : "darken"}`}
            onClick={handlePrevPage}
          />
          <span>
            Page {currentPage} of {totalPages}
          </span>
          <FontAwesomeIcon
            icon={faChevronRight}
            className={`arrow ${
              currentPage === totalPages ? "lighten" : "darken"
            }`}
            onClick={handleNextPage}
          />
        </div>
      )}
    </div>
  );
}

export default Reports;
