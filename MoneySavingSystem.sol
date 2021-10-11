// SPDX-License-Identifier: MIT

// FINAL ASSIGNMENT
// In this contract you have to create a committee money saving system, A person can create a committee pool 
// of a certain token and other people can participate in this committee pool by depositing that token a 
// fixed amount decided by the pool creator, then at the end committee intervals of payment, a person among the 
// participants of this pool will get the committee sum amount pre-decided by the pool creator.

// Reminder : The contract will require you to deposit your testnet tokens if you're willing to participate. 
// Also try to create a security constraint so that a person after receiving their committee money cannot 
// run away, so there must an exiting policy preventing this to happen.

pragma solidity >=0.8.7;

contract MoneySavingSystem{
    uint256 TokenValue;
    string blocktoken;
    event CreatePool(string blocktoken, string name);

    struct People{
        uint256 TokenValue;
        string name;
    }

    People[] public people;
    mapping(string => uint256)public nameToTokenValue;

     function _createPool(string memory _blocktoken) public {
        blocktoken = _blocktoken;
    }

     function participatePool(string memory _name, uint256 _TokenValue) public {
         people.push(People(_TokenValue, _name));
         nameToTokenValue[_name] = _TokenValue;
    }

    function withdraw() public view returns(uint256){
        return TokenValue;
    }
}