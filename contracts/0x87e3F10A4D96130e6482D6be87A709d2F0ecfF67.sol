contract main {




// =====================  Runtime code  =====================


const sub_886d24a9(?) = 0x1092e4f72a9d7a28418351d029e273906af24797

const factory = 0xbcfccbde45ce874adcb698cc183debcf17952812

const periodSize = 1800


address governanceAddress;
address pendingGovernanceAddress;
array of struct stor2;
mapping of uint8 stor3;
array of struct pairObservations;
mapping of uint256 lastUpdated;
mapping of struct lastObservation;

function lastUpdated(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUpdated[arg1]
}

function lastObservation(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastObservation[arg1].field_0, 
           lastObservation[arg1].field_256,
           lastObservation[arg1].field_512,
           lastObservation[arg1].field_768
}

function governance() payable {
    return governanceAddress
}

function pairObservations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < pairObservations[arg1].field_0
    return pairObservations[arg1][arg2].field_0, 
           pairObservations[arg1][arg2].field_256,
           pairObservations[arg1][arg2].field_512,
           pairObservations[arg1][arg2].field_768
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function workable(address arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp - lastUpdated[address(arg1)] > 1800)
}

function acceptGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0, 'acceptGovernance: !pendingGov'
    governanceAddress = pendingGovernanceAddress
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'setGovernance: !gov'
    pendingGovernanceAddress = arg1
}

function workable() payable {
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 5
        if block.timestamp - lastUpdated[stor2[idx].field_0] <= 1800:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function pairs() payable {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function updatePair(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    call 0x1092e4f72a9d7a28418351d029e273906af24797.isKeeper(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x733a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    mem[200 len 28]
    if block.timestamp - lastUpdated[address(arg1)] <= 1800:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        lastObservation[address(arg1)].field_0 = block.timestamp
        lastObservation[address(arg1)].field_256 = ext_call.return_data[0]
        lastObservation[address(arg1)].field_512 = ext_call.return_data[0]
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        lastObservation[address(arg1)].field_0 = block.timestamp
        lastObservation[address(arg1)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[address(arg1)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
    lastObservation[address(arg1)].field_768 = block.timestamp - lastUpdated[address(arg1)]
    pairObservations[address(arg1)].field_0++
    pairObservations[address(arg1)][pairObservations[address(arg1)].field_0].field_0 = lastObservation[address(arg1)].field_0
    pairObservations[address(arg1)][pairObservations[address(arg1)].field_0].field_256 = lastObservation[address(arg1)].field_256
    pairObservations[address(arg1)][pairObservations[address(arg1)].field_0].field_512 = lastObservation[address(arg1)].field_512
    pairObservations[address(arg1)][pairObservations[address(arg1)].field_0].field_768 = lastObservation[address(arg1)].field_768
    lastUpdated[address(arg1)] = block.timestamp
    return 1
}

function updateFor(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    call 0x1092e4f72a9d7a28418351d029e273906af24797.isKeeper(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x733a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    mem[200 len 28]
    s = 0
    idx = arg1
    while idx < arg2:
        require idx < stor2.length
        mem[0] = stor2[idx].field_0
        mem[32] = 5
        if block.timestamp - lastUpdated[stor2[idx].field_0] <= 1800:
            s = s
            idx = idx + 1
            continue 
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == uint32(ext_call.return_data[64]):
            _71 = mem[64]
            mem[64] = mem[64] + 128
            mem[_71] = block.timestamp
            mem[_71 + 32] = ext_call.return_data[0]
            mem[_71 + 64] = ext_call.return_data[0]
            mem[_71 + 96] = block.timestamp - lastUpdated[stor2[idx].field_0]
            lastObservation[stor2[idx].field_0].field_0 = block.timestamp
            lastObservation[stor2[idx].field_0].field_256 = ext_call.return_data[0]
            lastObservation[stor2[idx].field_0].field_512 = ext_call.return_data[0]
        else:
            _80 = mem[64]
            mem[64] = mem[64] + 32
            mem[_80] = 0
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            _81 = mem[64]
            mem[64] = mem[64] + 32
            require Mask(112, 0, ext_call.return_data[0])
            mem[_81] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
            _85 = mem[64]
            mem[64] = mem[64] + 32
            mem[_85] = 0
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            _86 = mem[64]
            mem[64] = mem[64] + 32
            require Mask(112, 0, ext_call.return_data[32])
            mem[_86] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
            _90 = mem[64]
            mem[64] = mem[64] + 128
            mem[_90] = block.timestamp
            mem[_90 + 32] = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            mem[_90 + 64] = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            mem[_90 + 96] = block.timestamp - lastUpdated[stor2[idx].field_0]
            lastObservation[stor2[idx].field_0].field_0 = block.timestamp
            lastObservation[stor2[idx].field_0].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[stor2[idx].field_0].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[stor2[idx].field_0].field_768 = block.timestamp - lastUpdated[stor2[idx].field_0]
        pairObservations[stor2[idx].field_0].field_0++
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_0 = lastObservation[stor2[idx].field_0].field_0
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_256 = lastObservation[stor2[idx].field_0].field_256
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_512 = lastObservation[stor2[idx].field_0].field_512
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_768 = lastObservation[stor2[idx].field_0].field_768
        mem[0] = stor2[idx].field_0
        mem[32] = 5
        lastUpdated[stor2[idx].field_0] = block.timestamp
        s = 1
        idx = idx + 1
        continue 
    return bool(s)
}

function work() payable {
    mem[64] = 96
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    call 0x1092e4f72a9d7a28418351d029e273906af24797.isKeeper(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x733a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    mem[200 len 28]
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 5
        if block.timestamp - lastUpdated[stor2[idx].field_0] <= 1800:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == uint32(ext_call.return_data[64]):
            _73 = mem[64]
            mem[64] = mem[64] + 128
            mem[_73] = block.timestamp
            mem[_73 + 32] = ext_call.return_data[0]
            mem[_73 + 64] = ext_call.return_data[0]
            mem[_73 + 96] = block.timestamp - lastUpdated[stor2[idx].field_0]
            lastObservation[stor2[idx].field_0].field_0 = block.timestamp
            lastObservation[stor2[idx].field_0].field_256 = ext_call.return_data[0]
            lastObservation[stor2[idx].field_0].field_512 = ext_call.return_data[0]
        else:
            _82 = mem[64]
            mem[64] = mem[64] + 32
            mem[_82] = 0
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            _83 = mem[64]
            mem[64] = mem[64] + 32
            require Mask(112, 0, ext_call.return_data[0])
            mem[_83] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
            _87 = mem[64]
            mem[64] = mem[64] + 32
            mem[_87] = 0
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            _88 = mem[64]
            mem[64] = mem[64] + 32
            require Mask(112, 0, ext_call.return_data[32])
            mem[_88] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
            _92 = mem[64]
            mem[64] = mem[64] + 128
            mem[_92] = block.timestamp
            mem[_92 + 32] = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            mem[_92 + 64] = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            mem[_92 + 96] = block.timestamp - lastUpdated[stor2[idx].field_0]
            lastObservation[stor2[idx].field_0].field_0 = block.timestamp
            lastObservation[stor2[idx].field_0].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[stor2[idx].field_0].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[stor2[idx].field_0].field_768 = block.timestamp - lastUpdated[stor2[idx].field_0]
        pairObservations[stor2[idx].field_0].field_0++
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_0 = lastObservation[stor2[idx].field_0].field_0
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_256 = lastObservation[stor2[idx].field_0].field_256
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_512 = lastObservation[stor2[idx].field_0].field_512
        pairObservations[stor2[idx].field_0][pairObservations[stor2[idx].field_0].field_0].field_768 = lastObservation[stor2[idx].field_0].field_768
        mem[0] = stor2[idx].field_0
        mem[32] = 5
        lastUpdated[stor2[idx].field_0] = block.timestamp
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'PancakeSlidingOracle: !work'
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    call 0x1092e4f72a9d7a28418351d029e273906af24797.worked(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function add(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'PancakeSlidingOracle::add: !gov'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if stor3[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]:
            revert with 0, 'known'
        stor3[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = 1
        stor2.length++
        stor2[stor2.length].field_0 = address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768 = 0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0++
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_0 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_256 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_512 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_768 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768
        lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = block.timestamp
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if stor3[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]:
            revert with 0, 'known'
        stor3[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = 1
        stor2.length++
        stor2[stor2.length].field_0 = address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768 = 0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0++
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_0 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_256 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_512 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_768 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768
        lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = block.timestamp
}

function update(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    call 0x1092e4f72a9d7a28418351d029e273906af24797.isKeeper(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x733a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    mem[200 len 28]
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] <= 1800:
            return 0
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768 = block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0++
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_0 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_256 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_512 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_768 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768
        lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = block.timestamp
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] <= 1800:
            return 0
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 = block.timestamp
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768 = block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0++
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_0 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_256 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_512 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512
        pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0].field_768 = lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_768
        lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = block.timestamp
    return 1
}

function quote(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg3:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
        mem[221] = sha3(arg1, arg3)
        mem[253] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
        mem[168] = 85
        if 1800 * arg4 / 1800 != arg4:
            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] > 1800 * arg4:
            revert with 0, 32, 41, 0x7750616e63616b65536c6964696e674f7261636c653a3a71756f74653a207374616c65207072696365, mem[394 len 23]
        if arg1 == arg3:
            revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
        if arg1 < arg3:
            if not arg1:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            mem[64] = 349
            mem[285] = 31
            mem[317] = 'SafeMath: subtraction underflow'
            if arg4 > pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                revert with 0, 'SafeMath: subtraction underflow'
            if arg1 != arg1:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _301 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_301] = 0
                    _321 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_321] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _387 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_387] = 0
                    if not arg2:
                        _407 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_407] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _416 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_416] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
            else:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _512 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_512] = 0
                    _521 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_521] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _556 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_556] = 0
                    if not arg2:
                        _567 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_567] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _572 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_572] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
        else:
            if not arg3:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            mem[64] = 349
            mem[285] = 31
            mem[317] = 'SafeMath: subtraction underflow'
            if arg4 > pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                revert with 0, 'SafeMath: subtraction underflow'
            if arg3 != arg1:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _306 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_306] = 0
                    _327 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_327] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _390 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_390] = 0
                    if not arg2:
                        _409 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_409] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _424 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_424] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
            else:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _514 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_514] = 0
                    _524 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_524] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _558 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_558] = 0
                    if not arg2:
                        _568 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_568] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _576 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_576] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
    else:
        if not arg3:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
        mem[221] = sha3(arg3, arg1)
        mem[253] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
        mem[168] = 85
        if 1800 * arg4 / 1800 != arg4:
            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] > 1800 * arg4:
            revert with 0, 32, 41, 0x7750616e63616b65536c6964696e674f7261636c653a3a71756f74653a207374616c65207072696365, mem[394 len 23]
        if arg1 == arg3:
            revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
        if arg1 < arg3:
            if not arg1:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            mem[64] = 349
            mem[285] = 31
            mem[317] = 'SafeMath: subtraction underflow'
            if arg4 > pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                revert with 0, 'SafeMath: subtraction underflow'
            if arg1 != arg1:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _311 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_311] = 0
                    _333 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_333] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _393 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_393] = 0
                    if not arg2:
                        _411 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_411] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _432 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_432] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
            else:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _516 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_516] = 0
                    _527 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_527] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _560 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_560] = 0
                    if not arg2:
                        _569 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_569] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _580 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_580] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
        else:
            if not arg3:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            mem[64] = 349
            mem[285] = 31
            mem[317] = 'SafeMath: subtraction underflow'
            if arg4 > pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                revert with 0, 'SafeMath: subtraction underflow'
            if arg3 != arg1:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _316 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_316] = 0
                    _339 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_339] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _396 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_396] = 0
                    if not arg2:
                        _413 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_413] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _440 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_440] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_512 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_512 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
            else:
                s = 0
                idx = pairObservations[address(sha3(mem[200 len 85]))].field_0 + -arg4 - 1
                s = 0
                while idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0 - 1:
                    require idx < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[32] = 4
                    require idx + 1 < pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                    mem[0] = sha3(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), 4)
                    _518 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_518] = 0
                    _530 = mem[64]
                    mem[64] = mem[64] + 32
                    require pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768
                    mem[_530] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768)
                    _562 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_562] = 0
                    if not arg2:
                        _570 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_570] = 0
                        s = idx + 1
                        idx = idx + 1
                        s = s
                        continue 
                    require arg2
                    if Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2 / arg2 != Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[mem[64] + 103 len 29]
                    _584 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_584] = Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2
                    s = idx + 1
                    idx = idx + 1
                    s = s + (Mask(32, 112, Mask(224, 0, pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_256 - pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx].field_256 / pairObservations[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))][idx + 1].field_768) * arg2) >> 112)
                    continue 
    if not arg4:
        revert with 0, 'SafeMath: division by zero'
    return (s / arg4)
}

function current(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg3:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] > 3600:
            revert with 0, 32, 41, 0x7750616e63616b65536c6964696e674f7261636c653a3a71756f74653a207374616c65207072696365, mem[394 len 23]
        if arg1 == arg3:
            revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
        if arg1 < arg3:
            if not arg1:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
                if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                    if not arg2:
                        return 0
                    require arg2
                    if arg1 != arg1:
                        if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
                require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                if not arg2:
                    return 0
                require arg2
                if arg1 != arg1:
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                if not arg2:
                    return 0
                require arg2
                if arg1 != arg1:
                    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                    return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
            if arg1 != arg1:
                require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                if not arg2:
                    return 0
                require arg2
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
        else:
            if not arg3:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
            staticcall address(sha3(0, 13617983528775878474, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
                if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                    if not arg2:
                        return 0
                    require arg2
                    if arg3 != arg1:
                        if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
                require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                if not arg2:
                    return 0
                require arg2
                if arg3 != arg1:
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                if not arg2:
                    return 0
                require arg2
                if arg3 != arg1:
                    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                    return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
            if arg3 != arg1:
                require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
                if not arg2:
                    return 0
                require arg2
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
        require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
        if not arg2:
            return 0
        require arg2
        if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
            revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
        return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
    if not arg3:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    if block.timestamp - lastUpdated[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] > 3600:
        revert with 0, 32, 41, 0x7750616e63616b65536c6964696e674f7261636c653a3a71756f74653a207374616c65207072696365, mem[394 len 23]
    if arg1 == arg3:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 < arg3:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                if not arg2:
                    return 0
                require arg2
                if arg1 != arg1:
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
            require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
            if not arg2:
                return 0
            require arg2
            if arg1 != arg1:
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
            if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
            return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
            if not arg2:
                return 0
            require arg2
            if arg1 != arg1:
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
            if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
            return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
        if arg1 != arg1:
            require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
            if not arg2:
                return 0
            require arg2
            if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
            return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
    else:
        if not arg3:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, 13617983528775878474, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
                if not arg2:
                    return 0
                require arg2
                if arg3 != arg1:
                    if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
            require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
            if not arg2:
                return 0
            require arg2
            if arg3 != arg1:
                if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
                return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
            if Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[484 len 29]
            return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if not block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0:
            if not arg2:
                return 0
            require arg2
            if arg3 != arg1:
                if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512):
                    revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
                return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512) * arg2) >> 112)
            if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
            return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256) * arg2) >> 112)
        if arg3 != arg1:
            require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
            if not arg2:
                return 0
            require arg2
            if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
                revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
            return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_512 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
    require block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0
    if not arg2:
        return 0
    require arg2
    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2 / arg2 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0):
        revert with 0, 32, 35, 0x644669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[612 len 29]
    return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_256 / block.timestamp - lastObservation[address(sha3(0, 13617983528775878474, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].field_0) * arg2) >> 112)
}



}
