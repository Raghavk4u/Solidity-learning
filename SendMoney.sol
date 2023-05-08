//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SendMoney{

    uint public ReceivedMoney;
    
    function deposit() public payable{
        ReceivedMoney += msg.value;
    }

    function withdrawAll () public payable{
        address payable to  = payable(msg.sender);                  //withdraw all money which a particular account has
        to.transfer(getBalance());
    }

   function getBalance() public view returns(uint){
       return address(this).balance;
   }

   function withdrawMoney(address payable to) public{                //send the all money to a given account 
       to.transfer(getBalance());
   }
}
