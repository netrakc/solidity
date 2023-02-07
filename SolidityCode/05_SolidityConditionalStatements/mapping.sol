// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

// In Blockchain, Entry points is always EOA (External Owned Accounts.) <--- Address.
// Mapping : (key,value)
// Mapping : Querying data on blockchain (fetching the data from database once the condition is satistfy. 
// Nested Mapping --> mapping(mapping). 
// mapps is like dictionary kinds of sturcture.

contract learnMap{
    // mapping of address to uint.
    // Syntax declaration of mapping.
    // mapping(key => value).
    // address is the data type in the solidity.
    mapping(address => uint) public myMap1;

    function get(address _addr) public view returns(uint){
        return myMap1[_addr];
    }

    // address : 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    // value   : 4

    function set(address _addr, uint _i) public{
        // square bracket data is key.
        myMap1[_addr] = _i;
    }
}































