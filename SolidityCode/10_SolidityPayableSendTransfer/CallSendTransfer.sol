// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;


contract CallSendTransfer{

    function sendEtherTransfer(address payable _to) public payable{
        // this is not recommended.
        _to.transfer(msg.value); // 2300 gas limit.
    } 

    function SendEtherSend(address payable _to) public payable {
        bool sent = _to.send(msg.value); // 2300 gas limit.
        require(sent,"Failed To Send Ether.");
    }

    function SendEtherCall(address payable _to) public payable{
        (bool sent, ) = _to.call{gas:1000, value:msg.value}("");
        require(sent, "Failed to send ether");
    }
}