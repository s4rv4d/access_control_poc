// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("SToken", "STK") {
        _mint(msg.sender, initialSupply);
    }
}