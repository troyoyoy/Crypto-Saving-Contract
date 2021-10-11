// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

import "./MoneySavingSystem.sol";

contract Pool is MoneySavingSystem {

    MoneySavingSystem[] public moneySavingSystemArray;

    function createMoneySavingSystemContract() public {
        MoneySavingSystem moneySavingSystem = new MoneySavingSystem();
        moneySavingSystemArray.push(moneySavingSystem);
    }

    function tdeposit(uint256 _TokenValue, string memory _blocktoken) public{
        MoneySavingSystem(address(moneySavingSystemArray[_TokenValue])).store(_blocktoken);
    }
    function twithdraw(uint256 _TokenValue) public view returns (uint256){
        return MoneySavingSystem(address(moneySavingSystemArray[_TokenValue]).retrieve();
    }

}





