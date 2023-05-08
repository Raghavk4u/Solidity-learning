//SPDX-License-Identifier: MIt
pragma solidity 0.8.19;

contract MappingExample{
    mapping (address => uint) BalanceReceived;

    function SendMoney() public payable{
        BalanceReceived[msg.sender] = msg.value;
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll(address payable _to) public{
        uint Balance = BalanceReceived[msg.sender];
        BalanceReceived[msg.sender] = 0;
        _to.transfer(Balance);
    }
    
}
