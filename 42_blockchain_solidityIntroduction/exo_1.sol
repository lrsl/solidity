//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract FortyTwo
{
	int public number;

	constructor(int _number)
	{
		number = _number;
	}

	function getNumber() public view returns (int)
	{
		return number;
	}

	function setNumber(int _number) public
	{
		number = _number;
	}
}
