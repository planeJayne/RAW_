import React, { useState } from "react";
import { NavLink } from "react-router-dom";
import "./NavBar.css";


function NavBar({ currentUser, handleSearchChange, handleOptionChange, searchKey ,searchValue}) {
 
  
  
  return (
    <div className="navbar">
      <div className="logo"> R-A-W </div>
      <div className="nav-links">
        <NavLink className="link" to="/home">
          Home
        </NavLink>{" "}
        |
        <NavLink className="link" to="/cars">
          Cars
        </NavLink>{" "}
        |
        <NavLink className="link" to="/owners">
          Owners
        </NavLink>
      </div>
      <div className="search">
        <select value={searchKey} onChange = {handleOptionChange}>
          <option value="">Search for...</option>
          <option value="make">Make</option>
          <option value="model">Model</option>
          <option value="vehicle_type">Vehicle Type</option>
          <option value="color">Color</option>
          <option value="transmission">Transmission</option>
          <option value="engine_type">Engine Type</option>
        </select>
        <input
          type="text"
          placeholder="Search for..."
          value={searchValue}
          onChange={handleSearchChange}
        />
      </div>
      <div className="account-link">
        <NavLink className="link" to="/account">
          Account
        </NavLink>
        {currentUser ? <button>Logout</button> : <button>Login</button>}
      </div>
    </div>
  );
}

export default NavBar;
