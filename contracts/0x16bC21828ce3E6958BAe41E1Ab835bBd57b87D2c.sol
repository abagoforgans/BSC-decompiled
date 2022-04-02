contract main {




// =====================  Runtime code  =====================


const PERIOD = 600


uint256 startTime;
uint256 epoch;
address token0Address;
address token1Address;
uint32 blockTimestampLast; offset 160
address pairAddress;
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 price0Average;
uint256 price1Average;

function token0() payable {
    return token0Address
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function price1Average() payable {
    return price1Average
}

function startTime() payable {
    return startTime
}

function epoch() payable {
    return epoch
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

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function nextEpochPoint() payable {
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    require epoch
    if 600 * epoch / epoch != 600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if startTime + (600 * epoch) < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (startTime + (600 * epoch))
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == token0Address:
        if not arg2:
            return 0
        require arg2
        if price0Average * arg2 / arg2 != price0Average:
            revert with 0, 32, 35, 0x774669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return (Mask(32, 112, price0Average * arg2) >> 112)
    if arg1 != token1Address:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not arg2:
        return 0
    require arg2
    if price1Average * arg2 / arg2 != price1Average:
        revert with 0, 32, 35, 0x774669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
    return (Mask(32, 112, price1Average * arg2) >> 112)
}

function update() payable {
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime:
            revert with 0, 'Oracle: not opened yet'
    else:
        require epoch
        if 600 * epoch / epoch != 600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if startTime + (600 * epoch) < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime + (600 * epoch):
            revert with 0, 'Oracle: not opened yet'
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
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            require uint32(uint32(block.timestamp) - blockTimestampLast)
            price0Average = Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0]
            price1CumulativeLast = ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            require uint32(uint32(block.timestamp) - blockTimestampLast)
            price0Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            price1CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            blockTimestampLast = uint32(block.timestamp)
            emit Updated(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])));
    if epoch + 1 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    epoch++
}



}
