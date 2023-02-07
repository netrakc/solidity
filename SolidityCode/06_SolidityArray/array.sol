// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract LearnArray{

    uint[] public nums = [5,6,7];
    uint[4] public fixedNums;

    function getValues() public view returns(uint[] memory) {
        return nums;
    }

    function  getFixedValues() public view returns(uint[4] memory){
        return fixedNums;
    }

    function getLenght() public view returns(uint){
        return nums.length;
    }

    function addNumberNumsArray(uint num) public{
        nums.push(4);
    }

    function removeNumbers() public {
        nums.pop();
    }

    function removeAtIndex(uint index) public{
        delete nums[index];
    }

}