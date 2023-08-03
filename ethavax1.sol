// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AssertionExample {
    address public owner;
    mapping(address => uint256) public balance;

    constructor() {
        owner = msg.sender;
    }

    function deposit(address _address, uint256 _amount) external payable {
        require(_address != address(0), "Invalid address.");
        balance[_address] += _amount;
    }

    function withdraw(address _address,uint256 amount) external payable{
        require(msg.sender == owner, "Only the owner can withdraw.");
        require(amount <= balance[_address], "Insufficient balance.");
        balance[_address] -= amount;
    }

    function unsafeFunction(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a + b >= a);
        if (b == 0) {
            revert("Division by zero is not allowed.");
        }
        return a / b;
    }
}
