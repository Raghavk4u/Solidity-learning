// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;
 
 contract BlockchainMessenger {
  uint public LastValue;
  string public LastFunction;

  uint public myUint;

  function setMyUint(uint _myNewUint) public{          
      myUint = _myNewUint;
  }


  receive() external payable{              //can be called without any payment 
      LastValue = msg.value;
      LastFunction = "receive";

  }

  fallback() external payable{                   //called default when payment is added with deployment
      LastFunction = "fallback";
      LastValue = msg.value;
  }
     
 }
