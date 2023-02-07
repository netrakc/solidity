// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// Agenda
// 1. Functions.
// 2. File handling.
// 3. Functions modifiers.
// 4. Events in Solidity.
// In solidity, we can return the data in the form of tuple.
// We cannot change the value of tuple.
// Properties of tuple :-
// 1. Data is immutable.
// 2. Cannot change the order of variables.
contract LearnFunction {
    // pure --> gas will be very low. if i used pure.
    function returnMultiple()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 10);
    }

    function returnNamed()
        public
        pure
        returns (
            uint256 x,
            bool b,
            int256 y
        )
    {
        return (3, true, 1);
    }

    // for boolen default value is false.
    function AssignValues()
        public
        pure
        returns (
            int256 x,
            bool b,
            int256 y
        )
    {
        x = 10;
        b = false;
        y = 6;
        return (x, b, y);
    }

    function destructuringFunction()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMultiple();
        i = 400; // updating the value of i.
        (uint256 x, , , uint256 y) = (12, 14, 56, 15);
        return (i, b, j, x, y);
    }

}

contract CallFunctionWithKeyValuePair{

    function secondFunctionContract(address a, bool b) public pure returns(address, bool){
        return(a,b);
    }

    function callFunctions() external view returns(address, bool){
        return secondFunctionContract(address(0), true);
    }

    function callFunctionsWithKeyValue() external view returns(address,bool){
        return secondFunctionContract({a:address(0),b:true});
    }

    // msg.sender --> state variables.
    //            --> Special Object. return many values and accept many values.

    // address(0) --> Empty address.
    // Used to represent the address of the owner of the smart contract.
    // Genesis Block.
    // Ethereum Block is way pass. 
    // Funded Smart Contract :- 
    // 
}


// msg.sender --> can be anyone. 
// no special privilage.
// define address.

// address(0) --> Owner of smart contract.
// has access to wallet of the smart contract.
// not define before deployment.

// withdrawlAmount --> only this function is accesses to the smart contract account.





// Deploying the smart contract.
// Constructor{
// 
// }
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 

