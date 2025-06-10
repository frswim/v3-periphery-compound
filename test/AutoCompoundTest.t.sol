// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/NonfungiblePositionManager.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

contract AutoCompoundTest is Test {
    NonfungiblePositionManager public manager;

    function setUp() public {
        // mock 測試環境初始化，你可以 fork mainnet 做真實測試
        manager = new NonfungiblePositionManager(
            0x1F98431c8aD98523631AE4a59f267346ea31F984, // factory
            0xC02aaA39b223FE8D0A0E5C4F27eAD9083C756Cc2, // WETH9
            address(0x1234) // tokenDescriptor (可為 dummy)
        );
    }

    function testEnableAutoCompound() public {
        // 你可以模擬 mint 倉位後設 autoCompound 為 true
        // 注意這裡簡化處理實際測試須 mock pool 和 token
        uint256 tokenId = 1;
        manager.setAutoCompound(tokenId, true);

        (, , , , , , , , , , , , bool autoCompound) = manager.positions(tokenId);
        assertEq(autoCompound, true);
    }
}
