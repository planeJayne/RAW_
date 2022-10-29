import React from "react";
import './Cars.scss'

function Cars({ rental, rentalCars, setRentalCars }) {

  function handleDelete(id) {
      fetch(`/rental_cars/${id}`, {
        method: "DELETE",
      })
      .then((res) => res.json())
      .then((deleting) => {
        const deleteCar = rentalCars.filter(
          (deletedCar) => deletedCar.id != id
        )
        setRentalCars(deleteCar)
      });
    }

  return (
    <container className="wrapper">
      <div classname="container">
        <div>
          <h1>Make - {rental.make}</h1>
          <h1>Model - {rental.model}</h1>
          <img src={rental.picture} />
        </div>
        <div>
          <h4>Year - {rental.year}</h4>
          <h4>Vehicle Type - {rental.vehicle_type}</h4>
          <h4>Color - {rental.color}</h4>
          <h5>Transmission - {rental.transmission}</h5>
          <h5>Engine Type - {rental.engine_type}</h5>
          <h4>Rating - {rental.rating}</h4>
          <h4>Price - ${rental.price}</h4>
          <h4>Mileage - {rental.mileage}</h4>
          <p>Description - {rental.description}</p>
        </div>
        <button onClick={() => handleDelete(rental.id)} className="review-btn">Remove Car</button>
      </div>
    </container>
  );
}

export default Cars;
