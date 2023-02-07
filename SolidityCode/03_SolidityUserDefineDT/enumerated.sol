// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract enumerated{
    // Enums --> represent the set of predefined values(unqiue values).
    //       --> represent the collections of values.
    // Enums {
    //     
    // }
    enum FreshJuice {
        small, 
        medium, 
        large
    } FreshJuice choice;

    FreshJuice constant defaultChoice = FreshJuice.medium; // Picking the value from the enum i.e, FreshJuice. 

    function setLarge() public{
        choice = FreshJuice.large;
    }

    function setSmall() public{
        choice = FreshJuice.small;
    }

    function getChoice() public view returns(FreshJuice){
        return choice;
    }

    // function getDefault() public view returns(uint){
    //     return uint(defaultChoice);
    // }

}