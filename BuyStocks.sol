pragma solidity ^0.5.0;

contract Exchange{
    
    // contract made using structs & arrays only

    //general details about a company share
    struct StockTrading{
        uint tradeID;
        uint price;
        uint quantity;
        string traderName;
    }
    
    //dynamic array to hold buyers
    StockTrading[] public appleStock; 
    
    //to begin counting share-holders
    uint public appleStockHolders = 0;
    
    
    //to add details of particular buyer with current float rate
    function buyAppleStock (uint _tradeID, 
                            uint _price, 
                            uint _quantity, 
                            string memory _traderName) public {
                                
        StockTrading memory liveData = StockTrading({
            tradeID : _tradeID,
            price : _price,
            quantity : _quantity,
            traderName : _traderName
        });
        
        appleStock.push(liveData); 
        
        appleStockHolders += 1;
        
    }

        
}