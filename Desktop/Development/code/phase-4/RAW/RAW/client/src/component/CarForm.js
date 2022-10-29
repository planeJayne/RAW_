import React, { useState } from "react";
import { Form } from "semantic-ui-react";
import "./CarForm.css"

function CarForm({ addNewCar }) {
  const [make, setMake] = useState("")
  const [model, setModel] = useState("")
  const [vehicleType, setVehicleType] = useState("")
  const [color, setColor] = useState("")
  const [transmission, setTransmission] = useState("")
  const [engineType, setEngineType] = useState("")
  const [picture, setPicture] = useState("")
  const [year, setYear] = useState("")
  const [price, setPrice] = useState("")
  const [rating, setRating] = useState("")
  const [description, setDescription] = useState("")
  
  const handleSubmit = (e) => {
    e.preventDefault()

    let newCar = {
      owner_id: 1,
      renter_id: 1,
      picture: picture,
      model: model,
      make: make,
      year: year,
      price: price,
      vehicle_type: vehicleType,
      color: color,
      transmission: transmission,
      engine_type: engineType,
      rating: rating,
      description: description,
    }
    console.log(newCar);
    fetch("/rental_cars", {
      method: 'POST',
      headers: {
        'Content-Type': "application/json"
      },
      body: JSON.stringify(newCar)
    })
      .then(response => response.json())
      .then(data => addNewCar(data))
  }

  return (
    <div className="new-car-form">
      <h3>Add a Vehicle to Stock!</h3>
      <Form
        onSubmit={handleSubmit}
      >
        <Form.Group widths="equal">
          <Form.Input onChange={(e)=> setPicture(e.target.value)} value={picture} fluid label="picture" placeholder="picture" name="picture" />
          <Form.Input onChange={(e)=> setMake(e.target.value)} value={make} fluid label="make" placeholder="make" name="make" />
          <Form.Input onChange={(e)=> setModel(e.target.value)}
            value={model}
            fluid
            label="model"
            placeholder="model"
            name="model"
          />
          <Form.Input onChange={(e)=>setVehicleType(e.target.value)}
            value={vehicleType}
            fluid
            label="vehicle_type"
            placeholder="vehicle type"
            name="vehicle_type"
          />
          <Form.Input onChange={(e)=> setColor(e.target.value)} value={color} fluid label="color" placeholder="color" name="color" />
          <Form.Input onChange={(e)=> setTransmission(e.target.value)} value={transmission} fluid label="transmission" placeholder="transmission" name="transmission" />
          <Form.Input onChange={(e)=> setEngineType(e.target.value)} value={engineType} fluid label="enginetype" placeholder="engine type" name="engine_type" />
          <Form.Input onChange={(e)=> setYear(e.target.value)} value={year} fluid label="year" placeholder="year" name="year" />
          <Form.Input onChange={(e)=> setPrice(e.target.value)} value={price} fluid label="price" placeholder="price" name="price" />
          <Form.Input onChange={(e) => setRating(e.target.value)} value={rating} fluid label="rating" placeholder="rating 1-5" name="rating" />
          <Form.Input onChange={(e)=> setDescription(e.target.value)} value={description} fluid label="description" placeholder="description" name="description" />
        </Form.Group>
        <Form.Button onClick={handleSubmit} >Submit</Form.Button>
      </Form>
    </div>
  );
}

export default CarForm;