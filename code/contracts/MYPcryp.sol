pragma solidity ^0.4.2;

contract MYPcryp {
  uint256 public totalSupply;
  string  public name = "MYP Cryp";
  string  public symbol = "MYP";

  mapping (address => uint256) public balance;
  mapping(address => mapping(address => uint256)) public allowance;

  event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

  event Approval(
            address indexed _owner,
            address indexed _spender,
            uint256 _value
    );

  function MYPcryp(uint256 _initSupply) public {
    balance[msg.sender] = _initSupply;
    totalSupply = _initSupply;
  }

  function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balance[msg.sender] >= _value);

        balance[msg.sender] -= _value;
        balance[_to] += _value;

        Transfer(msg.sender, _to, _value);

        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;

        Approval(msg.sender, _spender, _value);

        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= balance[_from]);
        require(_value <= allowance[_from][msg.sender]);

        balance[_from] -= _value;
        balance[_to] += _value;

        allowance[_from][msg.sender] -= _value;

        Transfer(_from, _to, _value);

        return true;
    }



}
