pragma solidity ^0.5.0;

contract CarShop{
    
    // mapping data using strcut

    // generic sedan-type car
    struct Sedan{
        uint plateNo;
        uint makeYear;
    }
    
    // to map Nissan-Altima's details
    mapping (uint => Sedan) public nissanAltima;
    
    
    // to keep count of Nissan-Altimas & increment map table
    uint public carsCount = 0;
    
    function addCars(uint _plateNo, uint _makeYear) public {
        
        carsCount += 1;
        nissanAltima[carsCount] = Sedan(_plateNo, _makeYear);
        
    }
    
}