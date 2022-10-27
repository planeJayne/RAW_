import React from "react"
import Cars from './Cars'

function CarsContainer({handleSearchChange, handleOptionChange, searchKey, searchValue, filtered}) {
    return (
    <div className="search">
        <select
          className="select"
          value={searchKey}
          onChange={handleOptionChange}
        >
          <option value="">Select one</option>
          <option value="make">Make</option>
          <option value="model">Model</option>
          <option value="vehicle_type">Vehicle Type</option>
          <option value="color">Color</option>
          <option value="transmission">Transmission</option>
          <option value="engine_type">Engine Type</option>
        </select>
        <div className="box">
          <input
            className="input"
            type="text"
            placeholder="...................................................."
            value={searchValue}
            onChange={handleSearchChange}
          />
        </div>
        <div>
        {filtered.map((filter)=> <Cars rental={filter} key={filter.id}/>)}
        </div>
      </div>
    )
}

export default CarsContainer