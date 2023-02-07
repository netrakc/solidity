// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract P1 {
    function show() public virtual pure returns(string memory){
        return "In P1 show";
    }
}

contract P2{
    function  show() public virtual pure returns(string memory){
        return "In P2 show";
    }
}

contract Child is P1, P2{
    function  show() public override(P1,P2) pure returns(string memory){
        return super.show(); // <-- using the show of P1 contract.
    }
}


// B --> Inherits from A --> Single Inheritance.
// C --> Inherits from B --> Inherits from A --> Multi-Level Inheritance.
// If C is inherits from A and B <--- that is Multiple Inheritance.