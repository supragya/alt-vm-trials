// // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Test, console} from "forge-std/Test.sol";
import {TestSha2} from "../src/Hasher.sol";

contract TestSha2Tester is Test {
    TestSha2 public testSha2;

    function test_hash() public {
        testSha2 = new TestSha2();
        (bytes32 hashPart1, bytes32 hashPart2) = testSha2.sha512External("");
        console.logBytes32(hashPart1);
        console.logBytes32(hashPart2);
    }
}
