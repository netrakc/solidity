// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract gas1{
    uint public i = 0;

    function runForever() public{
        while(true){
            i = i + 1; // infinite loop.
        }
    }
}

// Gas Limit --> saves users from draining wallets.
// if the gas limit is too low  -- smart contract might not get deployed.
// if the gas limit is too high -- significant fund draining in certain situation.