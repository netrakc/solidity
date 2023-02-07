// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Account{
    address public senderAddress;
    uint public balance;
    function setAddressAndBalance() public{
        senderAddress = msg.sender;
        balance = msg.sender.balance;
    }

    function transfer(address payable to) public payable{
        to.transfer(msg.value);
    }
    
}