// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract EtherUnits{
    uint public OneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;

    // divided into 2 part -- 
    // First part -- evaluate the expression on right side.
    // Second part -- assign teh evaluated expression to the variable.
    bool public isOneEther = 1 ether == 1;

}
