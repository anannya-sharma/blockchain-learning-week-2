// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedData;

    // Function to get the stored number
    function getNumber() public view returns (uint256) {
        return storedData;
    }

    // Function to set the stored number
    function setNumber(uint256 newValue) public {
        storedData = newValue;
    }
}
