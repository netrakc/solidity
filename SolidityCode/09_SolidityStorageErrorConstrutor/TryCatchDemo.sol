// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract A{
    function doSomething() external {
        // revert();
    }
}

contract B{

    A a = new A();
    string public status = "Not available";
    function go() public{
        
        try a.doSomething(){
            status = "Success";
        }
        catch{
            status = "Failed";
        }
    }
}