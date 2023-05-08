//SPDX-License-Identifier: MIt
pragma solidity 0.8.19;

contract Wallet {                                               //child contract way 
 
    PaymentReceived public payment;

    function payContract () payable public{
        payment = new PaymentReceived(msg.sender , msg.value);
    }

}

contract PaymentReceived {

    address from ; 
    uint amount;

    constructor(address _from, uint _amount){
        from = _from;
        amount = _amount;

    }
}

contract Wallet2 {                                                    // struct way

    struct PaymentReceivedStruct{
        address from;
        uint amount;
    }
    PaymentReceivedStruct public payment;

    function payContract() public payable{
        payment  =  PaymentReceivedStruct(msg.sender,msg.value);            //here you dont have to use new keyword as well as the amount of gas consumed is also low as compared to subcontract/child contract
    
       payment.from = msg.sender;
       payment.amount = msg.value;
    }

}
