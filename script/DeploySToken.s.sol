// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SToken} from "../src/SToken.sol";

contract DeploySToken is Script {
    function run() external {
        vm.startBroadcast();

        SToken stoken = new SToken(1_000_000 * 1e18);

        // Optionally, you can log the address of the deployed contract
        console.log("SToken deployed at:", address(stoken));

        vm.stopBroadcast();
    }
}