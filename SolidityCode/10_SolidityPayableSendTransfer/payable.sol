// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract LearnPayable{
    // payable address can send and receive ether.
    // Declaring the owner address.
    address payable public ownerAddress;

    // payable constructor can receive ether.
    constructor() payable{
        // defining owner. Msg sender is the owner.
        ownerAddress = payable(msg.sender);
    }

    // this function can receive ether.
    function deposit() public payable{}

    // this cannot accept ether.
    function nonPayable() public{}

    // withrawing the amount.
    function withdraw() public{
        // this <--- this keyword refers to the current smart contract.
        uint amount = address(this).balance;
        // function destructuring. 
        // Best way to transfer the ether.
        (bool success,) = ownerAddress.call{value : amount}("amount withdrawn from smart contract");

        require(success, "your transaction is declined. Failed to receive ether.");
    }

    function transfer(address payable _to, uint _amount) public{
        (bool success,) = _to.call{value : _amount}("Ether transfered successfully.");

        require(success,"your transaction could not success. Failed to send ether.");
    }
}

// payable functions --> allows Smart contract to receive ether.
// used to return the value --> fallback function (like default functions)
// Why do we need to specize the gas limit --> 

// .call() --> send ethers.
// set functions level gas limit.
// use another functions inside call.
// default fallback function --> unexpected scenario.
// send --> Send ethers
//      --> Gas Limit. 
// to.transfer(msg.value) --> Tt use not more than 2300 gas.
// call fallback function --> For Unexpected Scenarios.


// 1. Transfer functions :- 
// Has call back functions. 
// Use for error handling.
// Maximum gas for this method is 2300 gas.


// 2. Send Functions :- 
// Only returns bool.
// Maximum gas limit for this method is 2300 gas.

// 3. Call functions :- 
// Has fall back functions. 
// Customizable gas limit.
// It calls to other functions.







