// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// https://eth-kipu.gitbook.io/ethereum-developer-pack/modulo-3/estandares-librerias-y-patrones/crea-un-token-erc-20
contract TokenB is ERC20 {
    constructor(uint256 initialSupply) ERC20("AgustinTokenB", "ATKB") {
        _mint(msg.sender, initialSupply);
    }
}
