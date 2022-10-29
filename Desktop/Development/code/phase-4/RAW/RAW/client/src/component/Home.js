import React from "react";
import { Link } from "react-router-dom";
import { Container } from "react-bootstrap";
import './Home.scss'
import Cars from "./Cars";
import Account from "./Account"

function Home () {
    return (
        <Container>
            <Container id="about">
                <p>Rent a Wreck . . </p>
            </Container>
        </Container>
    );
}

function Cardz( props ) {
    return(
        <div className="scss-card">
            <div className="card_body">
                <img style={{height: '250px', width: '260px'}} src={props.img} alt="alt"/>
                <h2 className="card_title">{props.title}</h2>
                <p className="card_description">{props.description}</p>
            </div>
        </div>
    )
}

export default Home