// import React from "react";
// import './Cars.scss'

import { useState, useEffect } from "react";

function Cars() {
  const [rental, setRental] = useState("");

  useEffect(() => {
    fetch("/cars")
      .then((r) => r.json())
      .then((data) => setRental(data.count));
  }, []);

  return (
    <container className="wrapper">
        <div>
            <>
                <h1>{rental.make}</h1> 
                <h1>{rental.model}</h1>
                <img src={rental.picture}/>
                <h4>{rental.year}</h4> 
                <h4>{rental.vehichle_type}</h4> 
                <h4>{rental.color}</h4>
                <h5>{rental.transmission}</h5> 
                <h5>{rental.engine_type}</h5>
                <h4>{rental.rating}</h4> 
                <h4>{rental.price}</h4> 
                <h4>{rental.mileage}</h4>
                <p>{rental.description}</p>
                <button>Leave Review</button>
            </>
        </div>
    </container>
  );
}

export default Cars;