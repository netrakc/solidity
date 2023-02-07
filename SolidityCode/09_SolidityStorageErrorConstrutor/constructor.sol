// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// In solidity, constructor will be called only once when deploying contract.
// The main use of the constructor is used to initialize the objects and value.

contract A{

    uint public num;

    constructor(uint _num){
        //  called when contract is deployed.
        num = _num;
    }

    modifier check(uint _num){
        if(num >= 5){
            _;
        }
    }

    function update(uint _num) public check(_num){
        num = num + _num;
    }
}
