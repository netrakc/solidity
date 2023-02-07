// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract Primitive_Type{
    bool public bool1 = true;
    uint8 public u8 = 4;
    int8 public i8 = 4;
    uint16 public u16 = 200;
    uint public u256 = 1000000; // uint -- default is 256 bits.

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // address should be an valid address in blockchain.
    // The length of the address is 20bytes or 160bits.
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
}