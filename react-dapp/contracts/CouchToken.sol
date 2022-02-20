pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Token {
  string public name = "Couch4Couch";
  string public symbol = "CFC";
  uint public totalSupply = 900000;
  mapping(address => uint) balances;

  constructor() {
    balances[msg.sender] = totalSupply;
  }

  function transfer(address to, uint amount) external {
    require(balances[msg.sender] >= amount, "No more couch funds");
    balances[msg.sender] -= amount;
    balances[to] += amount;
  }

  function balanceOf(address account) external view returns (uint) {
    return balances[account];
  }
}