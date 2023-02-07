// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// abstract contract CalcTemplate{
interface CalcTemplate{

    // function op() public virtual returns(uint); // abstract.
    // function op() external returns(uint);

}

contract Add is CalcTemplate{
    uint public a;
    uint public b;

    // override is compulsory for abstract contract.
    // function  op() public view override returns(uint) {
    //     return a+b;
    // }

    function  op() public view returns(uint) {
        return a+b;
    }
}