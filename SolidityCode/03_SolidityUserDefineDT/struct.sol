// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract structureSol{

    /*
    #. struct --> user defined data type.
    1. can have different data types.
    2. you can assign values from users.
    3. Similar to Objects.
    4. gasLimit
    eg :- Student {
            name,
            age, 
            qualification, 
            marks,
            address,
            id,
            gender 
        }
    */
    struct Book{
        string title;
        string author;
        uint bookID;
        uint price;
    }
    // define a struct -- name of the struct variable to represent the struct.
    Book book;
    function setBook() public{
        book = Book("Blockchain for beginners", "Ineuron",4,1000);
    }

    function getBookId() public view returns(uint){
        return book.bookID;
    }
}











