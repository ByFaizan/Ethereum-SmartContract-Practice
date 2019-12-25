pragma solidity ^0.5.0;

contract Controls {
    
    
    // if-else 
    
    function ifElse(uint x, uint y) public pure returns(uint result) {
        
        if (x > y) {
            
            result = (x - y);
            return result;
            
        } else if (y > x) {
            
            result = (y - x);
            return result;
            
        } else {
            
            return 0;
            
        }
        
    }
    
    // while-loop
    
    event logLoop(uint);
    
    function whileLoop(uint numOfLoops) public {
        
        uint i = 0;
        while(i < numOfLoops) {
            emit logLoop(i);
            i += 1;
        }
        
    }
    
    // doWhile-Loop
    
    function doWhileLoop(uint numOfLoops) public {
        uint i = 0;
        do {
            emit logLoop(i);
            i++;
        } while(i < numOfLoops);
    }
    
    // for-loop
    
    function forLoop(uint numOfLoops) public {
        for (uint i = 0; i < numOfLoops; i++) {
            emit logLoop(i);
        }
    }
    
    // breaking in between loops
    
    event logBreak(string);
    
    function breakLoop(uint numOfLoops) public {
        for (uint i = 0; i < numOfLoops; i++) {
            if (i == 4) {
                emit logBreak("LOOP BROKEN!");
                break;
              
            }
            emit logLoop(i);
        }
    }
    
    // continuing in between loops

    
    function continueLoop(uint numOfLoops) public {
        for (uint i = 0; i < numOfLoops; i++) {
            if (i == 4) {
                continue;
            }
            emit logLoop(i);
        }
    }
    
    
}