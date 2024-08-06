
//write a smart contract that implements the require(), assert() and revert() statements.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    // Function that requires the caller to be the owner
    function setValue(uint256 _value) public {
        require(msg.sender == owner, "Only the owner can set the value");
        require(_value > 0, "Value must be greater than zero");

        value = _value;

        // Checking the  value is correctly set  and o correctlly internal 
        assert(value == _value);
    }

    // Function to withdraw ether, only the owner can call it
    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");

        uint256 amount = address(this).balance;
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Transfer failed");
    }

    // Function that demonstrates revert()
    function failTransaction() public pure {
        revert("This transaction is intentionally reverted");
    }

    // Fallback function to receive ether
    receive() external payable {}
}


