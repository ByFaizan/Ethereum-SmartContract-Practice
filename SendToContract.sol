pragma solidity ^0.5.0;

contract SendToContract {
    
    // to get the address of deployed contract
    function getAddress() public view returns(address) {
        return address(this);
    }
    
    // to get ether from the remix-ide 
    function sendEther() public payable returns(uint) {
        return msg.value;
    }
    
    // to check the # of ethers an address currently holds
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

}