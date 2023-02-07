// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract Loop{

    // Array in solidity.
    // Default is internal, if we did not declared any access modifiers.
    uint[] public data; 
    uint8 public j = 0;
    // If i used the views over here, i will not be able to modify the state variables.
    // So, we should not use the views if we want to modify the data of state variables.
    function loop1() public returns(uint[] memory) {
        while(j<5){
            j++; 
            // .push --> add/append value inside an array.
            data.push(j);
        }
    // solidity does not allow print statement by default.
    return data;
    }
}





















