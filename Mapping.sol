//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Mapping{

    mapping(uint => bool) public MyMapping;
    mapping(address => bool) public addressMapping;

    mapping(uint => mapping(uint => bool) ) public UintUintMapping;

    function setValue(uint _key) public{
        MyMapping[_key] = true;

    }

    function setVal()public{
        addressMapping[msg.sender] = true;
    }

    function NestedValue(uint _key1 , uint _key2 , bool value)public{
        UintUintMapping[_key1][_key2] = value;
    }

}
