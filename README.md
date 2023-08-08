Error Handling in Solidity Contract README
Description
The errHandle contract showcases the usage of different error handling mechanisms in Solidity: require, revert, and assert. These mechanisms are used to ensure proper behavior and prevent unexpected issues within smart contracts. The contract contains a single function, amount, which demonstrates the application of these error handling methods.

Error Handling Mechanisms
1. require(_bal > 500, "The balance cannot be less than 500.")
The require statement is used to enforce a condition that must be met for the function to execute successfully. In this contract, the amount function uses require to ensure that the _bal parameter passed to it is greater than 500. If the condition is not met, the function call will be reverted, and an error message will be provided: "The balance cannot be less than 500."

2. if (_bal > 100000) { revert("Please contact main branch for huge amount."); }
The revert statement is used to revert the transaction with a given error message if a certain condition is met. Here, if the _bal parameter is greater than 100,000, the transaction will be reverted, and the error message "Please contact main branch for huge amount." will be displayed.

3. assert(_bal != balance);
The assert statement is used to check for conditions that should never occur in a well-functioning contract. If the condition within assert evaluates to false, it indicates a critical error that should be caught during development and testing. Here, the assert is used to verify that the _bal parameter is not equal to the current balance value.

Public State Variable
balance: A public uint variable representing the current balance.
Function
amount(uint _bal) public
This function takes a parameter _bal representing the amount.
It utilizes the require mechanism to enforce a minimum balance requirement.
It uses the revert mechanism to handle extremely large amounts.
It applies the assert mechanism to ensure that the balance is not set to its current value.
If all conditions are met, it updates the balance variable.
License
The contract specifies the SPDX-License-Identifier as "Unlicensed", indicating that no specific license has been chosen for the contract. It is important to consult the developers and follow licensing standards when using or modifying the code.
