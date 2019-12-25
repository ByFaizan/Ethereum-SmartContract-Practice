pragma solidity ^0.5.0;

contract Event {
    
    address payable fromAccount;
    uint public receipientBalance;
    
    event TranferComplete(address, address, uint);
    
    
    function transferEther(address payable _recipientAddress) 
    public 
    payable {
    
    fromAccount = msg.sender;
    _recipientAddress.transfer(msg.value);
    receipientBalance = _recipientAddress.balance;
    emit TranferComplete(fromAccount, _recipientAddress, receipientBalance);
    
    }
    
}