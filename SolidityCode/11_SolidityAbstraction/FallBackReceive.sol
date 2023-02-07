// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract FallBackReceive{
    string public called = "";
    uint public amount = 0;
    bytes public data;

    receive() external payable{
        called = "Receive";
        amount = msg.value;
    }

    // the primary object of the fall back function is to executes or call when no functions is there to listen the data.Or no Other functions is matching.
    fallback() external payable{
        called = "Fallback";
        amount = msg.value;
        data = msg.data;
    }
}