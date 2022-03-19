contract main {




// =====================  Runtime code  =====================


#
#  - sub_7a846457(?)
#  - sub_a2754996(?)
#
array of struct stor1;
address stor2;
mapping of struct stor99;

function _fallback() payable {
    revert
}

function getBestPools(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return ''
}

function getBestPoolsWithLimit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return ''
}

function getPairInfo(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 < arg3:
        return Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_0), 
               Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_0),
               Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_160)
    return Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_0), 
           Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_0),
           Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_160)
}

function getPoolsWithLimit(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 < arg2:
        if arg4 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3:
            mem[96] = arg4
            if arg4:
                mem[128 len 32 * arg4] = code.data[8483 len 32 * arg4]
            idx = 0
            while idx < mem[96]:
                mem[32] = 0
                require idx + arg3 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                mem[0] = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + idx + arg3].field_0)
                idx = idx + 1
                continue 
            mem[(32 * arg4) + 128] = 32
            mem[(32 * arg4) + 160] = mem[96]
            mem[(32 * arg4) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            return 32, mem[(32 * arg4) + 160 len (32 * mem[96]) + 32]
        mem[96] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3
        if uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3:
            mem[128 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3]
        idx = 0
        while idx < mem[96]:
            mem[32] = 0
            require idx + arg3 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
            mem[0] = sha3(arg1 << 128 or uint128(arg2), 0) + 1
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + idx + arg3].field_0)
            idx = idx + 1
            continue 
        mem[(32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3) + 128] = 32
        mem[(32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3) + 160] = mem[96]
        mem[(32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return 32, mem[(32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - arg3) + 160 len (32 * mem[96]) + 32]
    if arg4 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3:
        mem[96] = arg4
        if arg4:
            mem[128 len 32 * arg4] = code.data[8483 len 32 * arg4]
        idx = 0
        while idx < mem[96]:
            mem[32] = 0
            require idx + arg3 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
            mem[0] = sha3(arg2 << 128 or uint128(arg1), 0) + 1
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + idx + arg3].field_0)
            idx = idx + 1
            continue 
        mem[(32 * arg4) + 128] = 32
        mem[(32 * arg4) + 160] = mem[96]
        mem[(32 * arg4) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return 32, mem[(32 * arg4) + 160 len (32 * mem[96]) + 32]
    mem[96] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3
    if uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3:
        mem[128 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3]
    idx = 0
    while idx < mem[96]:
        mem[32] = 0
        require idx + arg3 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
        mem[0] = sha3(arg2 << 128 or uint128(arg1), 0) + 1
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + idx + arg3].field_0)
        idx = idx + 1
        continue 
    mem[(32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3) + 128] = 32
    mem[(32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3) + 160] = mem[96]
    mem[(32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - arg3) + 160 len (32 * mem[96]) + 32]
}

function addPoolPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor2)
    staticcall stor2.0xc2bb6dc2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_NOT_BPOOL'
    require ext_code.size(arg1)
    staticcall arg1.getSwapFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 3 * 10^16:
        revert with 0, 'ERR_FEE_TOO_HIGH'
    if arg2 < arg3:
        if not uint256(stor0[arg2 << 128 or uint128(arg3)][address(arg1)].field_0):
            uint256(stor0[arg2 << 128 or uint128(arg3)].field_256)++
            address(stor[uint256(stor0[arg2 << 128 or uint128(arg3)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg3'))), ('name', 'stor0', 0)))].field_0) = arg1
            uint256(stor0[arg2 << 128 or uint128(arg3)][address(arg1)].field_0) = uint256(stor0[arg2 << 128 or uint128(arg3)].field_256) + 1
        require ext_code.size(arg1)
        if arg2 >= arg3:
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg2
        else:
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_0) = Mask(80, 0, ext_call.return_data[22 len 10])
        Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_80) = Mask(80, 0, ext_call.return_data[22 len 10])
        Mask(80, 0, stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_160) = Mask(80, 0, ext_call.return_data[0])
        uint256(stor1[address(arg1)][arg2 << 128 or uint128(arg3)].field_256) = 0
    else:
        if not uint256(stor0[arg3 << 128 or uint128(arg2)][address(arg1)].field_0):
            uint256(stor0[arg3 << 128 or uint128(arg2)].field_256)++
            address(stor[uint256(stor0[arg3 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = arg1
            uint256(stor0[arg3 << 128 or uint128(arg2)][address(arg1)].field_0) = uint256(stor0[arg3 << 128 or uint128(arg2)].field_256) + 1
        require ext_code.size(arg1)
        if arg2 >= arg3:
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg2
        else:
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_0) = Mask(80, 0, ext_call.return_data[22 len 10])
        Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_80) = Mask(80, 0, ext_call.return_data[22 len 10])
        Mask(80, 0, stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_160) = Mask(80, 0, ext_call.return_data[0])
        uint256(stor1[address(arg1)][arg3 << 128 or uint128(arg2)].field_256) = 0
    emit PoolTokenPairAdded(arg1, arg2, arg3);
    return 1
}

function sub_88376fbe(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(stor2)
            staticcall stor2.0xc2bb6dc2 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_NOT_BPOOL'
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 3 * 10^16:
                revert with 0, 'ERR_FEE_TOO_HIGH'
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[36]) < address(cd[68]):
                mem[32] = sha3(cd[36] << 128 or uint128(cd[68]), 0)
                if uint256(stor0[cd[36] << 128 or uint128(cd[68])][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    if address(cd[36]) >= address(cd[68]):
                        _390 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_390] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_390 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_390 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_390 + 96] = 0
                    else:
                        _393 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_393] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_393 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_393 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_393 + 96] = 0
                else:
                    uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256)++
                    address(stor[uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('cd', 36)), ('mask_shl', 128, 0, 0, ('cd', 68))), ('name', 'stor0', 0)))].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(cd[36] << 128 or uint128(cd[68]), 0)
                    uint256(stor0[cd[36] << 128 or uint128(cd[68])][address(cd[((32 * idx) + cd[4] + 36)])].field_0) = uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256) + 1
                    if address(cd[36]) >= address(cd[68]):
                        _396 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_396] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_396 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_396 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_396 + 96] = 0
                    else:
                        _399 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_399] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_399 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_399 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_399 + 96] = 0
                mem[0] = cd[36] << 128 or uint128(cd[68])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_0) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_80) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_160) = Mask(80, 0, ext_call.return_data[0])
                uint256(stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_256) = 0
            else:
                mem[32] = sha3(cd[68] << 128 or uint128(cd[36]), 0)
                if uint256(stor0[cd[68] << 128 or uint128(cd[36])][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    if address(cd[36]) >= address(cd[68]):
                        _402 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_402] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_402 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_402 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_402 + 96] = 0
                    else:
                        _405 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_405] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_405 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_405 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_405 + 96] = 0
                else:
                    uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256)++
                    address(stor[uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('cd', 68)), ('mask_shl', 128, 0, 0, ('cd', 36))), ('name', 'stor0', 0)))].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(cd[68] << 128 or uint128(cd[36]), 0)
                    uint256(stor0[cd[68] << 128 or uint128(cd[36])][address(cd[((32 * idx) + cd[4] + 36)])].field_0) = uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256) + 1
                    if address(cd[36]) >= address(cd[68]):
                        _408 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_408] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_408 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_408 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_408 + 96] = 0
                    else:
                        _411 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_411] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_411 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_411 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_411 + 96] = 0
                mem[0] = cd[68] << 128 or uint128(cd[36])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_0) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_80) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_160) = Mask(80, 0, ext_call.return_data[0])
                uint256(stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_256) = 0
            emit PoolTokenPairAdded(address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36]), address(cd[68]));
            require idx < mem[96]
            mem[(32 * idx) + 128] = 1
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[8483 len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(stor2)
            staticcall stor2.0xc2bb6dc2 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_NOT_BPOOL'
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 3 * 10^16:
                revert with 0, 'ERR_FEE_TOO_HIGH'
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[36]) < address(cd[68]):
                mem[32] = sha3(cd[36] << 128 or uint128(cd[68]), 0)
                if uint256(stor0[cd[36] << 128 or uint128(cd[68])][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    if address(cd[36]) >= address(cd[68]):
                        _414 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_414] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_414 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_414 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_414 + 96] = 0
                    else:
                        _417 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_417] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_417 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_417 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_417 + 96] = 0
                else:
                    uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256)++
                    address(stor[uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('cd', 36)), ('mask_shl', 128, 0, 0, ('cd', 68))), ('name', 'stor0', 0)))].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(cd[36] << 128 or uint128(cd[68]), 0)
                    uint256(stor0[cd[36] << 128 or uint128(cd[68])][address(cd[((32 * idx) + cd[4] + 36)])].field_0) = uint256(stor0[cd[36] << 128 or uint128(cd[68])].field_256) + 1
                    if address(cd[36]) >= address(cd[68]):
                        _420 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_420] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_420 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_420 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_420 + 96] = 0
                    else:
                        _423 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_423] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_423 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_423 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_423 + 96] = 0
                mem[0] = cd[36] << 128 or uint128(cd[68])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_0) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_80) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_160) = Mask(80, 0, ext_call.return_data[0])
                uint256(stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[36] << 128 or uint128(cd[68])].field_256) = 0
            else:
                mem[32] = sha3(cd[68] << 128 or uint128(cd[36]), 0)
                if uint256(stor0[cd[68] << 128 or uint128(cd[36])][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    if address(cd[36]) >= address(cd[68]):
                        _426 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_426] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_426 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_426 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_426 + 96] = 0
                    else:
                        _429 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_429] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_429 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_429 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_429 + 96] = 0
                else:
                    uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256)++
                    address(stor[uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('cd', 68)), ('mask_shl', 128, 0, 0, ('cd', 36))), ('name', 'stor0', 0)))].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(cd[68] << 128 or uint128(cd[36]), 0)
                    uint256(stor0[cd[68] << 128 or uint128(cd[36])][address(cd[((32 * idx) + cd[4] + 36)])].field_0) = uint256(stor0[cd[68] << 128 or uint128(cd[36])].field_256) + 1
                    if address(cd[36]) >= address(cd[68]):
                        _432 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_432] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_432 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_432 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_432 + 96] = 0
                    else:
                        _435 = mem[64]
                        mem[64] = mem[64] + 128
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_435] = Mask(80, 0, ext_call.return_data[0])
                        mem[mem[64] + 4] = address(cd[68])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getDenormalizedWeight(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[68])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_435 + 32] = Mask(80, 0, ext_call.return_data[0])
                        mem[_435 + 64] = Mask(80, 0, ext_call.return_data[0])
                        mem[_435 + 96] = 0
                mem[0] = cd[68] << 128 or uint128(cd[36])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_0) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_80) = Mask(80, 0, ext_call.return_data[0])
                Mask(80, 0, stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_160) = Mask(80, 0, ext_call.return_data[0])
                uint256(stor1[address(cd[((32 * idx) + cd[4] + 36)])][cd[68] << 128 or uint128(cd[36])].field_256) = 0
            emit PoolTokenPairAdded(address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36]), address(cd[68]));
            require idx < mem[96]
            mem[(32 * idx) + 128] = 1
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_2013c706(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if arg1 < arg2:
        idx = 0
        s = 0
        while idx < arg3.length:
            _436 = mem[64]
            mem[64] = mem[64] + 128
            mem[_436] = 0
            mem[_436 + 32] = 0
            mem[_436 + 64] = 0
            mem[_436 + 96] = 0
            require idx < mem[96]
            _441 = sha3(mem[(32 * idx) + 140 len 20], 1)
            mem[0] = arg1 << 128 or uint128(arg2)
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 1)
            _443 = mem[64]
            mem[64] = mem[64] + 128
            mem[_443] = Mask(80, 0, stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_0)
            mem[_443 + 32] = Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80)
            mem[_443 + 64] = Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_160)
            mem[_443 + 96] = uint256(stor1[('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('var', '_441'))].field_0)
            if Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) < Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                revert with 0, 'ERR_DIV_ZERO'
            if arg1 >= arg2:
                if not Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80):
                    if (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    _580 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_580))
                    staticcall address(_580).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                else:
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80)
                    if 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    _646 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_646))
                    staticcall address(_646).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
            else:
                if not Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                    if (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    _584 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_584))
                    staticcall address(_584).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                else:
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    if 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = (10^18 * Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)) + (Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0) / 2) / Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_80) + Mask(80, 0, stor[_441][arg1 << 128 or uint128(arg2)].field_0)
                    require idx < mem[96]
                    _650 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_650))
                    staticcall address(_650).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if not uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256):
                require idx < mem[96]
                uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = 0
            else:
                if ext_call.return_data[0] * uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) / uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[96]
                uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) = ext_call.return_data[0] * uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256)
            require idx < mem[96]
            mem[0] = arg1 << 128 or uint128(arg2)
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 1)
            if uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = uint256(stor1[mem[(32 * idx) + 140 len 20]][arg1 << 128 or uint128(arg2)].field_256) + s
            continue 
        if not s:
            if (10^17 * s) + 5 * 10^17 < 10^17 * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if var45002 >= var45001:
                _1336 = mem[64]
                mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var42002 >= var42001:
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1336]
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1336])] = mem[_1336 + 32 len floor32(mem[_1336])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1336]) + _1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var44001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var46001 + sha3(var46002)].field_0), 1)
                    require var46005 < mem[_1336]
                    mem[(32 * var48001) + _1336 + 32] = var48003
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var54002 >= var54001:
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1336]
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1336])] = mem[_1336 + 32 len floor32(mem[_1336])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1336]) + _1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var56001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var58001 + sha3(var58002)].field_0), 1)
                    require var58005 < mem[_1336]
                    # nil
                else:
                    mem[_1336 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var43002 >= var43001:
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1336]
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1336])] = mem[_1336 + 32 len floor32(mem[_1336])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1336]) + _1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var45001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var47001 + sha3(var47002)].field_0), 1)
                    require var47005 < mem[_1336]
                    mem[(32 * idx) + _1336 + 32] = s
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var55002 >= var55001:
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1336]
                        mem[_1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1336])] = mem[_1336 + 32 len floor32(mem[_1336])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1336]) + _1336 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var57001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var59001 + sha3(var59002)].field_0), 1)
                    require var59005 < mem[_1336]
                    # nil
            else:
                require var47001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                if uint256(stor1[address(stor[idx + sha3(var49002)].field_0)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                    idx = var49006
                    while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                        require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) < (10^17 * s) + 5 * 10^17 / 10^18:
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0):
                                if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) - 1 != uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1:
                                    require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    require uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)
                                    uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)].field_0) = uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0)
                                uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) = 0
                                require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                                uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                        mem[0] = arg1 << 128 or uint128(arg2)
                        mem[32] = 0
                        idx = idx + 1
                        continue 
                    _3244 = mem[64]
                    mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                    if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var51002 >= idx:
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3244]
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3244])] = mem[_3244 + 32 len floor32(mem[_3244])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3244]) + _3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var53001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var55001 + sha3(var55002)].field_0), 1)
                        require var55005 < mem[_3244]
                        mem[(32 * var57001) + _3244 + 32] = var57003
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var63002 >= var63001:
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3244]
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3244])] = mem[_3244 + 32 len floor32(mem[_3244])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3244]) + _3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var65001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                        require var67005 < mem[_3244]
                        # nil
                    else:
                        mem[_3244 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var52002 >= var52001:
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3244]
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3244])] = mem[_3244 + 32 len floor32(mem[_3244])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3244]) + _3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var54001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var56001 + sha3(var56002)].field_0), 1)
                        require var56005 < mem[_3244]
                        mem[(32 * var58001) + _3244 + 32] = var58003
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var64002 >= var64001:
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3244]
                            mem[_3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3244])] = mem[_3244 + 32 len floor32(mem[_3244])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3244]) + _3244 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var66001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                        require var68005 < mem[_3244]
                        # nil
                else:
                    require var51001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    if not uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0):
                        idx = var53004
                        while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                idx = idx + 1
                                continue 
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[0] = arg1 << 128 or uint128(arg2)
                            mem[32] = 0
                            var53001 = idx + 1
                            var53002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                            var53004 = idx + 1
                            continue 
                        _4646 = mem[64]
                        mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                        if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var61002 >= var61001:
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4646]
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4646])] = mem[_4646 + 32 len floor32(mem[_4646])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4646]) + _4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            require var63001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = sha3(address(stor[var65001 + sha3(var65002)].field_0), 1)
                            require var65005 < mem[_4646]
                            mem[(32 * var67001) + _4646 + 32] = var67003
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var73002 < var73001:
                                require var75001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                # nil
                            else:
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4646]
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4646])] = mem[_4646 + 32 len floor32(mem[_4646])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4646]) + _4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        else:
                            mem[_4646 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var62002 >= var62001:
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4646]
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4646])] = mem[_4646 + 32 len floor32(mem[_4646])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4646]) + _4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            require var64001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = sha3(address(stor[var66001 + sha3(var66002)].field_0), 1)
                            require var66005 < mem[_4646]
                            mem[(32 * var68001) + _4646 + 32] = var68003
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var74002 < var74001:
                                require var76001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                # nil
                            else:
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4646]
                                mem[_4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4646])] = mem[_4646 + 32 len floor32(mem[_4646])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4646]) + _4646 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    else:
                        if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) - 1 == uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1:
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) = 0
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                            idx = var53004
                            while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg1 << 128 or uint128(arg2)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                var53001 = idx + 1
                                var53002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                                var53004 = idx + 1
                                continue 
                            _4648 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                            if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var63002 >= var63001:
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4648]
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4648])] = mem[_4648 + 32 len floor32(mem[_4648])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4648]) + _4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var65001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                                require var67005 < mem[_4648]
                                mem[(32 * var69001) + _4648 + 32] = var69003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var75002 < var75001:
                                    require var77001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4648]
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4648])] = mem[_4648 + 32 len floor32(mem[_4648])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4648]) + _4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4648 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var64002 >= var64001:
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4648]
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4648])] = mem[_4648 + 32 len floor32(mem[_4648])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4648]) + _4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var66001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                                require var68005 < mem[_4648]
                                mem[(32 * var70001) + _4648 + 32] = var70003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var76002 < var76001:
                                    require var78001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4648]
                                    mem[_4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4648])] = mem[_4648 + 32 len floor32(mem[_4648])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4648]) + _4648 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        else:
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            require uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)].field_0) = uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0)
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) = 0
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                            idx = var53004
                            while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg1 << 128 or uint128(arg2)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                idx = idx + 1
                                var53002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                                var53004 = idx + 1
                                continue 
                            _4650 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                            if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var66002 >= var66001:
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4650]
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4650])] = mem[_4650 + 32 len floor32(mem[_4650])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4650]) + _4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var68001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                                require var70005 < mem[_4650]
                                mem[(32 * var72001) + _4650 + 32] = var72003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var78002 < var78001:
                                    require var80001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4650]
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4650])] = mem[_4650 + 32 len floor32(mem[_4650])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4650]) + _4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4650 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var67002 >= var67001:
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4650]
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4650])] = mem[_4650 + 32 len floor32(mem[_4650])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4650]) + _4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var69001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var71001 + sha3(var71002)].field_0), 1)
                                require var71005 < mem[_4650]
                                mem[(32 * var73001) + _4650 + 32] = var73003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var79002 < var79001:
                                    require var81001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4650]
                                    mem[_4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4650])] = mem[_4650 + 32 len floor32(mem[_4650])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4650]) + _4650 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
        else:
            require s
            if 10^17 * s / s != 10^17:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if (10^17 * s) + 5 * 10^17 < 10^17 * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if var47002 >= var47001:
                _1338 = mem[64]
                mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var44002 >= var44001:
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1338]
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1338])] = mem[_1338 + 32 len floor32(mem[_1338])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1338]) + _1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var46001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var48001 + sha3(var48002)].field_0), 1)
                    require var48005 < mem[_1338]
                    mem[(32 * var50001) + _1338 + 32] = var50003
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var56002 >= var56001:
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1338]
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1338])] = mem[_1338 + 32 len floor32(mem[_1338])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1338]) + _1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var58001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var60001 + sha3(var60002)].field_0), 1)
                    require var60005 < mem[_1338]
                    # nil
                else:
                    mem[_1338 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var45002 >= var45001:
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1338]
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1338])] = mem[_1338 + 32 len floor32(mem[_1338])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1338]) + _1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var47001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[idx + sha3(var49002)].field_0), 1)
                    require var49005 < mem[_1338]
                    mem[(32 * var51001) + _1338 + 32] = var51003
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = 0
                    if var57002 >= var57001:
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_1338]
                        mem[_1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_1338])] = mem[_1338 + 32 len floor32(mem[_1338])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1338]) + _1338 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    require var59001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[16 len 16] = uint128(arg2)
                    mem[0 len 16] = uint128(arg1)
                    mem[32] = sha3(address(stor[var61001 + sha3(var61002)].field_0), 1)
                    require var61005 < mem[_1338]
                    # nil
            else:
                require idx < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                if uint256(stor1[address(stor[var51001 + sha3(var51002)].field_0)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                    idx = var51006
                    while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                        require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) < (10^17 * s) + 5 * 10^17 / 10^18:
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0):
                                if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) - 1 != uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1:
                                    require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    require uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)
                                    uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)].field_0) = uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0)
                                uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)].field_0) = 0
                                require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                                uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                        mem[0] = arg1 << 128 or uint128(arg2)
                        mem[32] = 0
                        idx = idx + 1
                        continue 
                    _3247 = mem[64]
                    mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                    if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var53002 >= idx:
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3247]
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3247])] = mem[_3247 + 32 len floor32(mem[_3247])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3247]) + _3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var55001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var57001 + sha3(var57002)].field_0), 1)
                        require var57005 < mem[_3247]
                        mem[(32 * var59001) + _3247 + 32] = var59003
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var65002 >= var65001:
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3247]
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3247])] = mem[_3247 + 32 len floor32(mem[_3247])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3247]) + _3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var67001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var69001 + sha3(var69002)].field_0), 1)
                        require var69005 < mem[_3247]
                        # nil
                    else:
                        mem[_3247 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var54002 >= var54001:
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3247]
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3247])] = mem[_3247 + 32 len floor32(mem[_3247])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3247]) + _3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var56001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var58001 + sha3(var58002)].field_0), 1)
                        require var58005 < mem[_3247]
                        mem[(32 * var60001) + _3247 + 32] = var60003
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = 0
                        if var66002 >= var66001:
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_3247]
                            mem[_3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_3247])] = mem[_3247 + 32 len floor32(mem[_3247])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3247]) + _3247 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        require var68001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[16 len 16] = uint128(arg2)
                        mem[0 len 16] = uint128(arg1)
                        mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                        require var70005 < mem[_3247]
                        # nil
                else:
                    require var53001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                    if not uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0):
                        idx = var55004
                        while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                idx = idx + 1
                                continue 
                            require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[0] = arg1 << 128 or uint128(arg2)
                            mem[32] = 0
                            var55001 = idx + 1
                            var55002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                            var55004 = idx + 1
                            continue 
                        _4666 = mem[64]
                        mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                        mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                        if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var63002 >= var63001:
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4666]
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4666])] = mem[_4666 + 32 len floor32(mem[_4666])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4666]) + _4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            require var65001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                            require var67005 < mem[_4666]
                            mem[(32 * var69001) + _4666 + 32] = var69003
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var75002 < var75001:
                                require var77001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                # nil
                            else:
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4666]
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4666])] = mem[_4666 + 32 len floor32(mem[_4666])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4666]) + _4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        else:
                            mem[_4666 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var64002 >= var64001:
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4666]
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4666])] = mem[_4666 + 32 len floor32(mem[_4666])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4666]) + _4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            require var66001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                            require var68005 < mem[_4666]
                            mem[(32 * var70001) + _4666 + 32] = var70003
                            mem[16 len 16] = uint128(arg2)
                            mem[0 len 16] = uint128(arg1)
                            mem[32] = 0
                            if var76002 < var76001:
                                require var78001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                # nil
                            else:
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4666]
                                mem[_4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4666])] = mem[_4666 + 32 len floor32(mem[_4666])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4666]) + _4666 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                    else:
                        if uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) - 1 == uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1:
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) = 0
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                            idx = var55004
                            while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg1 << 128 or uint128(arg2)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                var55001 = idx + 1
                                var55002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                                var55004 = idx + 1
                                continue 
                            _4668 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                            if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var65002 >= var65001:
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4668]
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4668])] = mem[_4668 + 32 len floor32(mem[_4668])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4668]) + _4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var67001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var69001 + sha3(var69002)].field_0), 1)
                                require var69005 < mem[_4668]
                                mem[(32 * var71001) + _4668 + 32] = var71003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var77002 < var77001:
                                    require var79001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4668]
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4668])] = mem[_4668 + 32 len floor32(mem[_4668])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4668]) + _4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4668 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var66002 >= var66001:
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4668]
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4668])] = mem[_4668 + 32 len floor32(mem[_4668])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4668]) + _4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var68001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                                require var70005 < mem[_4668]
                                mem[(32 * var72001) + _4668 + 32] = var72003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var78002 < var78001:
                                    require var80001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4668]
                                    mem[_4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4668])] = mem[_4668 + 32 len floor32(mem[_4668])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4668]) + _4668 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                        else:
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            require uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) - 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0))) + uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)].field_0)].field_0) = uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0)
                            uint256(stor0[arg1 << 128 or uint128(arg2)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) = 0
                            require uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            address(stor[uint256(stor0[arg1 << 128 or uint128(arg2)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('mask_shl', 128, 0, 0, ('param', 'arg2'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)--
                            idx = var55004
                            while idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                if uint256(stor1[address(stor0[arg1 << 128 or uint128(arg2)][idx + 1].field_256)][arg1 << 128 or uint128(arg2)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg1 << 128 or uint128(arg2)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[0] = arg1 << 128 or uint128(arg2)
                                mem[32] = 0
                                idx = idx + 1
                                var55002 = sha3(arg1 << 128 or uint128(arg2), 0) + 1
                                var55004 = idx + 1
                                continue 
                            _4670 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32
                            if not uint256(stor0[arg1 << 128 or uint128(arg2)].field_256):
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var68002 >= var68001:
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4670]
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4670])] = mem[_4670 + 32 len floor32(mem[_4670])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4670]) + _4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var70001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var72001 + sha3(var72002)].field_0), 1)
                                require var72005 < mem[_4670]
                                mem[(32 * var74001) + _4670 + 32] = var74003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var80002 < var80001:
                                    require var82001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4670]
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4670])] = mem[_4670 + 32 len floor32(mem[_4670])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4670]) + _4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4670 + 32 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)]
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var69002 >= var69001:
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4670]
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4670])] = mem[_4670 + 32 len floor32(mem[_4670])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4670]) + _4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
                                require var71001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = sha3(address(stor[var73001 + sha3(var73002)].field_0), 1)
                                require var73005 < mem[_4670]
                                mem[(32 * var75001) + _4670 + 32] = var75003
                                mem[16 len 16] = uint128(arg2)
                                mem[0 len 16] = uint128(arg1)
                                mem[32] = 0
                                if var81002 < var81001:
                                    require var83001 < uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)
                                    # nil
                                else:
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 32] = 32
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 64] = mem[_4670]
                                    mem[_4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + 96 len floor32(mem[_4670])] = mem[_4670 + 32 len floor32(mem[_4670])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4670]) + _4670 + (32 * uint256(stor0[arg1 << 128 or uint128(arg2)].field_256)) + -mem[64] + 96
    else:
        idx = 0
        s = 0
        while idx < arg3.length:
            _437 = mem[64]
            mem[64] = mem[64] + 128
            mem[_437] = 0
            mem[_437 + 32] = 0
            mem[_437 + 64] = 0
            mem[_437 + 96] = 0
            require idx < mem[96]
            _445 = sha3(mem[(32 * idx) + 140 len 20], 1)
            mem[0] = arg2 << 128 or uint128(arg1)
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 1)
            _447 = mem[64]
            mem[64] = mem[64] + 128
            mem[_447] = Mask(80, 0, stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_0)
            mem[_447 + 32] = Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80)
            mem[_447 + 64] = Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_160)
            mem[_447 + 96] = uint256(stor1[('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('var', '_445'))].field_0)
            if Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) < Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                revert with 0, 'ERR_DIV_ZERO'
            if arg1 >= arg2:
                if not Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80):
                    if (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    _592 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_592))
                    staticcall address(_592).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                else:
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80)
                    if 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    _665 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_665))
                    staticcall address(_665).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
            else:
                if not Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                    if (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    _596 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_596))
                    staticcall address(_596).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                else:
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    if 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) < 10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0):
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = (10^18 * Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)) + (Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0) / 2) / Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_80) + Mask(80, 0, stor[_445][arg2 << 128 or uint128(arg1)].field_0)
                    require idx < mem[96]
                    _669 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_669))
                    staticcall address(_669).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if not uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256):
                require idx < mem[96]
                uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = 0
            else:
                if ext_call.return_data[0] * uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) / uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[96]
                uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) = ext_call.return_data[0] * uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256)
            require idx < mem[96]
            mem[0] = arg2 << 128 or uint128(arg1)
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 1)
            if uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = uint256(stor1[mem[(32 * idx) + 140 len 20]][arg2 << 128 or uint128(arg1)].field_256) + s
            continue 
        if not s:
            if (10^17 * s) + 5 * 10^17 < 10^17 * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if var45002 >= var45001:
                _1340 = mem[64]
                mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var42002 >= var42001:
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1340]
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1340]) + _1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var44001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var46001 + sha3(var46002)].field_0), 1)
                    require var46005 < mem[_1340]
                    mem[(32 * var48001) + _1340 + 32] = var48003
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var54002 >= var54001:
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1340]
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1340]) + _1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var56001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var58001 + sha3(var58002)].field_0), 1)
                    require var58005 < mem[_1340]
                    # nil
                else:
                    mem[_1340 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var43002 >= var43001:
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1340]
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1340]) + _1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var45001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var47001 + sha3(var47002)].field_0), 1)
                    require var47005 < mem[_1340]
                    mem[(32 * idx) + _1340 + 32] = s
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var55002 >= var55001:
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1340]
                        mem[_1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1340]) + _1340 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var57001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var59001 + sha3(var59002)].field_0), 1)
                    require var59005 < mem[_1340]
                    # nil
            else:
                require var47001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                if uint256(stor1[address(stor[idx + sha3(var49002)].field_0)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                    idx = var49006
                    while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                        require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) < (10^17 * s) + 5 * 10^17 / 10^18:
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0):
                                if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) - 1 != uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1:
                                    require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    require uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)
                                    uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)].field_0) = uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0)
                                uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) = 0
                                require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                                uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                        mem[0] = arg2 << 128 or uint128(arg1)
                        mem[32] = 0
                        idx = idx + 1
                        continue 
                    _3250 = mem[64]
                    mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                    if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var51002 >= idx:
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3250]
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3250])] = mem[_3250 + 32 len floor32(mem[_3250])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3250]) + _3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var53001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var55001 + sha3(var55002)].field_0), 1)
                        require var55005 < mem[_3250]
                        mem[(32 * var57001) + _3250 + 32] = var57003
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var63002 >= var63001:
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3250]
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3250])] = mem[_3250 + 32 len floor32(mem[_3250])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3250]) + _3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var65001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                        require var67005 < mem[_3250]
                        # nil
                    else:
                        mem[_3250 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var52002 >= var52001:
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3250]
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3250])] = mem[_3250 + 32 len floor32(mem[_3250])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3250]) + _3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var54001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var56001 + sha3(var56002)].field_0), 1)
                        require var56005 < mem[_3250]
                        mem[(32 * var58001) + _3250 + 32] = var58003
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var64002 >= var64001:
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3250]
                            mem[_3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3250])] = mem[_3250 + 32 len floor32(mem[_3250])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3250]) + _3250 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var66001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                        require var68005 < mem[_3250]
                        # nil
                else:
                    require var51001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    if not uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0):
                        idx = var53004
                        while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                idx = idx + 1
                                continue 
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[0] = arg2 << 128 or uint128(arg1)
                            mem[32] = 0
                            var53001 = idx + 1
                            var53002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                            var53004 = idx + 1
                            continue 
                        _4686 = mem[64]
                        mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                        if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var61002 >= var61001:
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4686]
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4686])] = mem[_4686 + 32 len floor32(mem[_4686])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4686]) + _4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            require var63001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = sha3(address(stor[var65001 + sha3(var65002)].field_0), 1)
                            require var65005 < mem[_4686]
                            mem[(32 * var67001) + _4686 + 32] = var67003
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var73002 < var73001:
                                require var75001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                # nil
                            else:
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4686]
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4686])] = mem[_4686 + 32 len floor32(mem[_4686])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4686]) + _4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        else:
                            mem[_4686 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var62002 >= var62001:
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4686]
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4686])] = mem[_4686 + 32 len floor32(mem[_4686])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4686]) + _4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            require var64001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = sha3(address(stor[var66001 + sha3(var66002)].field_0), 1)
                            require var66005 < mem[_4686]
                            mem[(32 * var68001) + _4686 + 32] = var68003
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var74002 < var74001:
                                require var76001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                # nil
                            else:
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4686]
                                mem[_4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4686])] = mem[_4686 + 32 len floor32(mem[_4686])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4686]) + _4686 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    else:
                        if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) - 1 == uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1:
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) = 0
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                            idx = var53004
                            while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg2 << 128 or uint128(arg1)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                var53001 = idx + 1
                                var53002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                                var53004 = idx + 1
                                continue 
                            _4688 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                            if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var63002 >= var63001:
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4688]
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4688])] = mem[_4688 + 32 len floor32(mem[_4688])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4688]) + _4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var65001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                                require var67005 < mem[_4688]
                                mem[(32 * var69001) + _4688 + 32] = var69003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var75002 < var75001:
                                    require var77001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4688]
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4688])] = mem[_4688 + 32 len floor32(mem[_4688])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4688]) + _4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4688 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var64002 >= var64001:
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4688]
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4688])] = mem[_4688 + 32 len floor32(mem[_4688])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4688]) + _4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var66001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                                require var68005 < mem[_4688]
                                mem[(32 * var70001) + _4688 + 32] = var70003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var76002 < var76001:
                                    require var78001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4688]
                                    mem[_4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4688])] = mem[_4688 + 32 len floor32(mem[_4688])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4688]) + _4688 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        else:
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            require uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)].field_0) = uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0)
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var53001 + sha3(var53002)].field_0)].field_0) = 0
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                            idx = var53004
                            while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg2 << 128 or uint128(arg1)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                idx = idx + 1
                                var53002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                                var53004 = idx + 1
                                continue 
                            _4690 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                            if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var66002 >= var66001:
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4690]
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4690])] = mem[_4690 + 32 len floor32(mem[_4690])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4690]) + _4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var68001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                                require var70005 < mem[_4690]
                                mem[(32 * var72001) + _4690 + 32] = var72003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var78002 < var78001:
                                    require var80001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4690]
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4690])] = mem[_4690 + 32 len floor32(mem[_4690])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4690]) + _4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4690 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var67002 >= var67001:
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4690]
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4690])] = mem[_4690 + 32 len floor32(mem[_4690])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4690]) + _4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var69001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var71001 + sha3(var71002)].field_0), 1)
                                require var71005 < mem[_4690]
                                mem[(32 * var73001) + _4690 + 32] = var73003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var79002 < var79001:
                                    require var81001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4690]
                                    mem[_4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4690])] = mem[_4690 + 32 len floor32(mem[_4690])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4690]) + _4690 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
        else:
            require s
            if 10^17 * s / s != 10^17:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if (10^17 * s) + 5 * 10^17 < 10^17 * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if var47002 >= var47001:
                _1342 = mem[64]
                mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var44002 >= var44001:
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1342]
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1342])] = mem[_1342 + 32 len floor32(mem[_1342])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1342]) + _1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var46001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var48001 + sha3(var48002)].field_0), 1)
                    require var48005 < mem[_1342]
                    mem[(32 * var50001) + _1342 + 32] = var50003
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var56002 >= var56001:
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1342]
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1342])] = mem[_1342 + 32 len floor32(mem[_1342])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1342]) + _1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var58001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var60001 + sha3(var60002)].field_0), 1)
                    require var60005 < mem[_1342]
                    # nil
                else:
                    mem[_1342 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var45002 >= var45001:
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1342]
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1342])] = mem[_1342 + 32 len floor32(mem[_1342])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1342]) + _1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var47001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[idx + sha3(var49002)].field_0), 1)
                    require var49005 < mem[_1342]
                    mem[(32 * var51001) + _1342 + 32] = var51003
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = 0
                    if var57002 >= var57001:
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_1342]
                        mem[_1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_1342])] = mem[_1342 + 32 len floor32(mem[_1342])]
                        return memory
                          from mem[64]
                           len (32 * mem[_1342]) + _1342 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    require var59001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[16 len 16] = uint128(arg1)
                    mem[0 len 16] = uint128(arg2)
                    mem[32] = sha3(address(stor[var61001 + sha3(var61002)].field_0), 1)
                    require var61005 < mem[_1342]
                    # nil
            else:
                require idx < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                if uint256(stor1[address(stor[var51001 + sha3(var51002)].field_0)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                    idx = var51006
                    while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                        require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) < (10^17 * s) + 5 * 10^17 / 10^18:
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0):
                                if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) - 1 != uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1:
                                    require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    require uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)
                                    uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)].field_0) = uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0)
                                uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)].field_0) = 0
                                require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                                uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                        mem[0] = arg2 << 128 or uint128(arg1)
                        mem[32] = 0
                        idx = idx + 1
                        continue 
                    _3253 = mem[64]
                    mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                    if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var53002 >= idx:
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3253]
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3253])] = mem[_3253 + 32 len floor32(mem[_3253])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3253]) + _3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var55001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var57001 + sha3(var57002)].field_0), 1)
                        require var57005 < mem[_3253]
                        mem[(32 * var59001) + _3253 + 32] = var59003
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var65002 >= var65001:
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3253]
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3253])] = mem[_3253 + 32 len floor32(mem[_3253])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3253]) + _3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var67001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var69001 + sha3(var69002)].field_0), 1)
                        require var69005 < mem[_3253]
                        # nil
                    else:
                        mem[_3253 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var54002 >= var54001:
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3253]
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3253])] = mem[_3253 + 32 len floor32(mem[_3253])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3253]) + _3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var56001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var58001 + sha3(var58002)].field_0), 1)
                        require var58005 < mem[_3253]
                        mem[(32 * var60001) + _3253 + 32] = var60003
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = 0
                        if var66002 >= var66001:
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_3253]
                            mem[_3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_3253])] = mem[_3253 + 32 len floor32(mem[_3253])]
                            return memory
                              from mem[64]
                               len (32 * mem[_3253]) + _3253 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        require var68001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[16 len 16] = uint128(arg1)
                        mem[0 len 16] = uint128(arg2)
                        mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                        require var70005 < mem[_3253]
                        # nil
                else:
                    require var53001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                    if not uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0):
                        idx = var55004
                        while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                idx = idx + 1
                                continue 
                            require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[0] = arg2 << 128 or uint128(arg1)
                            mem[32] = 0
                            var55001 = idx + 1
                            var55002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                            var55004 = idx + 1
                            continue 
                        _4706 = mem[64]
                        mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                        mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                        if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var63002 >= var63001:
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4706]
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4706])] = mem[_4706 + 32 len floor32(mem[_4706])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4706]) + _4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            require var65001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = sha3(address(stor[var67001 + sha3(var67002)].field_0), 1)
                            require var67005 < mem[_4706]
                            mem[(32 * var69001) + _4706 + 32] = var69003
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var75002 < var75001:
                                require var77001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                # nil
                            else:
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4706]
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4706])] = mem[_4706 + 32 len floor32(mem[_4706])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4706]) + _4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        else:
                            mem[_4706 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var64002 >= var64001:
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4706]
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4706])] = mem[_4706 + 32 len floor32(mem[_4706])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4706]) + _4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            require var66001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = sha3(address(stor[var68001 + sha3(var68002)].field_0), 1)
                            require var68005 < mem[_4706]
                            mem[(32 * var70001) + _4706 + 32] = var70003
                            mem[16 len 16] = uint128(arg1)
                            mem[0 len 16] = uint128(arg2)
                            mem[32] = 0
                            if var76002 < var76001:
                                require var78001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                # nil
                            else:
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4706]
                                mem[_4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4706])] = mem[_4706 + 32 len floor32(mem[_4706])]
                                return memory
                                  from mem[64]
                                   len (32 * mem[_4706]) + _4706 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                    else:
                        if uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) - 1 == uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1:
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) = 0
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                            idx = var55004
                            while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg2 << 128 or uint128(arg1)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                var55001 = idx + 1
                                var55002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                                var55004 = idx + 1
                                continue 
                            _4708 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                            if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var65002 >= var65001:
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4708]
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4708])] = mem[_4708 + 32 len floor32(mem[_4708])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4708]) + _4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var67001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var69001 + sha3(var69002)].field_0), 1)
                                require var69005 < mem[_4708]
                                mem[(32 * var71001) + _4708 + 32] = var71003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var77002 < var77001:
                                    require var79001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4708]
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4708])] = mem[_4708 + 32 len floor32(mem[_4708])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4708]) + _4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4708 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var66002 >= var66001:
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4708]
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4708])] = mem[_4708 + 32 len floor32(mem[_4708])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4708]) + _4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var68001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var70001 + sha3(var70002)].field_0), 1)
                                require var70005 < mem[_4708]
                                mem[(32 * var72001) + _4708 + 32] = var72003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var78002 < var78001:
                                    require var80001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4708]
                                    mem[_4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4708])] = mem[_4708 + 32 len floor32(mem[_4708])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4708]) + _4708 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                        else:
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            require uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) - 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0)].field_0) = address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0))) + uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)].field_0)].field_0) = uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0)
                            uint256(stor0[arg2 << 128 or uint128(arg1)][address(stor[var55001 + sha3(var55002)].field_0)].field_0) = 0
                            require uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            address(stor[uint256(stor0[arg2 << 128 or uint128(arg1)].field_256) + ('array', 1, ('map', ('or', ('mask_shl', 128, 0, 128, ('param', 'arg2')), ('mask_shl', 128, 0, 0, ('param', 'arg1'))), ('name', 'stor0', 0)))].field_0) = 0
                            uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)--
                            idx = var55004
                            while idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                if uint256(stor1[address(stor0[arg2 << 128 or uint128(arg1)][idx + 1].field_256)][arg2 << 128 or uint128(arg1)].field_256) >= (10^17 * s) + 5 * 10^17 / 10^18:
                                    mem[0] = arg2 << 128 or uint128(arg1)
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                require idx + 1 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[0] = arg2 << 128 or uint128(arg1)
                                mem[32] = 0
                                idx = idx + 1
                                var55002 = sha3(arg2 << 128 or uint128(arg1), 0) + 1
                                var55004 = idx + 1
                                continue 
                            _4710 = mem[64]
                            mem[mem[64]] = uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                            mem[64] = mem[64] + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32
                            if not uint256(stor0[arg2 << 128 or uint128(arg1)].field_256):
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var68002 >= var68001:
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4710]
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4710])] = mem[_4710 + 32 len floor32(mem[_4710])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4710]) + _4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var70001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var72001 + sha3(var72002)].field_0), 1)
                                require var72005 < mem[_4710]
                                mem[(32 * var74001) + _4710 + 32] = var74003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var80002 < var80001:
                                    require var82001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4710]
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4710])] = mem[_4710 + 32 len floor32(mem[_4710])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4710]) + _4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                            else:
                                mem[_4710 + 32 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)] = code.data[8483 len 32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)]
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var69002 >= var69001:
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4710]
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4710])] = mem[_4710 + 32 len floor32(mem[_4710])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4710]) + _4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
                                require var71001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = sha3(address(stor[var73001 + sha3(var73002)].field_0), 1)
                                require var73005 < mem[_4710]
                                mem[(32 * var75001) + _4710 + 32] = var75003
                                mem[16 len 16] = uint128(arg1)
                                mem[0 len 16] = uint128(arg2)
                                mem[32] = 0
                                if var81002 < var81001:
                                    require var83001 < uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)
                                    # nil
                                else:
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 32] = 32
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 64] = mem[_4710]
                                    mem[_4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + 96 len floor32(mem[_4710])] = mem[_4710 + 32 len floor32(mem[_4710])]
                                    return memory
                                      from mem[64]
                                       len (32 * mem[_4710]) + _4710 + (32 * uint256(stor0[arg2 << 128 or uint128(arg1)].field_256)) + -mem[64] + 96
}



}
