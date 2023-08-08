// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract errHandle{
    uint public balance;

    //user defined fnc amount
    function amount(uint _bal) public {
        // Implementing Require fnc
        require(_bal> 500, "The balance cannot be less than 500.");

        // Implementing Revert fnc
        if (_bal > 100000) {
            revert("Please contact main branch for huge amount.");
        }

        // Implementing assert fnc
        assert(_bal != balance); //bal should definately be positive
        balance = _bal;
    }
}
