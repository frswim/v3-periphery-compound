# Uniswap V3 Periphery with Compund
This version is append compound method into Uniswap V3 and not support by Uniswap, just my passion for blockchain.


For actual version, you can go to [Uniswap](https://github.com/Uniswap/).


The main ideas are on [NonfungiblePositionManager](contracts/NonfungiblePositionManager.sol) and [INonfungiblePositionManager](contracts/interfaces/INonfungiblePositionManager.sol) that can set whether users need compund or not through NFT.


In addition to this, there is a compound test at [AutoCompoundTest](test/AutoCompoundTest.t.sol) that can use Foundry to test compound method.