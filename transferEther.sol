pragma solidity ^0.5.0;

contract SendingEther{
    
    address public contractOwner;
    address payable public recipientAddress;
    
    uint public transferAmount;
    uint public recipientBalance;
    
    constructor() public {
        contractOwner = msg.sender;
    }
    
    function sendEther(address payable _recipiendAddress) 
        public 
        payable 
        returns(uint) 
            {
            recipientAddress = _recipiendAddress;
            transferAmount = msg.value;
            recipientAddress.transfer(transferAmount);
            recipientBalance = recipientAddress.balance;
            return recipientBalance;
            }
}