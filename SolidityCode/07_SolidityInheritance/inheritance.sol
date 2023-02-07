// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract LearnInheritance{

    function compute() public pure returns(string memory){
        return "Computing........";
    }

    function show() public virtual pure returns(string memory){
        return "Just a concept";
    }
}

contract Laptop is LearnInheritance{

    function show() public override pure returns(string memory){
        return "i5,64GB, 1TB";
    }
}

