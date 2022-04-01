contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint256 period;
uint256 startTime;
uint256 lastEpochTime;
uint256 currentEpoch;
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

function getPeriod() payable {
    return period
}

function operator() payable {
    return operatorAddress
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

function owner() payable {
    return owner
}

function price0Average() payable {
    return price0Average
}

function pair() payable {
    return pairAddress
}

function getCurrentEpoch() payable {
    return currentEpoch
}

function getLastEpochTime() payable {
    return lastEpochTime
}

function blockTimestampLast() payable {
    return blockTimestampLast
}

function getStartTime() payable {
    return startTime
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function nextEpochPoint() payable {
    if period + lastEpochTime < lastEpochTime:
        revert with 0, 'SafeMath: addition overflow'
    return (period + lastEpochTime)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEpoch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    currentEpoch = arg1
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x686f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 3600:
        revert with 0, '_period: out of range'
    if arg1 > 48 * 24 * 3600:
        revert with 0, '_period: out of range'
    period = arg1
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if token0Address == arg1:
        if not arg2:
            return 0
        require arg2
        if price0Average * arg2 / arg2 != price0Average:
            revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return (Mask(32, 112, price0Average * arg2) >> 112)
    if token1Address != arg1:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not arg2:
        return 0
    require arg2
    if price1Average * arg2 / arg2 != price1Average:
        revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
    return (Mask(32, 112, price1Average * arg2) >> 112)
}

function twap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
        if token0Address == arg1:
            require uint32(uint32(block.timestamp) - blockTimestampLast)
            if not arg2:
                return 0
            require arg2
            if Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
            return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
        if token1Address != arg1:
            return 0
        require uint32(uint32(block.timestamp) - blockTimestampLast)
        if not arg2:
            return 0
        require arg2
        if Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[32])
    if token0Address == arg1:
        require uint32(uint32(block.timestamp) - blockTimestampLast)
        if not arg2:
            return 0
        require arg2
        if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
        return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
    if token1Address != arg1:
        return 0
    require uint32(uint32(block.timestamp) - blockTimestampLast)
    if not arg2:
        return 0
    require arg2
    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
        revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
    return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
}

function update() payable {
    if period + lastEpochTime < lastEpochTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < period + lastEpochTime:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x7345706f63683a206f6e6c79206f70657261746f7220616c6c6f77656420666f72207072652d65706f63,
                        mem[206 len 22]
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
                emit Updated((Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0], (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]);
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
            emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
        lastEpochTime += period
        currentEpoch++
        if period + lastEpochTime < lastEpochTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= period + lastEpochTime:
            # nil
        else:
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
            emit Updated((Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0], (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]);
        lastEpochTime += period
        currentEpoch++
        if period + lastEpochTime < lastEpochTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= period + lastEpochTime:
            # nil
        else:
}



}
