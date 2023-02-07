// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

contract IfElse{
    function condition(int x) public pure returns(int){
        if(x <= 0){
            return 5;
        }
        else if(x > 0 && x < 10){
            return 1;
        }
        else if(x > 10 && x < 20){
            return 2;
        }
        else if(x > 20 && x < 30){
            return 3;
        }else{
            return 4;
        }
    }
}

















