// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {HorseStore} from "../../src/HorseStore.sol";
import {Test, console2} from "forge-std/Test.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function test_updateHorseNumber() public {
        uint256 newNumberOfHorses = 10;
        horseStore.updateHorseNumber(newNumberOfHorses);
        uint256 numberOfHorses = horseStore.readNumberOfHorses();
        console2.log("numberOfHorses", numberOfHorses);
        assertEq(numberOfHorses, newNumberOfHorses);
    }

    function test_readNumberOfHorses() public view {
        uint256 numberOfHorses = horseStore.readNumberOfHorses();
        console2.log("numberOfHorses", numberOfHorses);
        assertEq(numberOfHorses, 0);
    }
}
