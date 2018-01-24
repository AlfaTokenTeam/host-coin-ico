pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HostCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HostCoin(address _owner)  UpgradeableToken(_owner) {
    name = "HostCoin";
    symbol = "HC";
    totalSupply = 10000000000;
    decimals = 4;

    balances[_owner] = totalSupply;
  }
}