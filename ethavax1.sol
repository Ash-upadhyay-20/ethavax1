// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionExample {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor() {
        totalSupply = 0;
    }

    function mint( address _address,uint256 _amount) external {
        require(_amount > 0, "Transfer amount must be greater than zero");
        totalSupply += _amount;
        balances[_address] += _amount;
    }

    function burn(address _address,uint256 _amount) external {
        assert(_amount < balances[_address]);
        totalSupply -= _amount;
        balances[_address] -= _amount;

    }

    function ZeroBalance(address _address) external view {
        
        if (balances[_address] == 0) {
            revert("Your Balace is 0");
        }
        else revert("Your Balance is not zero");
    }
}
