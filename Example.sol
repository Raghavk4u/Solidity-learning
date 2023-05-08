//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract MyContract{
    string public outString = "hello world!!!";                    //contract where if the 1 ether is sent with deployment updates the string otherwise refunds the value the sender

  function updateString (string memory _upstring) public payable{
       if(msg.value == 1 ether){
        outString = _upstring;
       }else{
         payable(msg.sender).transfer(msg.value);
       }
 }
}
