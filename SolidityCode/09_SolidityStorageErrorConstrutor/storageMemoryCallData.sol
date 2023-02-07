// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract DataLocation{
    string public accountName = "Ineuron";
    // string newVariables = "Hello";
    // string newVariables1 = "Hello1";
    // string newVariables2 = "Hello2";
    // string newVariables3 = "Hello3";
    // string newVariables4 = "Hello4";
    // string newVariables5 = "Hello5";

    function displayAccountName() public view returns(string memory){
        string storage newVariables;
        string memory newVariables1;
        string memory newVariables2;
        string memory newVariables3;
        string memory newVariables4;
        string memory newVariables5;
        return accountName;
    }

    // 5 state variable -- storage + 5 local variables -- storage ---> total gas cost --> 342728.
    // 1 state variable -- storage + 5 local variables -- storage ---> total gas cost --> 234583.
    // 1 state variable -- storage + 5 local variables -- memory ---> total gas cost --> 234583.


    function result(string calldata _a) public view returns(string calldata){
        return _a;
    } 

    function displayMemory(string calldata _b) public returns(string calldata){
        _b = "hello3";
        return _b;
    }   

    // gas for memory function -- 22401
    // gas for calldata function -- 25672

    // Memory allows us to change the data. 
    // But calldata does not allow us to change the data.
    // Memory is slighly more expensive than calldata but cheaper than storage.

}
