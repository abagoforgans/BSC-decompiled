contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint16 phaseId;
address aggregatorAddress; offset 16
address proposedAggregatorAddress;
mapping of address phaseAggregators;
address accessControllerAddress;

function aggregator() payable {
    return aggregatorAddress
}

function phaseId() payable {
    return phaseId
}

function owner() payable {
    return address(owner)
}

function accessController() payable {
    return accessControllerAddress
}

function phaseAggregators(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return phaseAggregators[arg1]
}

function proposedAggregator() payable {
    return proposedAggregatorAddress
}

function _fallback() payable {
    revert
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    accessControllerAddress = arg1
}

function proposeAggregator(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    proposedAggregatorAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor1 = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function acceptOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function version() payable {
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x54fd4d50 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decimals() payable {
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function confirmAggregator(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if proposedAggregatorAddress != arg1:
        revert with 0, 'Invalid proposed aggregator'
    proposedAggregatorAddress = 0
    phaseId = uint16(phaseId + 1)
    aggregatorAddress = arg1
    phaseAggregators[stor2 + 1 << 240] = arg1
}

function latestAnswer() payable {
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x50d25bcd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function latestTimestamp() payable {
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x8205bf6a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function latestRound() payable {
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x668a0f02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (phaseId or ext_call.return_data[24 len 8])
}

function getAnswer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    if arg1 > test266151307():
        return 0
    if not phaseAggregators[arg1 << 240]:
        return 0
    require ext_code.size(phaseAggregators[arg1 << 240])
    staticcall phaseAggregators[arg1 << 240].0xb5ab58dc with:
            gas gas_remaining wei
           args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    if arg1 > test266151307():
        return 0
    if not phaseAggregators[arg1 << 240]:
        return 0
    require ext_code.size(phaseAggregators[arg1 << 240])
    staticcall phaseAggregators[arg1 << 240].0xb633620c with:
            gas gas_remaining wei
           args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function latestRoundData() payable {
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return phaseId or ext_call.return_data[24 len 8], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           0,
           phaseId,
           uint64(ext_call.return_data[128])
}

function proposedLatestRoundData() payable {
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    if not proposedAggregatorAddress:
        revert with 0, 'No proposed aggregator present'
    require ext_code.size(proposedAggregatorAddress)
    staticcall proposedAggregatorAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128] << 176
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    require ext_code.size(phaseAggregators[arg1 << 240])
    staticcall phaseAggregators[arg1 << 240].0x9a6fc8f5 with:
            gas gas_remaining wei
           args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return Mask(16, 64, arg1) or ext_call.return_data[24 len 8], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           0,
           uint16(arg1),
           uint64(ext_call.return_data[128])
}

function proposedGetRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    if accessControllerAddress:
        require ext_code.size(accessControllerAddress)
        staticcall accessControllerAddress.hasAccess(address rg1, bytes rg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, calldata.size, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'No access'
    if not proposedAggregatorAddress:
        revert with 0, 'No proposed aggregator present'
    require ext_code.size(proposedAggregatorAddress)
    staticcall proposedAggregatorAddress.0x9a6fc8f5 with:
            gas gas_remaining wei
           args Mask(80, 0, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128] << 176
}

function description() payable {
    mem[96] = 0x7284e41600000000000000000000000000000000000000000000000000000000
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.0x7284e416 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}



}
