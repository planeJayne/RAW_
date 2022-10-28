import React, { useState } from "react";
import { NavLink } from "react-router-dom";
import "./NavBar.css";

function NavBar({ currentUser }) {

  return (
    <div className="navbar">
      <button className="logo" onClick={()=> window.location.replace('/')}> R-A-W </button>
      <div className="nav-links">
        <NavLink className="link" to="/">
          Home
        </NavLink>{" "}
        <NavLink className="link" to="/cars">
          Cars
        </NavLink>{" "}
        <NavLink className="link" to="/accounts">
          Accounts
        </NavLink>
      </div>
      
      <div className="account-link">
      </div>
      <br></br>
      <div className="btn">
        {currentUser ? <button className="logout-btn">Logout</button> : <button className="login-btn">Login</button>}
      </div>
    </div>
  );
}

export default NavBar;
