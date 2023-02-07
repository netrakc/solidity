// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 < 0.9.0;

// Bytes in solidity is optmized which means it compress the data in the hexadecimal representation.
contract EncodeDecode{
    function encode(string memory _str1, uint _int, string memory _str2) public pure returns(bytes memory){
        return(abi.encode(_str1, _int, _str2));
    }
}







