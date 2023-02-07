// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract CallContract{
    string public Str = "Blockchain";

    // if 1 ether is sent in msg.value, then update the string.
    function updateString(string memory _newString) public payable returns(uint,uint){
        uint startGas1 = gasleft();
        require(msg.value == 1 ether);
        Str = _newString;
        address payable owner = payable(msg.sender);

        (bool success, ) = owner.call{value:msg.value}("");
        require(success,"failure");
        return(startGas1, startGas1-gasleft());

    }   
}