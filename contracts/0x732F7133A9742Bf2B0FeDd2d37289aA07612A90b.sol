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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3384 len 96]
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
    while idx < arg5:
        if idx <= arg5:
            _2410 = mem[96]
            s = 0
            while s <= _2410:
                if s >= mem[96]:
                    if arg2 < arg3:
                        _2442 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2443 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2445 = sha3(mem[_2443 + 32 len mem[_2443]])
                        mem[_2442 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2442 + 105] = stor0
                        mem[_2442 + 125] = _2445
                        mem[_2442 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2442 + 72] = 85
                        mem[64] = _2442 + 189
                        if ext_code.size(sha3(0, stor0, _2445, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            if idx <= 0:
                                s = s + 1
                                continue 
                            else:
                                s = s + 1
                                continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2445, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2445, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2442 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg2 == arg2:
                                    if idx <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[50 len 14] <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                                if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    mem[_2442 + 189] = 2
                                                    mem[64] = _2442 + 285
                                                    mem[_2442 + 221] = arg2
                                                    mem[_2442 + 253] = arg3
                                                    s = s + 1
                                                    continue 
                                else:
                                    if idx <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[18 len 14] <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                                if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    mem[_2442 + 189] = 2
                                                    mem[64] = _2442 + 285
                                                    mem[_2442 + 221] = arg2
                                                    mem[_2442 + 253] = arg3
                                                    s = s + 1
                                                    continue 
                    else:
                        _2450 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2451 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2453 = sha3(mem[_2451 + 32 len mem[_2451]])
                        mem[_2450 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2450 + 105] = stor0
                        mem[_2450 + 125] = _2453
                        mem[_2450 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2450 + 72] = 85
                        mem[64] = _2450 + 189
                        if ext_code.size(sha3(0, stor0, _2453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            if idx <= 0:
                                s = s + 1
                                continue 
                            else:
                                s = s + 1
                                continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2450 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg2 == arg3:
                                    if idx <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[50 len 14] <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                                if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    mem[_2450 + 189] = 2
                                                    mem[64] = _2450 + 285
                                                    mem[_2450 + 221] = arg2
                                                    mem[_2450 + 253] = arg3
                                                    s = s + 1
                                                    continue 
                                else:
                                    if idx <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[18 len 14] <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                                if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    mem[_2450 + 189] = 2
                                                    mem[64] = _2450 + 285
                                                    mem[_2450 + 221] = arg2
                                                    mem[_2450 + 253] = arg3
                                                    s = s + 1
                                                    continue 
                else:
                    require s < mem[96]
                    if mem[(32 * s) + 140 len 20] == arg2:
                        s = s + 1
                        continue 
                    else:
                        require s < mem[96]
                        if mem[(32 * s) + 140 len 20] != arg3:
                            require s < mem[96]
                            _2458 = mem[(32 * s) + 128]
                            if arg2 < mem[(32 * s) + 140 len 20]:
                                _2525 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2458)
                                _2526 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2528 = sha3(mem[_2526 + 32 len mem[_2526]])
                                mem[_2525 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2525 + 105] = stor0
                                mem[_2525 + 125] = _2528
                                mem[_2525 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2525 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _2528, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require s < mem[96]
                                    _2639 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2525 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2525 + 241] = address(arg3)
                                        mem[_2525 + 189] = 40
                                        mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2525 + 294] = stor0
                                        mem[_2525 + 314] = sha3(mem[_2525 + 221 len 20], arg3)
                                        mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2525 + 261] = 85
                                        mem[64] = _2525 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2639) == address(_2639):
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                    else:
                                        mem[_2525 + 221] = address(arg3)
                                        mem[_2525 + 241] = address(_2639)
                                        mem[_2525 + 189] = 40
                                        mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2525 + 294] = stor0
                                        mem[_2525 + 314] = sha3(arg3, address(_2639))
                                        mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2525 + 261] = 85
                                        mem[64] = _2525 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2639)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2639)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2639)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2639) == arg3:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _2528, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _2528, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_2525 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg2 == arg2:
                                            require s < mem[96]
                                            _2715 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg3:
                                                mem[_2525 + 221] = address(mem[(32 * s) + 128])
                                                mem[_2525 + 241] = address(arg3)
                                                mem[_2525 + 189] = 40
                                                mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2525 + 294] = stor0
                                                mem[_2525 + 314] = sha3(mem[_2525 + 221 len 20], arg3)
                                                mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2525 + 261] = 85
                                                mem[64] = _2525 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2715) == address(_2715):
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                            else:
                                                mem[_2525 + 221] = address(arg3)
                                                mem[_2525 + 241] = address(_2715)
                                                mem[_2525 + 189] = 40
                                                mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2525 + 294] = stor0
                                                mem[_2525 + 314] = sha3(arg3, address(_2715))
                                                mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2525 + 261] = 85
                                                mem[64] = _2525 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2715)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2715)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2715)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2715) == arg3:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                        else:
                                            require s < mem[96]
                                            _2716 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg3:
                                                mem[_2525 + 221] = address(mem[(32 * s) + 128])
                                                mem[_2525 + 241] = address(arg3)
                                                mem[_2525 + 189] = 40
                                                mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2525 + 294] = stor0
                                                mem[_2525 + 314] = sha3(mem[_2525 + 221 len 20], arg3)
                                                mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2525 + 261] = 85
                                                mem[64] = _2525 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2525 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2716) == address(_2716):
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                            else:
                                                mem[_2525 + 221] = address(arg3)
                                                mem[_2525 + 241] = address(_2716)
                                                mem[_2525 + 189] = 40
                                                mem[_2525 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2525 + 294] = stor0
                                                mem[_2525 + 314] = sha3(arg3, address(_2716))
                                                mem[_2525 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2525 + 261] = 85
                                                mem[64] = _2525 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2716)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2716)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2716)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2525 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2716) == arg3:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2525 + 378] = 3
                                                                                        mem[64] = _2525 + 506
                                                                                        mem[_2525 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2525 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2525 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2525 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                            else:
                                _2533 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2534 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2536 = sha3(mem[_2534 + 32 len mem[_2534]])
                                mem[_2533 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2533 + 105] = stor0
                                mem[_2533 + 125] = _2536
                                mem[_2533 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2533 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _2536, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require s < mem[96]
                                    _2641 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2533 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2533 + 241] = address(arg3)
                                        mem[_2533 + 189] = 40
                                        mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2533 + 294] = stor0
                                        mem[_2533 + 314] = sha3(mem[_2533 + 221 len 20], arg3)
                                        mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2533 + 261] = 85
                                        mem[64] = _2533 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2641) == address(_2641):
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                    else:
                                        mem[_2533 + 221] = address(arg3)
                                        mem[_2533 + 241] = address(_2641)
                                        mem[_2533 + 189] = 40
                                        mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2533 + 294] = stor0
                                        mem[_2533 + 314] = sha3(arg3, address(_2641))
                                        mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2533 + 261] = 85
                                        mem[64] = _2533 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2641)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2641)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2641)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2641) == arg3:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _2536, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _2536, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_2533 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg2 == address(_2458):
                                            require s < mem[96]
                                            _2733 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg3:
                                                mem[_2533 + 221] = address(mem[(32 * s) + 128])
                                                mem[_2533 + 241] = address(arg3)
                                                mem[_2533 + 189] = 40
                                                mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2533 + 294] = stor0
                                                mem[_2533 + 314] = sha3(mem[_2533 + 221 len 20], arg3)
                                                mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2533 + 261] = 85
                                                mem[64] = _2533 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2733) == address(_2733):
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                            else:
                                                mem[_2533 + 221] = address(arg3)
                                                mem[_2533 + 241] = address(_2733)
                                                mem[_2533 + 189] = 40
                                                mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2533 + 294] = stor0
                                                mem[_2533 + 314] = sha3(arg3, address(_2733))
                                                mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2533 + 261] = 85
                                                mem[64] = _2533 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2733) == arg3:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                        else:
                                            require s < mem[96]
                                            _2734 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg3:
                                                mem[_2533 + 221] = address(mem[(32 * s) + 128])
                                                mem[_2533 + 241] = address(arg3)
                                                mem[_2533 + 189] = 40
                                                mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2533 + 294] = stor0
                                                mem[_2533 + 314] = sha3(mem[_2533 + 221 len 20], arg3)
                                                mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2533 + 261] = 85
                                                mem[64] = _2533 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2533 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2734) == address(_2734):
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                            else:
                                                mem[_2533 + 221] = address(arg3)
                                                mem[_2533 + 241] = address(_2734)
                                                mem[_2533 + 189] = 40
                                                mem[_2533 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2533 + 294] = stor0
                                                mem[_2533 + 314] = sha3(arg3, address(_2734))
                                                mem[_2533 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2533 + 261] = 85
                                                mem[64] = _2533 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2734)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if idx <= 0:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2734)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2734)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2533 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2734) == arg3:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                                                        else:
                                                            if idx <= 0:
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                                        if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                                    if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) <= 0:
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2533 + 378] = 3
                                                                                        mem[64] = _2533 + 506
                                                                                        mem[_2533 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2533 + 410] = arg2
                                                                                        require s < mem[96]
                                                                                        mem[_2533 + 442] = mem[(32 * s) + 140 len 20]
                                                                                        mem[_2533 + 474] = arg3
                                                                                        s = s + 1
                                                                                        continue 
                        else:
                            s = s + 1
                            continue 
            _3611 = mem[96]
            s = 0
            while s <= _3611:
                if s >= mem[96]:
                    if arg3 < arg2:
                        _3631 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _3632 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3634 = sha3(mem[_3632 + 32 len mem[_3632]])
                        mem[_3631 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3631 + 105] = stor0
                        mem[_3631 + 125] = _3634
                        mem[_3631 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3631 + 72] = 85
                        mem[64] = _3631 + 189
                        if ext_code.size(sha3(0, stor0, _3634, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            s = s + 1
                            continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _3634, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _3634, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3631 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg3 == arg3:
                                    s = s + 1
                                    continue 
                                else:
                                    s = s + 1
                                    continue 
                    else:
                        _3639 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _3640 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3642 = sha3(mem[_3640 + 32 len mem[_3640]])
                        mem[_3639 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3639 + 105] = stor0
                        mem[_3639 + 125] = _3642
                        mem[_3639 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3639 + 72] = 85
                        mem[64] = _3639 + 189
                        if ext_code.size(sha3(0, stor0, _3642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            s = s + 1
                            continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _3642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _3642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3639 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg3 == arg2:
                                    s = s + 1
                                    continue 
                                else:
                                    s = s + 1
                                    continue 
                else:
                    require s < mem[96]
                    if mem[(32 * s) + 140 len 20] == arg3:
                        s = s + 1
                        continue 
                    else:
                        require s < mem[96]
                        if mem[(32 * s) + 140 len 20] != arg2:
                            require s < mem[96]
                            _3647 = mem[(32 * s) + 128]
                            if arg3 < mem[(32 * s) + 140 len 20]:
                                _3675 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3647)
                                _3676 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3678 = sha3(mem[_3676 + 32 len mem[_3676]])
                                mem[_3675 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3675 + 105] = stor0
                                mem[_3675 + 125] = _3678
                                mem[_3675 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3675 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _3678, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require s < mem[96]
                                    _3733 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3675 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3675 + 241] = address(arg2)
                                        mem[_3675 + 189] = 40
                                        mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3675 + 294] = stor0
                                        mem[_3675 + 314] = sha3(mem[_3675 + 221 len 20], arg2)
                                        mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3675 + 261] = 85
                                        mem[64] = _3675 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3733) == address(_3733):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[_3675 + 221] = address(arg2)
                                        mem[_3675 + 241] = address(_3733)
                                        mem[_3675 + 189] = 40
                                        mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3675 + 294] = stor0
                                        mem[_3675 + 314] = sha3(arg2, address(_3733))
                                        mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3675 + 261] = 85
                                        mem[64] = _3675 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3733)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3733) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _3678, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _3678, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_3675 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg3 == arg3:
                                            require s < mem[96]
                                            _3777 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg2:
                                                mem[_3675 + 221] = address(mem[(32 * s) + 128])
                                                mem[_3675 + 241] = address(arg2)
                                                mem[_3675 + 189] = 40
                                                mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3675 + 294] = stor0
                                                mem[_3675 + 314] = sha3(mem[_3675 + 221 len 20], arg2)
                                                mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3675 + 261] = 85
                                                mem[64] = _3675 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3777) == address(_3777):
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[_3675 + 221] = address(arg2)
                                                mem[_3675 + 241] = address(_3777)
                                                mem[_3675 + 189] = 40
                                                mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3675 + 294] = stor0
                                                mem[_3675 + 314] = sha3(arg2, address(_3777))
                                                mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3675 + 261] = 85
                                                mem[64] = _3675 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3777)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3777)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3777)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3777) == arg2:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                        else:
                                            require s < mem[96]
                                            _3778 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg2:
                                                mem[_3675 + 221] = address(mem[(32 * s) + 128])
                                                mem[_3675 + 241] = address(arg2)
                                                mem[_3675 + 189] = 40
                                                mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3675 + 294] = stor0
                                                mem[_3675 + 314] = sha3(mem[_3675 + 221 len 20], arg2)
                                                mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3675 + 261] = 85
                                                mem[64] = _3675 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3675 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3778) == address(_3778):
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[_3675 + 221] = address(arg2)
                                                mem[_3675 + 241] = address(_3778)
                                                mem[_3675 + 189] = 40
                                                mem[_3675 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3675 + 294] = stor0
                                                mem[_3675 + 314] = sha3(arg2, address(_3778))
                                                mem[_3675 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3675 + 261] = 85
                                                mem[64] = _3675 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3778)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3778)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3778)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3675 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3778) == arg2:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                            else:
                                _3683 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3684 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3686 = sha3(mem[_3684 + 32 len mem[_3684]])
                                mem[_3683 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3683 + 105] = stor0
                                mem[_3683 + 125] = _3686
                                mem[_3683 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3683 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _3686, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require s < mem[96]
                                    _3735 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3683 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3683 + 241] = address(arg2)
                                        mem[_3683 + 189] = 40
                                        mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3683 + 294] = stor0
                                        mem[_3683 + 314] = sha3(mem[_3683 + 221 len 20], arg2)
                                        mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3683 + 261] = 85
                                        mem[64] = _3683 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3735) == address(_3735):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[_3683 + 221] = address(arg2)
                                        mem[_3683 + 241] = address(_3735)
                                        mem[_3683 + 189] = 40
                                        mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3683 + 294] = stor0
                                        mem[_3683 + 314] = sha3(arg2, address(_3735))
                                        mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3683 + 261] = 85
                                        mem[64] = _3683 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3735)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3735)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3735)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3735) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _3686, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _3686, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_3683 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg3 == address(_3647):
                                            require s < mem[96]
                                            _3795 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg2:
                                                mem[_3683 + 221] = address(mem[(32 * s) + 128])
                                                mem[_3683 + 241] = address(arg2)
                                                mem[_3683 + 189] = 40
                                                mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3683 + 294] = stor0
                                                mem[_3683 + 314] = sha3(mem[_3683 + 221 len 20], arg2)
                                                mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3683 + 261] = 85
                                                mem[64] = _3683 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3795) == address(_3795):
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[_3683 + 221] = address(arg2)
                                                mem[_3683 + 241] = address(_3795)
                                                mem[_3683 + 189] = 40
                                                mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3683 + 294] = stor0
                                                mem[_3683 + 314] = sha3(arg2, address(_3795))
                                                mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3683 + 261] = 85
                                                mem[64] = _3683 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3795)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3795)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3795)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3795) == arg2:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                        else:
                                            require s < mem[96]
                                            _3796 = mem[(32 * s) + 128]
                                            if mem[(32 * s) + 140 len 20] < arg2:
                                                mem[_3683 + 221] = address(mem[(32 * s) + 128])
                                                mem[_3683 + 241] = address(arg2)
                                                mem[_3683 + 189] = 40
                                                mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3683 + 294] = stor0
                                                mem[_3683 + 314] = sha3(mem[_3683 + 221 len 20], arg2)
                                                mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3683 + 261] = 85
                                                mem[64] = _3683 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3683 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3796) == address(_3796):
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[_3683 + 221] = address(arg2)
                                                mem[_3683 + 241] = address(_3796)
                                                mem[_3683 + 189] = 40
                                                mem[_3683 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3683 + 294] = stor0
                                                mem[_3683 + 314] = sha3(arg2, address(_3796))
                                                mem[_3683 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3683 + 261] = 85
                                                mem[64] = _3683 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3796)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3796)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3796)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3683 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3796) == arg2:
                                                            s = s + 1
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            continue 
                        else:
                            s = s + 1
                            continue 
            if not mem[96]:
                idx = idx + arg6
                continue 
            else:
                if mem[96]:
                    if -idx > 0:
                        idx = idx + arg6
                        continue 
                    else:
                        idx = idx + arg6
                        continue 
                else:
                    idx = idx + arg6
                    continue 
        else:
            _2411 = mem[96]
            idx = 0
            while idx <= _2411:
                if idx >= mem[96]:
                    if arg2 < arg3:
                        _2460 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2461 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2463 = sha3(mem[_2461 + 32 len mem[_2461]])
                        mem[_2460 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2460 + 105] = stor0
                        mem[_2460 + 125] = _2463
                        mem[_2460 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2460 + 72] = 85
                        mem[64] = _2460 + 189
                        if ext_code.size(sha3(0, stor0, _2463, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            if arg5 <= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2463, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2463, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2460 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg2 == arg2:
                                    if arg5 <= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[50 len 14] <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[18 len 14]) + (997 * arg5)
                                                if 997 * arg5 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg5) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[_2460 + 189] = 2
                                                    mem[64] = _2460 + 285
                                                    mem[_2460 + 221] = arg2
                                                    mem[_2460 + 253] = arg3
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if arg5 <= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[18 len 14] <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[50 len 14]) + (997 * arg5)
                                                if 997 * arg5 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg5) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[_2460 + 189] = 2
                                                    mem[64] = _2460 + 285
                                                    mem[_2460 + 221] = arg2
                                                    mem[_2460 + 253] = arg3
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _2468 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2469 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2471 = sha3(mem[_2469 + 32 len mem[_2469]])
                        mem[_2468 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2468 + 105] = stor0
                        mem[_2468 + 125] = _2471
                        mem[_2468 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2468 + 72] = 85
                        mem[64] = _2468 + 189
                        if ext_code.size(sha3(0, stor0, _2471, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            if arg5 <= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2471, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2471, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2468 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg2 == arg3:
                                    if arg5 <= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[50 len 14] <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[18 len 14]) + (997 * arg5)
                                                if 997 * arg5 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg5) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[_2468 + 189] = 2
                                                    mem[64] = _2468 + 285
                                                    mem[_2468 + 221] = arg2
                                                    mem[_2468 + 253] = arg3
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if arg5 <= 0:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if ext_call.return_data[18 len 14] <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require (1000 * ext_call.return_data[50 len 14]) + (997 * arg5)
                                                if 997 * arg5 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg5) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    mem[_2468 + 189] = 2
                                                    mem[64] = _2468 + 285
                                                    mem[_2468 + 221] = arg2
                                                    mem[_2468 + 253] = arg3
                                                    idx = idx + 1
                                                    continue 
                else:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == arg2:
                        idx = idx + 1
                        continue 
                    else:
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] != arg3:
                            require idx < mem[96]
                            _2476 = mem[(32 * idx) + 128]
                            if arg2 < mem[(32 * idx) + 140 len 20]:
                                _2543 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2476)
                                _2544 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2546 = sha3(mem[_2544 + 32 len mem[_2544]])
                                mem[_2543 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2543 + 105] = stor0
                                mem[_2543 + 125] = _2546
                                mem[_2543 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2543 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _2546, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require idx < mem[96]
                                    _2643 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2543 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2543 + 241] = address(arg3)
                                        mem[_2543 + 189] = 40
                                        mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2543 + 294] = stor0
                                        mem[_2543 + 314] = sha3(mem[_2543 + 221 len 20], arg3)
                                        mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2543 + 261] = 85
                                        mem[64] = _2543 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2643) == address(_2643):
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    else:
                                        mem[_2543 + 221] = address(arg3)
                                        mem[_2543 + 241] = address(_2643)
                                        mem[_2543 + 189] = 40
                                        mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2543 + 294] = stor0
                                        mem[_2543 + 314] = sha3(arg3, address(_2643))
                                        mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2543 + 261] = 85
                                        mem[64] = _2543 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2643)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2643)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2643)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2643) == arg3:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _2546, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _2546, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_2543 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg2 == arg2:
                                            require idx < mem[96]
                                            _2751 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg3:
                                                mem[_2543 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_2543 + 241] = address(arg3)
                                                mem[_2543 + 189] = 40
                                                mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2543 + 294] = stor0
                                                mem[_2543 + 314] = sha3(mem[_2543 + 221 len 20], arg3)
                                                mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2543 + 261] = 85
                                                mem[64] = _2543 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2751) == address(_2751):
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                            else:
                                                mem[_2543 + 221] = address(arg3)
                                                mem[_2543 + 241] = address(_2751)
                                                mem[_2543 + 189] = 40
                                                mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2543 + 294] = stor0
                                                mem[_2543 + 314] = sha3(arg3, address(_2751))
                                                mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2543 + 261] = 85
                                                mem[64] = _2543 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2751)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2751)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2751)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2751) == arg3:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                        else:
                                            require idx < mem[96]
                                            _2752 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg3:
                                                mem[_2543 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_2543 + 241] = address(arg3)
                                                mem[_2543 + 189] = 40
                                                mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2543 + 294] = stor0
                                                mem[_2543 + 314] = sha3(mem[_2543 + 221 len 20], arg3)
                                                mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2543 + 261] = 85
                                                mem[64] = _2543 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2543 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2752) == address(_2752):
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                            else:
                                                mem[_2543 + 221] = address(arg3)
                                                mem[_2543 + 241] = address(_2752)
                                                mem[_2543 + 189] = 40
                                                mem[_2543 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2543 + 294] = stor0
                                                mem[_2543 + 314] = sha3(arg3, address(_2752))
                                                mem[_2543 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2543 + 261] = 85
                                                mem[64] = _2543 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2752)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2752)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2752)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2543 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2752) == arg3:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2543 + 378] = 3
                                                                                        mem[64] = _2543 + 506
                                                                                        mem[_2543 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2543 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2543 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2543 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                            else:
                                _2551 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2552 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2554 = sha3(mem[_2552 + 32 len mem[_2552]])
                                mem[_2551 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2551 + 105] = stor0
                                mem[_2551 + 125] = _2554
                                mem[_2551 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2551 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _2554, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require idx < mem[96]
                                    _2645 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2551 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2551 + 241] = address(arg3)
                                        mem[_2551 + 189] = 40
                                        mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2551 + 294] = stor0
                                        mem[_2551 + 314] = sha3(mem[_2551 + 221 len 20], arg3)
                                        mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2551 + 261] = 85
                                        mem[64] = _2551 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2645) == address(_2645):
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    else:
                                        mem[_2551 + 221] = address(arg3)
                                        mem[_2551 + 241] = address(_2645)
                                        mem[_2551 + 189] = 40
                                        mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2551 + 294] = stor0
                                        mem[_2551 + 314] = sha3(arg3, address(_2645))
                                        mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2551 + 261] = 85
                                        mem[64] = _2551 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2645) == arg3:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _2554, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _2554, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_2551 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg2 == address(_2476):
                                            require idx < mem[96]
                                            _2769 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg3:
                                                mem[_2551 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_2551 + 241] = address(arg3)
                                                mem[_2551 + 189] = 40
                                                mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2551 + 294] = stor0
                                                mem[_2551 + 314] = sha3(mem[_2551 + 221 len 20], arg3)
                                                mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2551 + 261] = 85
                                                mem[64] = _2551 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2769) == address(_2769):
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                            else:
                                                mem[_2551 + 221] = address(arg3)
                                                mem[_2551 + 241] = address(_2769)
                                                mem[_2551 + 189] = 40
                                                mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2551 + 294] = stor0
                                                mem[_2551 + 314] = sha3(arg3, address(_2769))
                                                mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2551 + 261] = 85
                                                mem[64] = _2551 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2769)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2769)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2769)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2769) == arg3:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                        else:
                                            require idx < mem[96]
                                            _2770 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg3:
                                                mem[_2551 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_2551 + 241] = address(arg3)
                                                mem[_2551 + 189] = 40
                                                mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2551 + 294] = stor0
                                                mem[_2551 + 314] = sha3(mem[_2551 + 221 len 20], arg3)
                                                mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2551 + 261] = 85
                                                mem[64] = _2551 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_2551 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2770) == address(_2770):
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                            else:
                                                mem[_2551 + 221] = address(arg3)
                                                mem[_2551 + 241] = address(_2770)
                                                mem[_2551 + 189] = 40
                                                mem[_2551 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_2551 + 294] = stor0
                                                mem[_2551 + 314] = sha3(arg3, address(_2770))
                                                mem[_2551 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_2551 + 261] = 85
                                                mem[64] = _2551 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg3, address(_2770)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    if arg5 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2770)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_2770)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_2551 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_2770) == arg3:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if arg5 <= 0:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)
                                                                        if 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) <= 0:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                idx = idx + 1
                                                                                continue 
                                                                            else:
                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                else:
                                                                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5))
                                                                                    if 997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg5)) <= 0:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_2551 + 378] = 3
                                                                                        mem[64] = _2551 + 506
                                                                                        mem[_2551 + 410 len 96] = code.data[3384 len 96]
                                                                                        mem[_2551 + 410] = arg2
                                                                                        require idx < mem[96]
                                                                                        mem[_2551 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                        mem[_2551 + 474] = arg3
                                                                                        idx = idx + 1
                                                                                        continue 
                        else:
                            idx = idx + 1
                            continue 
            _3612 = mem[96]
            idx = 0
            while idx <= _3612:
                if idx >= mem[96]:
                    if arg3 < arg2:
                        _3648 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _3649 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3651 = sha3(mem[_3649 + 32 len mem[_3649]])
                        mem[_3648 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3648 + 105] = stor0
                        mem[_3648 + 125] = _3651
                        mem[_3648 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3648 + 72] = 85
                        mem[64] = _3648 + 189
                        if ext_code.size(sha3(0, stor0, _3651, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _3651, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _3651, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3648 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg3 == arg3:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                    else:
                        _3656 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _3657 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3659 = sha3(mem[_3657 + 32 len mem[_3657]])
                        mem[_3656 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3656 + 105] = stor0
                        mem[_3656 + 125] = _3659
                        mem[_3656 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3656 + 72] = 85
                        mem[64] = _3656 + 189
                        if ext_code.size(sha3(0, stor0, _3659, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            require ext_code.size(address(sha3(0, stor0, _3659, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _3659, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3656 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if arg3 == arg2:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == arg3:
                        idx = idx + 1
                        continue 
                    else:
                        require idx < mem[96]
                        if mem[(32 * idx) + 140 len 20] != arg2:
                            require idx < mem[96]
                            _3664 = mem[(32 * idx) + 128]
                            if arg3 < mem[(32 * idx) + 140 len 20]:
                                _3693 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3664)
                                _3694 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3696 = sha3(mem[_3694 + 32 len mem[_3694]])
                                mem[_3693 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3693 + 105] = stor0
                                mem[_3693 + 125] = _3696
                                mem[_3693 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3693 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _3696, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require idx < mem[96]
                                    _3737 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3693 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3693 + 241] = address(arg2)
                                        mem[_3693 + 189] = 40
                                        mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3693 + 294] = stor0
                                        mem[_3693 + 314] = sha3(mem[_3693 + 221 len 20], arg2)
                                        mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3693 + 261] = 85
                                        mem[64] = _3693 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3737) == address(_3737):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        mem[_3693 + 221] = address(arg2)
                                        mem[_3693 + 241] = address(_3737)
                                        mem[_3693 + 189] = 40
                                        mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3693 + 294] = stor0
                                        mem[_3693 + 314] = sha3(arg2, address(_3737))
                                        mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3693 + 261] = 85
                                        mem[64] = _3693 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3737)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3737)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3737)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3737) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _3696, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _3696, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_3693 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg3 == arg3:
                                            require idx < mem[96]
                                            _3813 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg2:
                                                mem[_3693 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_3693 + 241] = address(arg2)
                                                mem[_3693 + 189] = 40
                                                mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3693 + 294] = stor0
                                                mem[_3693 + 314] = sha3(mem[_3693 + 221 len 20], arg2)
                                                mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3693 + 261] = 85
                                                mem[64] = _3693 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3813) == address(_3813):
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                            else:
                                                mem[_3693 + 221] = address(arg2)
                                                mem[_3693 + 241] = address(_3813)
                                                mem[_3693 + 189] = 40
                                                mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3693 + 294] = stor0
                                                mem[_3693 + 314] = sha3(arg2, address(_3813))
                                                mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3693 + 261] = 85
                                                mem[64] = _3693 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3813)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3813)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3813)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3813) == arg2:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                        else:
                                            require idx < mem[96]
                                            _3814 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg2:
                                                mem[_3693 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_3693 + 241] = address(arg2)
                                                mem[_3693 + 189] = 40
                                                mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3693 + 294] = stor0
                                                mem[_3693 + 314] = sha3(mem[_3693 + 221 len 20], arg2)
                                                mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3693 + 261] = 85
                                                mem[64] = _3693 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3693 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3814) == address(_3814):
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                            else:
                                                mem[_3693 + 221] = address(arg2)
                                                mem[_3693 + 241] = address(_3814)
                                                mem[_3693 + 189] = 40
                                                mem[_3693 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3693 + 294] = stor0
                                                mem[_3693 + 314] = sha3(arg2, address(_3814))
                                                mem[_3693 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3693 + 261] = 85
                                                mem[64] = _3693 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3814)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3814)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3814)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3693 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3814) == arg2:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                            else:
                                _3701 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3702 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3704 = sha3(mem[_3702 + 32 len mem[_3702]])
                                mem[_3701 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3701 + 105] = stor0
                                mem[_3701 + 125] = _3704
                                mem[_3701 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3701 + 72] = 85
                                if ext_code.size(sha3(0, stor0, _3704, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                    require idx < mem[96]
                                    _3739 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3701 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3701 + 241] = address(arg2)
                                        mem[_3701 + 189] = 40
                                        mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3701 + 294] = stor0
                                        mem[_3701 + 314] = sha3(mem[_3701 + 221 len 20], arg2)
                                        mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3701 + 261] = 85
                                        mem[64] = _3701 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3739) == address(_3739):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        mem[_3701 + 221] = address(arg2)
                                        mem[_3701 + 241] = address(_3739)
                                        mem[_3701 + 189] = 40
                                        mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3701 + 294] = stor0
                                        mem[_3701 + 314] = sha3(arg2, address(_3739))
                                        mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3701 + 261] = 85
                                        mem[64] = _3701 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3739)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3739)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3739)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3739) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    require ext_code.size(address(sha3(0, stor0, _3704, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, _3704, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_3701 + 189 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        if arg3 == address(_3664):
                                            require idx < mem[96]
                                            _3831 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg2:
                                                mem[_3701 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_3701 + 241] = address(arg2)
                                                mem[_3701 + 189] = 40
                                                mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3701 + 294] = stor0
                                                mem[_3701 + 314] = sha3(mem[_3701 + 221 len 20], arg2)
                                                mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3701 + 261] = 85
                                                mem[64] = _3701 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3831) == address(_3831):
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                            else:
                                                mem[_3701 + 221] = address(arg2)
                                                mem[_3701 + 241] = address(_3831)
                                                mem[_3701 + 189] = 40
                                                mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3701 + 294] = stor0
                                                mem[_3701 + 314] = sha3(arg2, address(_3831))
                                                mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3701 + 261] = 85
                                                mem[64] = _3701 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3831)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3831)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3831)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3831) == arg2:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                        else:
                                            require idx < mem[96]
                                            _3832 = mem[(32 * idx) + 128]
                                            if mem[(32 * idx) + 140 len 20] < arg2:
                                                mem[_3701 + 221] = address(mem[(32 * idx) + 128])
                                                mem[_3701 + 241] = address(arg2)
                                                mem[_3701 + 189] = 40
                                                mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3701 + 294] = stor0
                                                mem[_3701 + 314] = sha3(mem[_3701 + 221 len 20], arg2)
                                                mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3701 + 261] = 85
                                                mem[64] = _3701 + 378
                                                if ext_code.size(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, mem[_3701 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3832) == address(_3832):
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                            else:
                                                mem[_3701 + 221] = address(arg2)
                                                mem[_3701 + 241] = address(_3832)
                                                mem[_3701 + 189] = 40
                                                mem[_3701 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                mem[_3701 + 294] = stor0
                                                mem[_3701 + 314] = sha3(arg2, address(_3832))
                                                mem[_3701 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                                mem[_3701 + 261] = 85
                                                mem[64] = _3701 + 378
                                                if ext_code.size(sha3(0, stor0, sha3(arg2, address(_3832)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3832)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                    staticcall address(sha3(0, stor0, sha3(arg2, address(_3832)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_3701 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if address(_3832) == arg2:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                        else:
                            idx = idx + 1
                            continue 
            if not mem[96]:
                idx = arg5 + arg6
                continue 
            else:
                if mem[96]:
                    if -arg5 > 0:
                        idx = arg5 + arg6
                        continue 
                    else:
                        idx = arg5 + arg6
                        continue 
                else:
                    idx = arg5 + arg6
                    continue 
    _1206 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_1206 + 160] = mem[96]
    _1208 = mem[96]
    mem[_1206 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_1206 + 32] = (32 * mem[96]) + 192
    mem[(32 * _1208) + _1206 + 192] = mem[96]
    mem[(32 * _1208) + _1206 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _1208) + _1206 + -mem[64] + 224
}



}
