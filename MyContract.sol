// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    address public owner;

    constructor() {
        owner = msg.sender; // Set the owner to the contract deployer
    }

    // Receive Ether
    receive() external payable {}

    // Check contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Withdraw all Ether
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
