import Account from './component/Account';
import Home from './component/Home';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './/App.css'
import React, { useEffect, useState } from "react"
import NavBar from './component/NavBar';

function App() {
  const [currentUser, setCurrentUser] = useState([])
  const [rentalCars, setRentalCars]= useState([])
  const [searchKey, setSearchKey] = useState("");
  const [searchValue, setSearchValue] = useState("");

  useEffect(() => {
    fetch("/rental_cars")
    .then(res => res.json())
    .then(data => {
      setRentalCars(data);
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

  return (
    <div className="App">
      <BrowserRouter>
      <NavBar currentUser={currentUser} handleSearchChange={handleSearchChange} handleOptionChange={handleOptionChange} searchKey={searchKey} searchValue={searchValue}/>
        <Routes>
          <Route exact path='/' element={<Home currentUser={currentUser}/>}/>
          {/* <Route exact path='/owner' element={<Owner />} /> */}
          <Route exact path="/account" element={<Account currentUser={currentUser}/>}/>
        </Routes> 
      </BrowserRouter>
    </div>
  );
}

export default App;