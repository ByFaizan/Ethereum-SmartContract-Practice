pragma solidity ^ 0.5.0;

contract DynamicArrays{
    
    int[] public myArray; //this is a dynamic-type array which can hold integers
    
    // to learn about the size of myArray
    function getLength() public view returns(uint) { 
        return myArray.length;
    } 
    
    // to add values at the end of myArray
    function pushValues(int _value) public {
        myArray.push(_value);
    }
    
    
    // to remove values from the end of myArray
    function popValues() public {
        myArray.pop();
    }
    
}