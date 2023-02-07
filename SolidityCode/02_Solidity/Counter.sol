// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract Counter{

    // state variable is stored in the blockchain.
    uint public count; // unsigned int : start from Zero to 256bits.
    // unit8, uint256.
    // msg, block, tx --> global variables. dont need to declare it.

    function get() public view returns(uint){
        return count;
    }

    // view means we are reading the data from the blockchain.
    // view just returns the data from the blockchain.
    // function abc() public view returns(uint) {
    //     return 2+3;
    // }

    function getIncrement() public{
        uint one = 1; // local variables.
        count = count + one;
    }

    function getDecrement() public{
        count--;
    }

}
