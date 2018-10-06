pragma solidity ^0.4.2;

import "./MYPcryp.sol";

contract MYPcrypSale {
    address admin;
    MYPcryp public tokenContract;
    uint256 public tokenPrice;
    uint256 public tokensSold;

    //uint256 is an unsigned integer

    //sell event
    event Sell(address _buyer, uint256 _amount);

    function MYPcrypSale(MYPcryp _tokenContract, uint256 _tokenPrice) public {
        //admin is the person who deployed contract
        admin = msg.sender;
        tokenContract = _tokenContract;
        //price of token
        tokenPrice = _tokenPrice;
    }

    //this function is necessary to ensure safe multiplication
    //Using ds-math library
    //function is copied from that library
    function multiply(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }

    ////declare this payable because want this to be able to send ETHER for a function
    function buyTokens(uint256 _numberOfTokens) public payable {
      //need enough tokens, need successful transfer
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        require(tokenContract.balance(this) >= _numberOfTokens);
        require(tokenContract.transfer(msg.sender, _numberOfTokens));

        //TOKEN NUMBER SOLD
        tokensSold += _numberOfTokens;

        //triger the sale event
        Sell(msg.sender, _numberOfTokens);
    }

    function endSale() public {
        require(msg.sender == admin);
        require(tokenContract.transfer(admin, tokenContract.balance(this)));

        // UPDATE: Let's not destroy the contract here
        // Just transfer the balance to the admin
        admin.transfer(address(this).balance);
    }
}
