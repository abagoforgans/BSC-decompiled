contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6)
#
address owner;
address token0Address;
address token1Address;
uint32 blockTimestampLast; offset 160
address pairAddress;
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 price0Average;
uint256 price1Average;
uint256 sub_871db77c;
address mainTokenAddress;
address sideTokenAddress;
mapping of address chainLinkOracle;
address treasuryAddress;
mapping of struct sub_36d654d3;
mapping of uint256 sub_5dbd5e25;

function token0() payable {
    return token0Address
}

function chainLinkOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    return chainLinkOracle[arg1]
}

function sub_36d654d3(?) payable {
    require calldata.size - 4 >= 32
    return sub_36d654d3[arg1].field_0
}

function mainToken() payable {
    return mainTokenAddress
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function sub_5dbd5e25(?) payable {
    require calldata.size - 4 >= 32
    return sub_5dbd5e25[arg1]
}

function price1Average() payable {
    return price1Average
}

function treasury() payable {
    return treasuryAddress
}

function sub_871db77c(?) payable {
    return sub_871db77c
}

function owner() payable {
    return owner
}

function sideToken() payable {
    return sideTokenAddress
}

function price0Average() payable {
    return price0Average
}

function pair() payable {
    return pairAddress
}

function blockTimestampLast() payable {
    return blockTimestampLast
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_d71d9188(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5dbd5e25[address(arg1)] = arg2
}

function setChainLinkOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    chainLinkOracle[address(arg1)] = arg2
}

function setPriceAppreciation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^17:
        revert with 0, '_priceAppreciation is insane'
    sub_871db77c = arg1
}

function epoch() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextEpochPoint() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xc5967c26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextEpochLength() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.nextEpochLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_580a560e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(chainLinkOracle[address(arg1)])
    staticcall chainLinkOracle[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rescueStuckErc20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_63996974(?) payable {
    require ext_code.size(chainLinkOracle[stor151])
    staticcall chainLinkOracle[stor151].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainLinkOracle[stor152])
    staticcall chainLinkOracle[stor152].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_871db77c:
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5909c0d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5a3d5493 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            if mainTokenAddress == token0Address:
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) / 10^18 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if not Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if mainTokenAddress != token1Address:
                    return 0
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) / 10^18 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if not Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[32]):
                    if mainTokenAddress == token0Address:
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) / 10^18 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                            if not Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if mainTokenAddress != token1Address:
                            return 0
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) / 10^18 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                            if not Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5909c0d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5a3d5493 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            if mainTokenAddress == token0Address:
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (10^18 * sub_871db77c / 10^18) + 10^18 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if mainTokenAddress != token1Address:
                    return 0
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (10^18 * sub_871db77c / 10^18) + 10^18 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[32]):
                    if mainTokenAddress == token0Address:
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (10^18 * sub_871db77c / 10^18) + 10^18 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                    if not Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if mainTokenAddress != token1Address:
                            return 0
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (10^18 * sub_871db77c / 10^18) + 10^18 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                    if not Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (10^18 * sub_871db77c / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function twap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(chainLinkOracle[stor151])
    staticcall chainLinkOracle[stor151].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainLinkOracle[stor152])
    staticcall chainLinkOracle[stor152].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_871db77c:
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5909c0d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5a3d5493 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            if arg1 == token0Address:
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if arg1 != token1Address:
                    return 0
                if uint32(uint32(block.timestamp) - blockTimestampLast):
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[32]):
                    if arg1 == token0Address:
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if not arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if arg2:
                                    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                    if not Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if arg1 != token1Address:
                            return 0
                        if uint32(uint32(block.timestamp) - blockTimestampLast):
                            if not arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if arg2:
                                    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                    if not Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if not arg2:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x5909c0d5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x5a3d5493 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
                if arg1 == token0Address:
                    if uint32(uint32(block.timestamp) - blockTimestampLast):
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if arg1 != token1Address:
                        return 0
                    if uint32(uint32(block.timestamp) - blockTimestampLast):
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO'
                    if Mask(112, 0, ext_call.return_data[32]):
                        if arg1 == token0Address:
                            if uint32(uint32(block.timestamp) - blockTimestampLast):
                                if not arg2:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if arg2:
                                        if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                        if not Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, 0 / ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if arg1 != token1Address:
                                return 0
                            if uint32(uint32(block.timestamp) - blockTimestampLast):
                                if not arg2:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if arg2:
                                        if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                        if not Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, 0 / ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112 / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if sub_871db77c * arg2 / arg2 != sub_871db77c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x5909c0d5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x5a3d5493 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
                if arg1 == token0Address:
                    if uint32(uint32(block.timestamp) - blockTimestampLast):
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (sub_871db77c * arg2 / 10^18) + arg2 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if arg1 != token1Address:
                        return 0
                    if uint32(uint32(block.timestamp) - blockTimestampLast):
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (sub_871db77c * arg2 / 10^18) + arg2 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO'
                    if Mask(112, 0, ext_call.return_data[32]):
                        if arg1 == token0Address:
                            if uint32(uint32(block.timestamp) - blockTimestampLast):
                                if not (sub_871db77c * arg2 / 10^18) + arg2:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if (sub_871db77c * arg2 / 10^18) + arg2:
                                        if (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (sub_871db77c * arg2 / 10^18) + arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                        if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, 0 / ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if arg1 != token1Address:
                                return 0
                            if uint32(uint32(block.timestamp) - blockTimestampLast):
                                if not (sub_871db77c * arg2 / 10^18) + arg2:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if (sub_871db77c * arg2 / 10^18) + arg2:
                                        if (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) / (sub_871db77c * arg2 / 10^18) + arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                                        if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, 0 / ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))) + (arg2 * Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)))) >> 112 / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_270ec0cc(?) payable {
    require ext_code.size(chainLinkOracle[stor151])
    staticcall chainLinkOracle[stor151].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainLinkOracle[stor152])
    staticcall chainLinkOracle[stor152].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_5dbd5e25[stor151]:
        if not sub_5dbd5e25[stor152]:
            if not sub_871db77c:
                if mainTokenAddress == token0Address:
                    if 10^18 * price0Average / 10^18 != price0Average:
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if not Mask(32, 112, 10^18 * price0Average) >> 112:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                else:
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if 10^18 * price1Average / 10^18 != price1Average:
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if not Mask(32, 112, 10^18 * price1Average) >> 112:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if mainTokenAddress == token0Address:
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if not ext_call.return_data[0]:
                if not sub_871db77c:
                    if mainTokenAddress != token0Address:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if 10^18 * price1Average / 10^18 != price1Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if Mask(32, 112, 10^18 * price1Average) >> 112:
                            if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * price0Average / 10^18 != price0Average:
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if Mask(32, 112, 10^18 * price0Average) >> 112:
                        if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return Mask(144, 0, 0 / ext_call.return_data[0])
                else:
                    if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if mainTokenAddress != token0Address:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            require (10^18 * sub_871db77c / 10^18) + 10^18
                            if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
            else:
                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_871db77c:
                    if mainTokenAddress == token0Address:
                        if 10^18 * price0Average / 10^18 != price0Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if not Mask(32, 112, 10^18 * price0Average) >> 112:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                        ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if 10^18 * price1Average / 10^18 != price1Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if not Mask(32, 112, 10^18 * price1Average) >> 112:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                else:
                    if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if mainTokenAddress == token0Address:
                        if not (10^18 * sub_871db77c / 10^18) + 10^18:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not (10^18 * sub_871db77c / 10^18) + 10^18:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    else:
        if not ext_call.return_data[0]:
            if not sub_5dbd5e25[stor152]:
                if not sub_871db77c:
                    if mainTokenAddress == token0Address:
                        if 10^18 * price0Average / 10^18 != price0Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if Mask(32, 112, 10^18 * price0Average) >> 112:
                            if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if 10^18 * price1Average / 10^18 != price1Average:
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                        if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return Mask(144, 0, 0 / ext_call.return_data[0])
                else:
                    if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if mainTokenAddress == token0Address:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            require (10^18 * sub_871db77c / 10^18) + 10^18
                            if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    if not sub_871db77c:
                        if mainTokenAddress == token0Address:
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, 10^18 * price0Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    else:
                        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if mainTokenAddress == token0Address:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_871db77c:
                    if mainTokenAddress == token0Address:
                        if 10^18 * price0Average / 10^18 != price0Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if Mask(32, 112, 10^18 * price0Average) >> 112:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if 10^18 * price1Average / 10^18 != price1Average:
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                        if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                        return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                else:
                    if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if mainTokenAddress == token0Address:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            require (10^18 * sub_871db77c / 10^18) + 10^18
                            if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if mainTokenAddress != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                    else:
                        if (10^18 * sub_871db77c / 10^18) + 10^18:
                            if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
        else:
            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor151]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_5dbd5e25[stor152]:
                if not sub_871db77c:
                    if mainTokenAddress == token0Address:
                        if 10^18 * price0Average / 10^18 != price0Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if not Mask(32, 112, 10^18 * price0Average) >> 112:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if 10^18 * price1Average / 10^18 != price1Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if not Mask(32, 112, 10^18 * price1Average) >> 112:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                        ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if mainTokenAddress == token0Address:
                        if not (10^18 * sub_871db77c / 10^18) + 10^18:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if mainTokenAddress != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not (10^18 * sub_871db77c / 10^18) + 10^18:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if not ext_call.return_data[0]:
                    if not sub_871db77c:
                        if mainTokenAddress != token0Address:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * price0Average / 10^18 != price0Average:
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                        if Mask(32, 112, 10^18 * price0Average) >> 112:
                            if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                            return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                    else:
                        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if mainTokenAddress != token0Address:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if not (10^18 * sub_871db77c / 10^18) + 10^18:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                else:
                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_871db77c:
                        if mainTokenAddress == token0Address:
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if mainTokenAddress == token0Address:
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    revert
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(chainLinkOracle[stor151])
    staticcall chainLinkOracle[stor151].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainLinkOracle[stor152])
    staticcall chainLinkOracle[stor152].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_5dbd5e25[stor151]:
        if not sub_5dbd5e25[stor152]:
            if not sub_871db77c:
                if arg1 == token0Address:
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if price0Average * arg2 / arg2 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, price0Average * arg2) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if arg1 != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if price1Average * arg2 / arg2 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if not Mask(32, 112, price1Average * arg2) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if not arg2:
                    if arg2 < arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 == token0Address:
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price0Average * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price1Average * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if sub_871db77c * arg2 / arg2 != sub_871db77c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 == token0Address:
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if not ext_call.return_data[0]:
                if not sub_871db77c:
                    if arg1 != token0Address:
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if arg2:
                            require arg2
                            if price1Average * arg2 / arg2 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price1Average * arg2) >> 112:
                                if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if price0Average * arg2 / arg2 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price0Average * arg2) >> 112:
                                if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                else:
                    if not arg2:
                        if arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 != token0Address:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if arg2:
                                require arg2
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price1Average * arg2) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price0Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if sub_871db77c * arg2 / arg2 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 != token0Address:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                require (sub_871db77c * arg2 / 10^18) + arg2
                                if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                    if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
            else:
                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_871db77c:
                    if arg1 == token0Address:
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price0Average * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not arg2:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if arg2:
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price1Average * arg2) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                else:
                    if not arg2:
                        if arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if not arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if arg2:
                                    if price0Average * arg2 / arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price0Average * arg2) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not arg2:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if arg2:
                                    if price1Average * arg2 / arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price1Average * arg2) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price1Average * arg2) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if sub_871db77c * arg2 / arg2 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if not (sub_871db77c * arg2 / 10^18) + arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not (sub_871db77c * arg2 / 10^18) + arg2:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    else:
        if not ext_call.return_data[0]:
            if not sub_5dbd5e25[stor152]:
                if not sub_871db77c:
                    if arg1 == token0Address:
                        if arg2:
                            require arg2
                            if price0Average * arg2 / arg2 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price0Average * arg2) >> 112:
                                if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if arg1 != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not arg2:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if arg2:
                            if price1Average * arg2 / arg2 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price1Average * arg2) >> 112:
                                if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                else:
                    if not arg2:
                        if arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if arg2:
                                require arg2
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price0Average * arg2) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price1Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if sub_871db77c * arg2 / arg2 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                require (sub_871db77c * arg2 / 10^18) + arg2
                                if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    if not sub_871db77c:
                        if arg1 == token0Address:
                            if arg2:
                                require arg2
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price0Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if arg2:
                                require arg2
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price1Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    else:
                        if not arg2:
                            if arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 == token0Address:
                                if arg2:
                                    require arg2
                                    if price0Average * arg2 / arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, price0Average * arg2) >> 112:
                                        if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            else:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if arg2:
                                    require arg2
                                    if price1Average * arg2 / arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, price1Average * arg2) >> 112:
                                        if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        else:
                            if sub_871db77c * arg2 / arg2 != sub_871db77c:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 == token0Address:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    require (sub_871db77c * arg2 / 10^18) + arg2
                                    if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                        if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            else:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    require (sub_871db77c * arg2 / 10^18) + arg2
                                    if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_871db77c:
                    if arg1 == token0Address:
                        if arg2:
                            require arg2
                            if price0Average * arg2 / arg2 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price0Average * arg2) >> 112:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if arg1 != token1Address:
                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                    if not arg2:
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                    else:
                        if arg2:
                            if price1Average * arg2 / arg2 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                            if Mask(32, 112, price1Average * arg2) >> 112:
                                if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                else:
                    if not arg2:
                        if arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if arg2:
                                require arg2
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price0Average * arg2) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not arg2:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if arg2:
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price1Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price1Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                    else:
                        if sub_871db77c * arg2 / arg2 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                require (sub_871db77c * arg2 / 10^18) + arg2
                                if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not (sub_871db77c * arg2 / 10^18) + arg2:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if (sub_871db77c * arg2 / 10^18) + arg2:
                                if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
        else:
            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor151]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_5dbd5e25[stor152]:
                if not sub_871db77c:
                    if arg1 == token0Address:
                        if not arg2:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if arg2:
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price0Average * arg2) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if arg1 != token1Address:
                            revert with 0, 'GoldOracle: INVALID_TOKEN'
                        if not arg2:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return Mask(144, 0, 0 / ext_call.return_data[0])
                        else:
                            if arg2:
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if not Mask(32, 112, price1Average * arg2) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if not arg2:
                        if arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if not arg2:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if arg2:
                                    if price0Average * arg2 / arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price0Average * arg2) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, price0Average * arg2) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if arg2:
                                    if price1Average * arg2 / arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price1Average * arg2) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if sub_871db77c * arg2 / arg2 != sub_871db77c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 == token0Address:
                            if not (sub_871db77c * arg2 / 10^18) + arg2:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not (sub_871db77c * arg2 / 10^18) + arg2:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if not ext_call.return_data[0]:
                    if not sub_871db77c:
                        if arg1 != token0Address:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if arg2:
                                require arg2
                                if price1Average * arg2 / arg2 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price1Average * arg2) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if not arg2:
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if arg2:
                                if price0Average * arg2 / arg2 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                if Mask(32, 112, price0Average * arg2) >> 112:
                                    if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                    else:
                        if not arg2:
                            if arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 != token0Address:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if arg2:
                                    require arg2
                                    if price1Average * arg2 / arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, price1Average * arg2) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if not arg2:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if arg2:
                                    if price0Average * arg2 / arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, price0Average * arg2) >> 112:
                                        if 0 / Mask(32, 112, price0Average * arg2) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if sub_871db77c * arg2 / arg2 != sub_871db77c:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 != token0Address:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    require (sub_871db77c * arg2 / 10^18) + arg2
                                    if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if not (sub_871db77c * arg2 / 10^18) + arg2:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if (sub_871db77c * arg2 / 10^18) + arg2:
                                    if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                        if 0 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                else:
                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_871db77c:
                        if arg1 == token0Address:
                            if not arg2:
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if arg2:
                                    if price0Average * arg2 / arg2 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price0Average * arg2) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if arg1 != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not arg2:
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                    return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if arg2:
                                    if price1Average * arg2 / arg2 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                    if not Mask(32, 112, price1Average * arg2) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                    else:
                        if not arg2:
                            if arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 == token0Address:
                                if not arg2:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if arg2:
                                        if price0Average * arg2 / arg2 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                        if not Mask(32, 112, price0Average * arg2) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / Mask(32, 112, price0Average * arg2) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price0Average * arg2) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                            else:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not arg2:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if arg2:
                                        if price1Average * arg2 / arg2 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                        if not Mask(32, 112, price1Average * arg2) >> 112:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / Mask(32, 112, price1Average * arg2) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, price1Average * arg2) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                        else:
                            if sub_871db77c * arg2 / arg2 != sub_871db77c:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (sub_871db77c * arg2 / 10^18) + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 == token0Address:
                                if not (sub_871db77c * arg2 / 10^18) + arg2:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if (sub_871db77c * arg2 / 10^18) + arg2:
                                        if (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                        if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price0Average) + (arg2 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor151', 151)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
                            else:
                                if arg1 != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not (sub_871db77c * arg2 / 10^18) + arg2:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if (sub_871db77c * arg2 / 10^18) + arg2:
                                        if (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average) / (sub_871db77c * arg2 / 10^18) + arg2 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
                                        if not Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                return Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (sub_871db77c * arg2 / 10^18 * price1Average) + (arg2 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        ('iszero', ('div', ('mul', ('stor', ('map', ('stor', ('name', 'stor152', 152)), ('name', 'sub_5dbd5e25', 164))), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    revert
}

function update() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_36d654d3[ext_call.return_data[0]].field_0:
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0xc5967c26 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 'GoldOracle: not opened yet'
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5909c0d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5a3d5493 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            price0Average = Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0]
            price1CumulativeLast = ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            require ext_code.size(chainLinkOracle[stor151])
            staticcall chainLinkOracle[stor151].latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(chainLinkOracle[stor152])
            staticcall chainLinkOracle[stor152].latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_5dbd5e25[stor151]:
                if not sub_5dbd5e25[stor152]:
                    if not sub_871db77c:
                        if mainTokenAddress == token0Address:
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                            if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                            if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                    else:
                        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if mainTokenAddress == token0Address:
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                else:
                    if not ext_call.return_data[0]:
                        if not sub_871db77c:
                            if mainTokenAddress != token0Address:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                            if Mask(32, 112, 10^18 * price0Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress != token0Address:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
            else:
                if not ext_call.return_data[0]:
                    if not sub_5dbd5e25[stor152]:
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if not ext_call.return_data[0]:
                            if not sub_871db77c:
                                if mainTokenAddress == token0Address:
                                    if 10^18 * price0Average / 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, 10^18 * price0Average) >> 112:
                                        if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress == token0Address:
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                        if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                        if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                else:
                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor151]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not sub_5dbd5e25[stor152]:
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                    else:
                        if not ext_call.return_data[0]:
                            if not sub_871db77c:
                                if mainTokenAddress != token0Address:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress != token0Address:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                        if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                            require ext_code.size(treasuryAddress)
                            staticcall treasuryAddress.0x900cf0cf with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_871db77c:
                                if mainTokenAddress == token0Address:
                                    if 10^18 * price0Average / 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                    if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress == token0Address:
                                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                        if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[327 len 29]
                                        if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
            sub_36d654d3[ext_call.return_data[0]].field_144 = 0
            emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            price0Average = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            price1CumulativeLast = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            require ext_code.size(chainLinkOracle[stor151])
            staticcall chainLinkOracle[stor151].latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(chainLinkOracle[stor152])
            staticcall chainLinkOracle[stor152].latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_5dbd5e25[stor151]:
                if not sub_5dbd5e25[stor152]:
                    if not sub_871db77c:
                        if mainTokenAddress == token0Address:
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                            if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                            if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                    else:
                        if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if mainTokenAddress == token0Address:
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                        else:
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                require ext_code.size(treasuryAddress)
                                staticcall treasuryAddress.0x900cf0cf with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                            else:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                else:
                    if not ext_call.return_data[0]:
                        if not sub_871db77c:
                            if mainTokenAddress != token0Address:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * price0Average / 10^18 != price0Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                            if Mask(32, 112, 10^18 * price0Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress != token0Address:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / ext_call.return_data[0])
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / ext_call.return_data[0])
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
            else:
                if not ext_call.return_data[0]:
                    if not sub_5dbd5e25[stor152]:
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                    else:
                        if not ext_call.return_data[0]:
                            if not sub_871db77c:
                                if mainTokenAddress == token0Address:
                                    if 10^18 * price0Average / 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, 10^18 * price0Average) >> 112:
                                        if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress == token0Address:
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                        if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                        if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if 10^18 * price1Average / 10^18 != price1Average:
                                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                            if Mask(32, 112, 10^18 * price1Average) >> 112:
                                if 0 / Mask(32, 112, 10^18 * price1Average) >> 112:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                revert with 0, 'SafeMath: division by zero'
                            if mainTokenAddress != token1Address:
                                revert with 0, 'GoldOracle: INVALID_TOKEN'
                            if (10^18 * sub_871db77c / 10^18) + 10^18:
                                require (10^18 * sub_871db77c / 10^18) + 10^18
                                if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                    if 0 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                else:
                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor151]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not sub_5dbd5e25[stor152]:
                        if not sub_871db77c:
                            if mainTokenAddress == token0Address:
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if 10^18 * price1Average / 10^18 != price1Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / ext_call.return_data[0])
                        else:
                            if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if mainTokenAddress == token0Address:
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, ext_call.return_data[0] * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                            else:
                                if mainTokenAddress != token1Address:
                                    revert with 0, 'GoldOracle: INVALID_TOKEN'
                                if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    require ext_code.size(treasuryAddress)
                                    staticcall treasuryAddress.0x900cf0cf with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                else:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / ext_call.return_data[0])
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / ext_call.return_data[0])
                    else:
                        if not ext_call.return_data[0]:
                            if not sub_871db77c:
                                if mainTokenAddress != token0Address:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * price0Average / 10^18 != price0Average:
                                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                if Mask(32, 112, 10^18 * price0Average) >> 112:
                                    if 0 / Mask(32, 112, 10^18 * price0Average) >> 112:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress != token0Address:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if (10^18 * sub_871db77c / 10^18) + 10^18:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                        if Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * sub_871db77c / 10^18) + 10^18:
                                    require (10^18 * sub_871db77c / 10^18) + 10^18
                                    if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                        if 0 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                            require ext_code.size(treasuryAddress)
                            staticcall treasuryAddress.0x900cf0cf with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                        else:
                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / ext_call.return_data[0] != sub_5dbd5e25[stor152]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not sub_871db77c:
                                if mainTokenAddress == token0Address:
                                    if 10^18 * price0Average / 10^18 != price0Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, 10^18 * price0Average) >> 112:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / Mask(32, 112, 10^18 * price0Average) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price0Average) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if 10^18 * price1Average / 10^18 != price1Average:
                                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                    if not Mask(32, 112, 10^18 * price1Average) >> 112:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / Mask(32, 112, 10^18 * price1Average) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, 10^18 * price1Average) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                            else:
                                if 10^18 * sub_871db77c / 10^18 != sub_871db77c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (10^18 * sub_871db77c / 10^18) + 10^18 < 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mainTokenAddress == token0Address:
                                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                        if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                    else:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price0Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                        if not Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 != sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price0Average) + (10^18 * sub_871db77c / 10^18 * price0Average)) >> 112 / sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18)
                                else:
                                    if mainTokenAddress != token1Address:
                                        revert with 0, 'GoldOracle: INVALID_TOKEN'
                                    if not (10^18 * sub_871db77c / 10^18) + 10^18:
                                        if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                        require ext_code.size(treasuryAddress)
                                        staticcall treasuryAddress.0x900cf0cf with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                    else:
                                        require (10^18 * sub_871db77c / 10^18) + 10^18
                                        if (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average) / (10^18 * sub_871db77c / 10^18) + 10^18 != price1Average:
                                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[455 len 29]
                                        if not Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112:
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, 0 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 != sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            if sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18
                                            require ext_code.size(treasuryAddress)
                                            staticcall treasuryAddress.0x900cf0cf with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_36d654d3[ext_call.return_data[0]].field_0 = Mask(144, 0, sub_5dbd5e25[stor151] * ext_call.return_data[0] / 10^18 * Mask(32, 112, (10^18 * price1Average) + (10^18 * sub_871db77c / 10^18 * price1Average)) >> 112 / sub_5dbd5e25[stor152] * ext_call.return_data[0] / 10^18)
            sub_36d654d3[ext_call.return_data[0]].field_144 = 0
            emit Updated((Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0], (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]);
}



}
