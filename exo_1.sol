//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract FortyTwo
{
	int public number;

	constructor(int memory _number)
	{
		number = _number;
	}

	function getNumber() public view returns (int memory)
	{
		return number;
	}

	function setNumber(int memory _number) public
	{
		number = _number;
	}
}
