import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

function Ineuron(){
  
  return(
    <section className='style'>
      <h1>Books List is : </h1>
      <Image></Image>
      <Title></Title>
      <Author></Author>
    </section>
  );

  const Title = () =>{
    return (
      <h2>The basics of bitcoins and blockchains.</h2>
    );
  }

  const Author = () =>{
    return(
      <h3>Antonry.</h3>
    );
  }

  const Image = () => {
    return(
      <img src='https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/51Y4X3NaFtL._SX382_BO1,204,203,200_.jpg'></img>
    );  
  }

}

ReactDOM.render(
  <Ineuron></Ineuron>, 
  document.getElementById('root')
);




