# Functions-and-Errors---ETH-AVAX
//write a smart contract that implements the require(), assert() and revert() statements.

//SimpleContract
SimpleContract is a basic Solidity smart contract that demonstrates the use of require(), assert(), and revert() statements. It allows setting a value, withdrawing Ether, and handling intentional transaction failures.


//Features
* Set a Value: Only the contract owner can set a non-zero value.
* Withdraw Ether: The contract owner can withdraw the contract's balance.
* Revert Transactions: Demonstrates the use of revert() to intentionally fail transactions.
* Receive Ether: The contract can receive Ether.

 //Contract Details
 State Variables
owner (address): The address of the contract owner, set during deployment.
value (uint256): A stored value that can only be set by the owner.
Functions
constructor()
Sets the contract owner to the address that deploys the contract.

setValue(uint256 _value)
Sets the value state variable.

Conditions:
Only the owner can set the value (require()).
The value must be greater than zero (require()).
Ensures the value is correctly set (assert()).
withdraw()
Withdraws the entire Ether balance of the contract to the owner's address.

Conditions:
Only the owner can withdraw (require()).
The transfer must succeed (require()).
failTransaction()
Demonstrates an intentional transaction failure.

Behavior: Always reverts with the message "This transaction is intentionally reverted".
receive() external payable
A fallback function that allows the contract to receive Ether.


License
This project is licensed under the MIT License.
