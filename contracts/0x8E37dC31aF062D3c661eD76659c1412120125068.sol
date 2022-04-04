contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint256 period;
uint256 startTime;
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    period = arg1
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
                    0x536f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function nextEpochPoint() payable {
    if not currentEpoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    require currentEpoch
    if currentEpoch * period / currentEpoch != period:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if startTime + (currentEpoch * period) < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (startTime + (currentEpoch * period))
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == token0Address:
        if not arg2:
            return 0
        require arg2
        if price0Average * arg2 / arg2 != price0Average:
            revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return (Mask(32, 112, price0Average * arg2) >> 112)
    if arg1 != token1Address:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not arg2:
        return 0
    require arg2
    if price1Average * arg2 / arg2 != price1Average:
        revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
    return (Mask(32, 112, price1Average * arg2) >> 112)
}

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg2, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
}

function update() payable {
    if not currentEpoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime:
            revert with 0, 'Epoch: not allowed'
    else:
        require currentEpoch
        if currentEpoch * period / currentEpoch != period:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if startTime + (currentEpoch * period) < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime + (currentEpoch * period):
            revert with 0, 'Epoch: not allowed'
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
    if currentEpoch + 1 < currentEpoch:
        revert with 0, 'SafeMath: addition overflow'
    currentEpoch++
}



}
