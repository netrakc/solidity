// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

// Declaration of the Library.
library RemoveIndex{
    //Library don't use the state variables.
    function remove(uint[] storage arr, uint index) public{
        require(arr.length>0, "Can't remove from empty array");
        arr[index] = arr[arr.length-1];
        arr.pop();
    }
}

contract TestArray{
    uint[] public arr;
    using RemoveIndex for uint[];
    function restArrayRemoval() public returns(uint[] memory){
        for(uint i = 0; i < 4; i++){
            arr.push(i);
        }
        arr.remove(1);
        return(arr);
    }
}














