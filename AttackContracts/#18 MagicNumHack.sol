// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MagicNumberHack {
  constructor() {
    assembly {

      // 00 PUSH1 2a 
      // 03 PUSH1  0 
      // 05 MSTORE
      // 06 PUSH1 20 
      // 08 PUSH1 0
      // 10 RETURN
      // Bytecode: 0x602a60005260206000f3 
      mstore(0, 0x602a60005260206000f3)
      return(0x16, 0x0a)
    }
  }
}
