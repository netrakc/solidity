// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;


contract LearnEvents{
    // Event declaration.
    // up to 3 parameters can be indexed.
    // events helps you to filter logs on the blockchain.
    // you can evaluate condition on a combination of 3 parameters to filter out event messages.
    // Jaslai filter garnu xa teslai "indexed" declare garnu parxa.
    // we cannot use more than 3 indexed inside the event.
    event Log(address indexed sender, string message);
    event Event2();

    function testEventWorking() public{
        emit Log(msg.sender, "Blockchain is awesome");
        emit Log(msg.sender, "Event created Successfully..!!!!!");
        emit Event2();
    }

}