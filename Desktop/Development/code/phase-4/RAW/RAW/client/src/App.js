import Account from './component/Account';
import Home from './component/Home';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './/App.css'
import React, { useEffect, useState } from "react"
import NavBar from './component/NavBar';
import Cars from './component/Cars'
import CarsContainer from './component/CarsContainer';
import CarForm from './component/CarForm';

function App() {
  const [currentUser, setCurrentUser] = useState([])
  const [rentalCars, setRentalCars]= useState([])
  const [searchKey, setSearchKey] = useState("");
  const [searchValue, setSearchValue] = useState("");

  useEffect(() => {
    fetch("/rental_cars")
    .then(res => res.json())
    .then(cars => {
      setRentalCars(cars);
    })

    fetch("https://myfakeapi.com/api/users/")
    .then(res => res.json())
    .then(data => {
      console.log(data)
      setCurrentUser(data.Users[0])
    })
  }, [])

  function handleSearchChange(event) {
    setSearchValue(event.target.value);
  }
  function handleOptionChange(event){
    setSearchKey(event.target.value)
  }

  const filtered = rentalCars.filter((car)=>{
    const search = searchValue.toLowerCase()
    if(searchKey.length !== 0 && searchValue.length !== 0){
      console.log(car[searchKey]);
      return car[searchKey].toLowerCase().includes(search)
    }
    return car
  })
  console.log(filtered);

  const addNewCar = (newCar) => {
    setRentalCars([...rentalCars, newCar])
  }

  return (
    <div className="App">
      <BrowserRouter>
      <NavBar currentUser={currentUser} handleSearchChange={handleSearchChange} handleOptionChange={handleOptionChange} searchKey={searchKey} searchValue={searchValue}/>
        <Routes>
          <Route exact path='/' element={<Home currentUser={currentUser}/>}/>
          <Route exact path="/accounts" element={<Account currentUser={currentUser}/>}/>
          <Route exact path="/cars" element={<CarsContainer handleSearchChange={handleSearchChange} handleOptionChange={handleOptionChange} searchKey={searchKey} searchValue={searchValue} filtered={filtered} rentalCars={rentalCars} setRentalCars={setRentalCars}/>}/>
          <Route exact path="/form" element={<CarForm exact path="/" addNewCar={addNewCar}/> }/>
        </Routes> 
      </BrowserRouter>
    </div>
  );
}
export default App;