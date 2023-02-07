// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract A{

    // event is used to store the log values in blockchain.
    event callEvent(address sender, address origin, address from);

    function callThis() public{
        emit callEvent(msg.sender, tx.origin, address(this));
    }
}

contract Caller{
    function makeCalls(address _contractAddress) public {
        address(_contractAddress).call(abi.encodeWithSignature("callThis()"));
    }
}