// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

// Both of these below is used to achieve the level of abstraction in Blockchain.
// view function declares that no state will be change.
// pure function declares no state will be change or read.

contract ViewPure{
    uint public x = 1;

    function addX(uint y) public view returns(uint){
        // we are able to read the value of x.
        // we are not allowed to modify the value of x when we declared function as view.
        // x=x+4; <-- modifying of the value is not allowed in solidity when we declared view.
        return x+y;
    }

    // pure function is used when we wants to deal with local variables only.
    function AddX(uint i, uint j) public pure returns(uint){
        // Since, x is the global variables so we are not allowed to use the global variables inside the local state. 
        uint d = i + j;
        return d;
    }

}

// depoly using 0x17F6AD8Ef982297579C203069C1DbfFE4348c372 -- this account stores byte code.
// call the function using 