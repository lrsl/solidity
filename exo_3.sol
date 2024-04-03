// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

contract Contract
{
    address payable public owner;

    event Log(string message);

    constructor(address payable initialOwner)
    {
        owner = initialOwner;
    }

    receive() external payable 
    {
        emit Log("Thanks for the Ether buddy!");
    }

    modifier onlyOwner()
    {
        require(msg.sender == owner, 'You are not the owner...');
        _;
    }

    function sendEther(address payable receiver_add) payable external onlyOwner
    {
        (bool success, ) = receiver_add.call{value: msg.value}("");
        require(success, 'Call failed dude');
    }

}
