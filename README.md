AssertionExample Contract This is a Solidity smart contract that demonstrates use of assert, revert, and require statements.

License This contract is using the MIT License.

Prerequisites Solidity ^0.8.18

Contract Details The AssertionExample Contract is a smart contract that manages a balance variable. The deposit function allows users to mint token, but it requires the deposit amount to be greater than 0. The burn function lets users burn his tokens, and update balance and totalSupply. The ZeroBalance function returns that if the balance is 0 or not. Overall, the contract implements basic error handling and validation using the require(), assert(), and revert() statements to ensure proper behavior and prevent incorrect operations.

Video Walkthrough: https://www.loom.com/share/69a482e26a3e42bab9066688a72980b4
