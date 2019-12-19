pragma solidity ^0.5.0;

contract Result{
    
    enum ResultStatus { Failed, Passed }
    
    ResultStatus status;
    
    function enterMarks(uint _marks) public {
        if(_marks >= 50) {
            status = ResultStatus.Passed;
        }
        else if(_marks < 50) {
            status = ResultStatus.Failed;
        }
    }
    
    function checkResult() public view returns(ResultStatus) {
        return status;
    }
    
    
}