contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return (ext_code.size(arg1) > 0)
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        return 0
    if arg2 <= 0:
        return 0
    if arg3 <= 0:
        return 0
    require (1000 * arg2) + (997 * arg1)
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function pairFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < arg2:
        return address(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
    return address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
}

function getReserves(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < arg2:
        if ext_code.size(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
            return 0
        require ext_code.size(address(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
        staticcall address(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if ext_code.size(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
            return 0
        require ext_code.size(address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
        staticcall address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_8db8bc90(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx <= arg1.length:
        if idx >= mem[96]:
            if arg2 < arg3:
                _371 = mem[64]
                mem[mem[64] + 32] = address(arg2)
                mem[mem[64] + 52] = address(arg3)
                _372 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _374 = sha3(mem[_372 + 32 len mem[_372]])
                mem[_371 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_371 + 105] = stor0
                mem[_371 + 125] = _374
                mem[_371 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_371 + 72] = 85
                mem[64] = _371 + 189
                if ext_code.size(sha3(0, stor0, _374, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                    require ext_code.size(address(sha3(0, stor0, _374, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _374, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_371 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 == arg2:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                        mem[_371 + 189] = 2
                                        mem[64] = _371 + 285
                                        mem[_371 + 221] = arg2
                                        mem[_371 + 253] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                        mem[_371 + 189] = 2
                                        mem[64] = _371 + 285
                                        mem[_371 + 221] = arg2
                                        mem[_371 + 253] = arg3
            else:
                _379 = mem[64]
                mem[mem[64] + 32] = address(arg3)
                mem[mem[64] + 52] = address(arg2)
                _380 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _382 = sha3(mem[_380 + 32 len mem[_380]])
                mem[_379 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_379 + 105] = stor0
                mem[_379 + 125] = _382
                mem[_379 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_379 + 72] = 85
                mem[64] = _379 + 189
                if ext_code.size(sha3(0, stor0, _382, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                    require ext_code.size(address(sha3(0, stor0, _382, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _382, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_379 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 == arg3:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                        mem[_379 + 189] = 2
                                        mem[64] = _379 + 285
                                        mem[_379 + 221] = arg2
                                        mem[_379 + 253] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                        mem[_379 + 189] = 2
                                        mem[64] = _379 + 285
                                        mem[_379 + 221] = arg2
                                        mem[_379 + 253] = arg3
        else:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != arg2:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] != arg3:
                    require idx < mem[96]
                    _387 = mem[(32 * idx) + 128]
                    if arg2 < mem[(32 * idx) + 140 len 20]:
                        _394 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(_387)
                        _395 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _397 = sha3(mem[_395 + 32 len mem[_395]])
                        mem[_394 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_394 + 105] = stor0
                        mem[_394 + 125] = _397
                        mem[_394 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_394 + 72] = 85
                        if ext_code.size(sha3(0, stor0, _397, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            require idx < mem[96]
                            _422 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_394 + 221] = address(mem[(32 * idx) + 128])
                                mem[_394 + 241] = address(arg3)
                                mem[_394 + 189] = 40
                                mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_394 + 294] = stor0
                                mem[_394 + 314] = sha3(mem[_394 + 221 len 20], arg3)
                                mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_394 + 261] = 85
                                mem[64] = _394 + 378
                                if ext_code.size(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                    require ext_code.size(address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                            else:
                                mem[_394 + 221] = address(arg3)
                                mem[_394 + 241] = address(_422)
                                mem[_394 + 189] = 40
                                mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_394 + 294] = stor0
                                mem[_394 + 314] = sha3(arg3, address(_422))
                                mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_394 + 261] = 85
                                mem[64] = _394 + 378
                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_422)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_422)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_422)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                        else:
                            require ext_code.size(address(sha3(0, stor0, _397, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _397, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_394 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == arg2:
                                _452 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_394 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_394 + 241] = address(arg3)
                                    mem[_394 + 189] = 40
                                    mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_394 + 294] = stor0
                                    mem[_394 + 314] = sha3(mem[_394 + 221 len 20], arg3)
                                    mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_394 + 261] = 85
                                    mem[64] = _394 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_452) == address(_452):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                else:
                                    mem[_394 + 221] = address(arg3)
                                    mem[_394 + 241] = address(_452)
                                    mem[_394 + 189] = 40
                                    mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_394 + 294] = stor0
                                    mem[_394 + 314] = sha3(arg3, address(_452))
                                    mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_394 + 261] = 85
                                    mem[64] = _394 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_452)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_452)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_452)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_452) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                            else:
                                _453 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_394 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_394 + 241] = address(arg3)
                                    mem[_394 + 189] = 40
                                    mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_394 + 294] = stor0
                                    mem[_394 + 314] = sha3(mem[_394 + 221 len 20], arg3)
                                    mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_394 + 261] = 85
                                    mem[64] = _394 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_394 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_453) == address(_453):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                else:
                                    mem[_394 + 221] = address(arg3)
                                    mem[_394 + 241] = address(_453)
                                    mem[_394 + 189] = 40
                                    mem[_394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_394 + 294] = stor0
                                    mem[_394 + 314] = sha3(arg3, address(_453))
                                    mem[_394 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_394 + 261] = 85
                                    mem[64] = _394 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_453)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_453)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_453)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_394 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_453) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_394 + 378] = 3
                                                                        mem[64] = _394 + 506
                                                                        mem[_394 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_394 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_394 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_394 + 474] = arg3
                    else:
                        _402 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(arg2)
                        _403 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _405 = sha3(mem[_403 + 32 len mem[_403]])
                        mem[_402 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_402 + 105] = stor0
                        mem[_402 + 125] = _405
                        mem[_402 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_402 + 72] = 85
                        if ext_code.size(sha3(0, stor0, _405, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            require idx < mem[96]
                            _424 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_402 + 221] = address(mem[(32 * idx) + 128])
                                mem[_402 + 241] = address(arg3)
                                mem[_402 + 189] = 40
                                mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_402 + 294] = stor0
                                mem[_402 + 314] = sha3(mem[_402 + 221 len 20], arg3)
                                mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_402 + 261] = 85
                                mem[64] = _402 + 378
                                if ext_code.size(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                    require ext_code.size(address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                            else:
                                mem[_402 + 221] = address(arg3)
                                mem[_402 + 241] = address(_424)
                                mem[_402 + 189] = 40
                                mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_402 + 294] = stor0
                                mem[_402 + 314] = sha3(arg3, address(_424))
                                mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_402 + 261] = 85
                                mem[64] = _402 + 378
                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_424)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_424)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_424)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                        else:
                            require ext_code.size(address(sha3(0, stor0, _405, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _405, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_402 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == address(_387):
                                _470 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_402 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_402 + 241] = address(arg3)
                                    mem[_402 + 189] = 40
                                    mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_402 + 294] = stor0
                                    mem[_402 + 314] = sha3(mem[_402 + 221 len 20], arg3)
                                    mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_402 + 261] = 85
                                    mem[64] = _402 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_470) == address(_470):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                else:
                                    mem[_402 + 221] = address(arg3)
                                    mem[_402 + 241] = address(_470)
                                    mem[_402 + 189] = 40
                                    mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_402 + 294] = stor0
                                    mem[_402 + 314] = sha3(arg3, address(_470))
                                    mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_402 + 261] = 85
                                    mem[64] = _402 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_470)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_470)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_470)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_470) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                            else:
                                _471 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_402 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_402 + 241] = address(arg3)
                                    mem[_402 + 189] = 40
                                    mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_402 + 294] = stor0
                                    mem[_402 + 314] = sha3(mem[_402 + 221 len 20], arg3)
                                    mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_402 + 261] = 85
                                    mem[64] = _402 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_402 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_471) == address(_471):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                else:
                                    mem[_402 + 221] = address(arg3)
                                    mem[_402 + 241] = address(_471)
                                    mem[_402 + 189] = 40
                                    mem[_402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_402 + 294] = stor0
                                    mem[_402 + 314] = sha3(arg3, address(_471))
                                    mem[_402 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_402 + 261] = 85
                                    mem[64] = _402 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_471)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_471)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_471)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_402 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_471) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_402 + 378] = 3
                                                                        mem[64] = _402 + 506
                                                                        mem[_402 + 410 len 96] = code.data[3422 len 96]
                                                                        mem[_402 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_402 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_402 + 474] = arg3
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = 0
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, 0, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}

function sub_1a801900(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = arg4
    s = 0
    t = 0
    while idx <= arg5:
        _1326 = mem[96]
        u = 0
        while u <= _1326:
            if u >= mem[96]:
                if arg2 < arg3:
                    _1345 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1346 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1348 = sha3(mem[_1346 + 32 len mem[_1346]])
                    mem[_1345 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1345 + 105] = stor0
                    mem[_1345 + 125] = _1348
                    mem[_1345 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1345 + 72] = 85
                    mem[64] = _1345 + 189
                    if ext_code.size(sha3(0, stor0, _1348, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1348, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1348, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1345 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg2:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1345 + 189] = 2
                                            mem[64] = _1345 + 285
                                            mem[_1345 + 221] = arg2
                                            mem[_1345 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1345 + 189] = 2
                                            mem[64] = _1345 + 285
                                            mem[_1345 + 221] = arg2
                                            mem[_1345 + 253] = arg3
                else:
                    _1353 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1354 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1356 = sha3(mem[_1354 + 32 len mem[_1354]])
                    mem[_1353 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1353 + 105] = stor0
                    mem[_1353 + 125] = _1356
                    mem[_1353 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1353 + 72] = 85
                    mem[64] = _1353 + 189
                    if ext_code.size(sha3(0, stor0, _1356, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1356, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1356, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1353 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg3:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1353 + 189] = 2
                                            mem[64] = _1353 + 285
                                            mem[_1353 + 221] = arg2
                                            mem[_1353 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1353 + 189] = 2
                                            mem[64] = _1353 + 285
                                            mem[_1353 + 221] = arg2
                                            mem[_1353 + 253] = arg3
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg2:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg3:
                        require u < mem[96]
                        _1361 = mem[(32 * u) + 128]
                        if arg2 < mem[(32 * u) + 140 len 20]:
                            _1401 = mem[64]
                            mem[mem[64] + 32] = address(arg2)
                            mem[mem[64] + 52] = address(_1361)
                            _1402 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1404 = sha3(mem[_1402 + 32 len mem[_1402]])
                            mem[_1401 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1401 + 105] = stor0
                            mem[_1401 + 125] = _1404
                            mem[_1401 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1401 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1404, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1499 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1401 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1401 + 241] = address(arg3)
                                    mem[_1401 + 189] = 40
                                    mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1401 + 294] = stor0
                                    mem[_1401 + 314] = sha3(mem[_1401 + 221 len 20], arg3)
                                    mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1401 + 261] = 85
                                    mem[64] = _1401 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1401 + 221] = address(arg3)
                                    mem[_1401 + 241] = address(_1499)
                                    mem[_1401 + 189] = 40
                                    mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1401 + 294] = stor0
                                    mem[_1401 + 314] = sha3(arg3, address(_1499))
                                    mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1401 + 261] = 85
                                    mem[64] = _1401 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1499)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1499)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1499)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1404, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1404, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1401 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == arg2:
                                    _1553 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1401 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1401 + 241] = address(arg3)
                                        mem[_1401 + 189] = 40
                                        mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1401 + 294] = stor0
                                        mem[_1401 + 314] = sha3(mem[_1401 + 221 len 20], arg3)
                                        mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1401 + 261] = 85
                                        mem[64] = _1401 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1553) == address(_1553):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                    else:
                                        mem[_1401 + 221] = address(arg3)
                                        mem[_1401 + 241] = address(_1553)
                                        mem[_1401 + 189] = 40
                                        mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1401 + 294] = stor0
                                        mem[_1401 + 314] = sha3(arg3, address(_1553))
                                        mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1401 + 261] = 85
                                        mem[64] = _1401 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1553)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1553)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1553)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1553) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                else:
                                    _1554 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1401 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1401 + 241] = address(arg3)
                                        mem[_1401 + 189] = 40
                                        mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1401 + 294] = stor0
                                        mem[_1401 + 314] = sha3(mem[_1401 + 221 len 20], arg3)
                                        mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1401 + 261] = 85
                                        mem[64] = _1401 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1401 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1554) == address(_1554):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                    else:
                                        mem[_1401 + 221] = address(arg3)
                                        mem[_1401 + 241] = address(_1554)
                                        mem[_1401 + 189] = 40
                                        mem[_1401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1401 + 294] = stor0
                                        mem[_1401 + 314] = sha3(arg3, address(_1554))
                                        mem[_1401 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1401 + 261] = 85
                                        mem[64] = _1401 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1554)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1554)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1554)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1401 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1554) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1401 + 378] = 3
                                                                            mem[64] = _1401 + 506
                                                                            mem[_1401 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1401 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1401 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1401 + 474] = arg3
                        else:
                            _1409 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg2)
                            _1410 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1412 = sha3(mem[_1410 + 32 len mem[_1410]])
                            mem[_1409 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1409 + 105] = stor0
                            mem[_1409 + 125] = _1412
                            mem[_1409 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1409 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1412, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1501 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1409 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1409 + 241] = address(arg3)
                                    mem[_1409 + 189] = 40
                                    mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1409 + 294] = stor0
                                    mem[_1409 + 314] = sha3(mem[_1409 + 221 len 20], arg3)
                                    mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1409 + 261] = 85
                                    mem[64] = _1409 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1409 + 221] = address(arg3)
                                    mem[_1409 + 241] = address(_1501)
                                    mem[_1409 + 189] = 40
                                    mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1409 + 294] = stor0
                                    mem[_1409 + 314] = sha3(arg3, address(_1501))
                                    mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1409 + 261] = 85
                                    mem[64] = _1409 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1501)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1501)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1501)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1412, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1412, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1409 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == address(_1361):
                                    _1571 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1409 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1409 + 241] = address(arg3)
                                        mem[_1409 + 189] = 40
                                        mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1409 + 294] = stor0
                                        mem[_1409 + 314] = sha3(mem[_1409 + 221 len 20], arg3)
                                        mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1409 + 261] = 85
                                        mem[64] = _1409 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1571) == address(_1571):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                    else:
                                        mem[_1409 + 221] = address(arg3)
                                        mem[_1409 + 241] = address(_1571)
                                        mem[_1409 + 189] = 40
                                        mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1409 + 294] = stor0
                                        mem[_1409 + 314] = sha3(arg3, address(_1571))
                                        mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1409 + 261] = 85
                                        mem[64] = _1409 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1571)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1571)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1571)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1571) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                else:
                                    _1572 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1409 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1409 + 241] = address(arg3)
                                        mem[_1409 + 189] = 40
                                        mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1409 + 294] = stor0
                                        mem[_1409 + 314] = sha3(mem[_1409 + 221 len 20], arg3)
                                        mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1409 + 261] = 85
                                        mem[64] = _1409 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1409 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1572) == address(_1572):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                    else:
                                        mem[_1409 + 221] = address(arg3)
                                        mem[_1409 + 241] = address(_1572)
                                        mem[_1409 + 189] = 40
                                        mem[_1409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1409 + 294] = stor0
                                        mem[_1409 + 314] = sha3(arg3, address(_1572))
                                        mem[_1409 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1409 + 261] = 85
                                        mem[64] = _1409 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1572)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1572)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1572)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1409 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1572) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
                                            else:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    if ext_call.return_data[18 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1409 + 378] = 3
                                                                            mem[64] = _1409 + 506
                                                                            mem[_1409 + 410 len 96] = code.data[3422 len 96]
                                                                            mem[_1409 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1409 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1409 + 474] = arg3
            u = u + 1
            continue 
        _1993 = mem[96]
        u = 0
        while u <= _1993:
            if u >= mem[96]:
                if arg3 < arg2:
                    _2013 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _2014 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2016 = sha3(mem[_2014 + 32 len mem[_2014]])
                    mem[_2013 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2013 + 105] = stor0
                    mem[_2013 + 125] = _2016
                    mem[_2013 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2013 + 72] = 85
                    mem[64] = _2013 + 189
                    if ext_code.size(sha3(0, stor0, _2016, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _2016, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2016, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2013 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                else:
                    _2021 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _2022 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2024 = sha3(mem[_2022 + 32 len mem[_2022]])
                    mem[_2021 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2021 + 105] = stor0
                    mem[_2021 + 125] = _2024
                    mem[_2021 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2021 + 72] = 85
                    mem[64] = _2021 + 189
                    if ext_code.size(sha3(0, stor0, _2024, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _2024, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2024, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2021 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg3:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg2:
                        require u < mem[96]
                        _2029 = mem[(32 * u) + 128]
                        if arg3 < mem[(32 * u) + 140 len 20]:
                            _2067 = mem[64]
                            mem[mem[64] + 32] = address(arg3)
                            mem[mem[64] + 52] = address(_2029)
                            _2068 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2070 = sha3(mem[_2068 + 32 len mem[_2068]])
                            mem[_2067 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2067 + 105] = stor0
                            mem[_2067 + 125] = _2070
                            mem[_2067 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_2067 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2070, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2119 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_2067 + 221] = address(mem[(32 * u) + 128])
                                    mem[_2067 + 241] = address(arg2)
                                    mem[_2067 + 189] = 40
                                    mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2067 + 294] = stor0
                                    mem[_2067 + 314] = sha3(mem[_2067 + 221 len 20], arg2)
                                    mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2067 + 261] = 85
                                    mem[64] = _2067 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_2067 + 221] = address(arg2)
                                    mem[_2067 + 241] = address(_2119)
                                    mem[_2067 + 189] = 40
                                    mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2067 + 294] = stor0
                                    mem[_2067 + 314] = sha3(arg2, address(_2119))
                                    mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2067 + 261] = 85
                                    mem[64] = _2067 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2119)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2119)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2119)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2070, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2070, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2067 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == arg3:
                                    _2149 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2067 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2067 + 241] = address(arg2)
                                        mem[_2067 + 189] = 40
                                        mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2067 + 294] = stor0
                                        mem[_2067 + 314] = sha3(mem[_2067 + 221 len 20], arg2)
                                        mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2067 + 261] = 85
                                        mem[64] = _2067 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2067 + 221] = address(arg2)
                                        mem[_2067 + 241] = address(_2149)
                                        mem[_2067 + 189] = 40
                                        mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2067 + 294] = stor0
                                        mem[_2067 + 314] = sha3(arg2, address(_2149))
                                        mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2067 + 261] = 85
                                        mem[64] = _2067 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2149)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2149)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2149)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2150 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2067 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2067 + 241] = address(arg2)
                                        mem[_2067 + 189] = 40
                                        mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2067 + 294] = stor0
                                        mem[_2067 + 314] = sha3(mem[_2067 + 221 len 20], arg2)
                                        mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2067 + 261] = 85
                                        mem[64] = _2067 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2067 + 221] = address(arg2)
                                        mem[_2067 + 241] = address(_2150)
                                        mem[_2067 + 189] = 40
                                        mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2067 + 294] = stor0
                                        mem[_2067 + 314] = sha3(arg2, address(_2150))
                                        mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2067 + 261] = 85
                                        mem[64] = _2067 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2150)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2150)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2150)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                        else:
                            _2075 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg3)
                            _2076 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2078 = sha3(mem[_2076 + 32 len mem[_2076]])
                            mem[_2075 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2075 + 105] = stor0
                            mem[_2075 + 125] = _2078
                            mem[_2075 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_2075 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2078, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2121 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_2075 + 221] = address(mem[(32 * u) + 128])
                                    mem[_2075 + 241] = address(arg2)
                                    mem[_2075 + 189] = 40
                                    mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2075 + 294] = stor0
                                    mem[_2075 + 314] = sha3(mem[_2075 + 221 len 20], arg2)
                                    mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2075 + 261] = 85
                                    mem[64] = _2075 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_2075 + 221] = address(arg2)
                                    mem[_2075 + 241] = address(_2121)
                                    mem[_2075 + 189] = 40
                                    mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2075 + 294] = stor0
                                    mem[_2075 + 314] = sha3(arg2, address(_2121))
                                    mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2075 + 261] = 85
                                    mem[64] = _2075 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2121)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2121)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2121)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2078, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2078, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2075 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == address(_2029):
                                    _2167 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2075 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2075 + 241] = address(arg2)
                                        mem[_2075 + 189] = 40
                                        mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2075 + 294] = stor0
                                        mem[_2075 + 314] = sha3(mem[_2075 + 221 len 20], arg2)
                                        mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2075 + 261] = 85
                                        mem[64] = _2075 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2075 + 221] = address(arg2)
                                        mem[_2075 + 241] = address(_2167)
                                        mem[_2075 + 189] = 40
                                        mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2075 + 294] = stor0
                                        mem[_2075 + 314] = sha3(arg2, address(_2167))
                                        mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2075 + 261] = 85
                                        mem[64] = _2075 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2167)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2167)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2167)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2168 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2075 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2075 + 241] = address(arg2)
                                        mem[_2075 + 189] = 40
                                        mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2075 + 294] = stor0
                                        mem[_2075 + 314] = sha3(mem[_2075 + 221 len 20], arg2)
                                        mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2075 + 261] = 85
                                        mem[64] = _2075 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2075 + 221] = address(arg2)
                                        mem[_2075 + 241] = address(_2168)
                                        mem[_2075 + 189] = 40
                                        mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2075 + 294] = stor0
                                        mem[_2075 + 314] = sha3(arg2, address(_2168))
                                        mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2075 + 261] = 85
                                        mem[64] = _2075 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
            u = u + 1
            continue 
        if not mem[96]:
            _2003 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2003 + 160] = mem[96]
            _2005 = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[_2003 + s + 192] = mem[s + 128]
                s = s + 32
                continue 
            mem[_2003 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2005) + _2003 + 192] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[(32 * _2005) + _2003 + s + 224] = mem[s + 128]
                s = s + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2005) + _2003 + -mem[64] + 224
        if not mem[96]:
            _2006 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2006 + 160] = mem[96]
            _2008 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2006 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2006 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2008) + _2006 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2008) + _2006 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2008) + _2006 + -mem[64] + 224
        if -idx > s:
            if idx >= arg5:
                _2037 = mem[64]
                mem[mem[64] + 64] = idx
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = -idx
                mem[mem[64]] = 160
                mem[_2037 + 160] = mem[96]
                _2039 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2037 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2037 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2039) + _2037 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2039) + _2037 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2039) + _2037 + -mem[64] + 224
            if -idx > 0:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = -idx
                    t = idx
                    continue 
                idx = idx + arg6
                s = -idx
                t = idx
                continue 
            _2047 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_2047 + 160] = mem[96]
            _2049 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2047 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2047 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2049) + _2047 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2049) + _2047 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2049) + _2047 + -mem[64] + 224
        if s:
            if idx >= arg5:
                _2040 = mem[64]
                mem[mem[64] + 64] = t
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = s
                mem[mem[64]] = 160
                mem[_2040 + 160] = mem[96]
                _2042 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2040 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2040 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2042) + _2040 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2042) + _2040 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2042) + _2040 + -mem[64] + 224
            if s > 0:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = s
                    t = t
                    continue 
                idx = idx + arg6
                s = s
                t = t
                continue 
            _2050 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2050 + 160] = mem[96]
            _2052 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2050 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2050 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2052) + _2050 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2052) + _2050 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2052) + _2050 + -mem[64] + 224
        if idx >= arg5:
            _2053 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_2053 + 160] = mem[96]
            _2055 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2053 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2053 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2055) + _2053 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2055) + _2053 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2055) + _2053 + -mem[64] + 224
        if -idx > 0:
            if arg5 - idx < arg6:
                idx = arg5
                s = -idx
                t = idx
                continue 
            idx = idx + arg6
            s = -idx
            t = idx
            continue 
        _2062 = mem[64]
        mem[mem[64] + 64] = idx
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = -idx
        mem[mem[64]] = 160
        mem[_2062 + 160] = mem[96]
        _2064 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[_2062 + idx + 192] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_2062 + 32] = (32 * mem[96]) + 192
        mem[(32 * _2064) + _2062 + 192] = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[(32 * _2064) + _2062 + idx + 224] = mem[idx + 128]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _2064) + _2062 + -mem[64] + 224
    _656 = mem[64]
    mem[mem[64] + 64] = t
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = s
    mem[mem[64]] = 160
    mem[_656 + 160] = mem[96]
    _658 = mem[96]
    mem[_656 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_656 + 32] = (32 * mem[96]) + 192
    mem[(32 * _658) + _656 + 192] = mem[96]
    mem[(32 * _658) + _656 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _658) + _656 + -mem[64] + 224
}



}
