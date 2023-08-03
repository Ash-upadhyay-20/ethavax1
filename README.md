# AssertionExample Smart Contract

This is a simple Solidity smart contract named `AssertionExample` that demonstrates basic functionalities of deposit, withdrawal, and error handling using `require`, `assert`, and `revert` statements. The contract allows users to deposit and withdraw Ether, and it includes a function that showcases the use of assertions and safe division.

## Contract Details

- **Solidity Version:** 0.8.18
- **License:** MIT License
- **SPDX-License-Identifier:** MIT

### Functions

1. **Constructor**
    - Initializes the contract by setting the deployer's address as the owner.

2. **Deposit Function**
    - `deposit(address _address, uint256 _amount) external payable`
    - Allows users to deposit Ether into the contract.
    - Requires a valid `_address` and a non-zero `_amount`.
    - Increases the balance of the specified `_address` by the deposited `_amount`.

3. **Withdraw Function**
    - `withdraw(address _address, uint256 amount) external payable`
    - Allows the contract owner to withdraw Ether from a specific address's balance.
    - Requires the caller to be the contract owner.
    - Requires a valid `_address` and a withdrawal `amount` not exceeding the available balance.
    - Decreases the balance of the specified `_address` by the withdrawn `amount`.

4. **Unsafe Function**
    - `unsafeFunction(uint256 a, uint256 b) external pure returns (uint256)`
    - Demonstrates the use of `assert` and `revert` statements.
    - Checks for potential integer overflow using `assert`.
    - Prevents division by zero using `revert`.
    - Returns the result of dividing `a` by `b` if the conditions are satisfied.

## License

This smart contract is released under the MIT License. Please refer to the SPDX-License-Identifier comment at the top of the contract file for the full license text.

## Usage

To use this contract, you can deploy it on an Ethereum-compatible blockchain using a Solidity compiler that supports version 0.8.18 or higher. You can interact with the deployed contract to deposit and withdraw Ether, as well as to demonstrate the `unsafeFunction`.

Note: Carefully review and test the contract's functions in a development or test environment before deploying it on a mainnet.

For more information about Solidity and Ethereum smart contracts, refer to the official documentation: [Solidity Documentation](https://soliditylang.org/docs/).

