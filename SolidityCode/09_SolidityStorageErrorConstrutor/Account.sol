// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract AccountTransfer{

    mapping(address => uint) balance;
    address public ownerAddress;

    constructor(){
        // Initializing the owner.
        ownerAddress = msg.sender;
    }

    function addBalance(uint amount) public{
        // use require --> when we are getting the input from outside world or others contract.
        // Checking either the owner is transfering money or third person is try to transfering to the money.
        // require returns the gas amount if the transaction does not happens or if we got the rollback error.
        require(msg.sender == ownerAddress, "Stay in your Limit");
        // Sender does not allowed to send money to itself.
        require(balance[msg.sender] != balance[msg.sender], "You cannot send money to itself.");

        uint a = 4;
        uint b = 5;
        uint c = a + b;

        // assert may takes complete gas.
        assert(c == 9); // assert is used for interal checking.

        balance[msg.sender] += amount;

    }

    function getBalance() public view returns(uint){
        return balance[msg.sender];
    }

    function  transfer(address to, uint amount) public {

        // if(balance[msg.sender] < amount ){
        //     revert("You don't have enough balance");// rollbcak the entire transactiont to original state.
        // }else{
        //     balance[msg.sender] -= amount;// deducting the money.
        //     balance[to] += amount;// adding the money.
        // }

        // We can also check with this way.
        require(balance[msg.sender] > amount, "Insufficient Balance.");
        balance[msg.sender] -= amount;// deducting the money.
        balance[to] += amount;// adding the money.

    }
}