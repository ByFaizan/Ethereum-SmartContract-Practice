pragma solidity ^0.5.0;


contract FixedArrays{
    
    
    int[5] public myArray; //fixed array of length 4, will hold data at 5 indexes
    int[2] public mySmallArray = [10, 100];
    
    
    //function to add data to index
    function setData(uint i, int _int) public {
        myArray[i] = _int;
    }
    
    //function to get the length of array
    function getLength() public view returns(uint) {
        return myArray.length;
    }   
    
}