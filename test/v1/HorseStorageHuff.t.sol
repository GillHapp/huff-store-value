// SPDX-License-Identifier: Apache
pragma solidity 0.8.20;

import {Base_TestV1, HorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "lib/foundry-huff/src/HuffDeployer.sol"; 
contract HorseStorageHUFF is Base_TestV1 {
    string public constant HORSE_STORE = "HorseStore";

    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE));
    }
}
