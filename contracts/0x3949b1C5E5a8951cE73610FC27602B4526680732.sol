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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3432 len 96]
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
        _1366 = mem[96]
        u = 0
        while u <= _1366:
            if u >= mem[96]:
                if arg2 < arg3:
                    _1385 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1386 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1388 = sha3(mem[_1386 + 32 len mem[_1386]])
                    mem[_1385 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1385 + 105] = stor0
                    mem[_1385 + 125] = _1388
                    mem[_1385 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1385 + 72] = 85
                    mem[64] = _1385 + 189
                    if ext_code.size(sha3(0, stor0, _1388, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1388, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1388, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1385 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg2:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1385 + 189] = 2
                                            mem[64] = _1385 + 285
                                            mem[_1385 + 221] = arg2
                                            mem[_1385 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1385 + 189] = 2
                                            mem[64] = _1385 + 285
                                            mem[_1385 + 221] = arg2
                                            mem[_1385 + 253] = arg3
                else:
                    _1393 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1394 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1396 = sha3(mem[_1394 + 32 len mem[_1394]])
                    mem[_1393 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1393 + 105] = stor0
                    mem[_1393 + 125] = _1396
                    mem[_1393 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1393 + 72] = 85
                    mem[64] = _1393 + 189
                    if ext_code.size(sha3(0, stor0, _1396, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1396, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1396, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1393 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg3:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1393 + 189] = 2
                                            mem[64] = _1393 + 285
                                            mem[_1393 + 221] = arg2
                                            mem[_1393 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1393 + 189] = 2
                                            mem[64] = _1393 + 285
                                            mem[_1393 + 221] = arg2
                                            mem[_1393 + 253] = arg3
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg2:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg3:
                        require u < mem[96]
                        _1401 = mem[(32 * u) + 128]
                        if arg2 < mem[(32 * u) + 140 len 20]:
                            _1441 = mem[64]
                            mem[mem[64] + 32] = address(arg2)
                            mem[mem[64] + 52] = address(_1401)
                            _1442 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1444 = sha3(mem[_1442 + 32 len mem[_1442]])
                            mem[_1441 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1441 + 105] = stor0
                            mem[_1441 + 125] = _1444
                            mem[_1441 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1441 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1444, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1541 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1441 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1441 + 241] = address(arg3)
                                    mem[_1441 + 189] = 40
                                    mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1441 + 294] = stor0
                                    mem[_1441 + 314] = sha3(mem[_1441 + 221 len 20], arg3)
                                    mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1441 + 261] = 85
                                    mem[64] = _1441 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1441 + 221] = address(arg3)
                                    mem[_1441 + 241] = address(_1541)
                                    mem[_1441 + 189] = 40
                                    mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1441 + 294] = stor0
                                    mem[_1441 + 314] = sha3(arg3, address(_1541))
                                    mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1441 + 261] = 85
                                    mem[64] = _1441 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1541)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1541)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1541)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1444, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1444, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1441 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == arg2:
                                    _1617 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1441 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1441 + 241] = address(arg3)
                                        mem[_1441 + 189] = 40
                                        mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1441 + 294] = stor0
                                        mem[_1441 + 314] = sha3(mem[_1441 + 221 len 20], arg3)
                                        mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1441 + 261] = 85
                                        mem[64] = _1441 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1617) == address(_1617):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
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
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
                                    else:
                                        mem[_1441 + 221] = address(arg3)
                                        mem[_1441 + 241] = address(_1617)
                                        mem[_1441 + 189] = 40
                                        mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1441 + 294] = stor0
                                        mem[_1441 + 314] = sha3(arg3, address(_1617))
                                        mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1441 + 261] = 85
                                        mem[64] = _1441 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1617)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1617)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1617)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1617) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
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
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
                                else:
                                    _1618 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1441 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1441 + 241] = address(arg3)
                                        mem[_1441 + 189] = 40
                                        mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1441 + 294] = stor0
                                        mem[_1441 + 314] = sha3(mem[_1441 + 221 len 20], arg3)
                                        mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1441 + 261] = 85
                                        mem[64] = _1441 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1441 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1618) == address(_1618):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
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
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
                                    else:
                                        mem[_1441 + 221] = address(arg3)
                                        mem[_1441 + 241] = address(_1618)
                                        mem[_1441 + 189] = 40
                                        mem[_1441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1441 + 294] = stor0
                                        mem[_1441 + 314] = sha3(arg3, address(_1618))
                                        mem[_1441 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1441 + 261] = 85
                                        mem[64] = _1441 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1618)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1618)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1618)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1441 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1618) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
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
                                                                            mem[_1441 + 378] = 3
                                                                            mem[64] = _1441 + 506
                                                                            mem[_1441 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1441 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1441 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1441 + 474] = arg3
                        else:
                            _1449 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg2)
                            _1450 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1452 = sha3(mem[_1450 + 32 len mem[_1450]])
                            mem[_1449 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1449 + 105] = stor0
                            mem[_1449 + 125] = _1452
                            mem[_1449 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1449 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1452, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1543 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1449 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1449 + 241] = address(arg3)
                                    mem[_1449 + 189] = 40
                                    mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1449 + 294] = stor0
                                    mem[_1449 + 314] = sha3(mem[_1449 + 221 len 20], arg3)
                                    mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1449 + 261] = 85
                                    mem[64] = _1449 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1449 + 221] = address(arg3)
                                    mem[_1449 + 241] = address(_1543)
                                    mem[_1449 + 189] = 40
                                    mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1449 + 294] = stor0
                                    mem[_1449 + 314] = sha3(arg3, address(_1543))
                                    mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1449 + 261] = 85
                                    mem[64] = _1449 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1543)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1543)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1543)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1452, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1452, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1449 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == address(_1401):
                                    _1635 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1449 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1449 + 241] = address(arg3)
                                        mem[_1449 + 189] = 40
                                        mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1449 + 294] = stor0
                                        mem[_1449 + 314] = sha3(mem[_1449 + 221 len 20], arg3)
                                        mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1449 + 261] = 85
                                        mem[64] = _1449 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1635) == address(_1635):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
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
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
                                    else:
                                        mem[_1449 + 221] = address(arg3)
                                        mem[_1449 + 241] = address(_1635)
                                        mem[_1449 + 189] = 40
                                        mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1449 + 294] = stor0
                                        mem[_1449 + 314] = sha3(arg3, address(_1635))
                                        mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1449 + 261] = 85
                                        mem[64] = _1449 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1635)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1635)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1635)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1635) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
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
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
                                else:
                                    _1636 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1449 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1449 + 241] = address(arg3)
                                        mem[_1449 + 189] = 40
                                        mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1449 + 294] = stor0
                                        mem[_1449 + 314] = sha3(mem[_1449 + 221 len 20], arg3)
                                        mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1449 + 261] = 85
                                        mem[64] = _1449 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1449 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1636) == address(_1636):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
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
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
                                    else:
                                        mem[_1449 + 221] = address(arg3)
                                        mem[_1449 + 241] = address(_1636)
                                        mem[_1449 + 189] = 40
                                        mem[_1449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1449 + 294] = stor0
                                        mem[_1449 + 314] = sha3(arg3, address(_1636))
                                        mem[_1449 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1449 + 261] = 85
                                        mem[64] = _1449 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1449 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1636) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
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
                                                                            mem[_1449 + 378] = 3
                                                                            mem[64] = _1449 + 506
                                                                            mem[_1449 + 410 len 96] = code.data[3432 len 96]
                                                                            mem[_1449 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1449 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1449 + 474] = arg3
            u = u + 1
            continue 
        _2057 = mem[96]
        u = 0
        while u <= _2057:
            if u >= mem[96]:
                if arg3 < arg2:
                    _2077 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _2078 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2080 = sha3(mem[_2078 + 32 len mem[_2078]])
                    mem[_2077 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2077 + 105] = stor0
                    mem[_2077 + 125] = _2080
                    mem[_2077 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2077 + 72] = 85
                    mem[64] = _2077 + 189
                    if ext_code.size(sha3(0, stor0, _2080, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _2080, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2080, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2077 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                else:
                    _2085 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _2086 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2088 = sha3(mem[_2086 + 32 len mem[_2086]])
                    mem[_2085 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2085 + 105] = stor0
                    mem[_2085 + 125] = _2088
                    mem[_2085 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2085 + 72] = 85
                    mem[64] = _2085 + 189
                    if ext_code.size(sha3(0, stor0, _2088, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _2088, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2088, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2085 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg3:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg2:
                        require u < mem[96]
                        _2093 = mem[(32 * u) + 128]
                        if arg3 < mem[(32 * u) + 140 len 20]:
                            _2122 = mem[64]
                            mem[mem[64] + 32] = address(arg3)
                            mem[mem[64] + 52] = address(_2093)
                            _2123 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2125 = sha3(mem[_2123 + 32 len mem[_2123]])
                            mem[_2122 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2122 + 105] = stor0
                            mem[_2122 + 125] = _2125
                            mem[_2122 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_2122 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2125, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2207 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_2122 + 221] = address(mem[(32 * u) + 128])
                                    mem[_2122 + 241] = address(arg2)
                                    mem[_2122 + 189] = 40
                                    mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2122 + 294] = stor0
                                    mem[_2122 + 314] = sha3(mem[_2122 + 221 len 20], arg2)
                                    mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2122 + 261] = 85
                                    mem[64] = _2122 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_2122 + 221] = address(arg2)
                                    mem[_2122 + 241] = address(_2207)
                                    mem[_2122 + 189] = 40
                                    mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2122 + 294] = stor0
                                    mem[_2122 + 314] = sha3(arg2, address(_2207))
                                    mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2122 + 261] = 85
                                    mem[64] = _2122 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2207)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2207)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2207)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2125, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2125, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2122 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == arg3:
                                    _2237 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2122 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2122 + 241] = address(arg2)
                                        mem[_2122 + 189] = 40
                                        mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2122 + 294] = stor0
                                        mem[_2122 + 314] = sha3(mem[_2122 + 221 len 20], arg2)
                                        mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2122 + 261] = 85
                                        mem[64] = _2122 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2122 + 221] = address(arg2)
                                        mem[_2122 + 241] = address(_2237)
                                        mem[_2122 + 189] = 40
                                        mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2122 + 294] = stor0
                                        mem[_2122 + 314] = sha3(arg2, address(_2237))
                                        mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2122 + 261] = 85
                                        mem[64] = _2122 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2237)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2237)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2237)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2238 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2122 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2122 + 241] = address(arg2)
                                        mem[_2122 + 189] = 40
                                        mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2122 + 294] = stor0
                                        mem[_2122 + 314] = sha3(mem[_2122 + 221 len 20], arg2)
                                        mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2122 + 261] = 85
                                        mem[64] = _2122 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2122 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2122 + 221] = address(arg2)
                                        mem[_2122 + 241] = address(_2238)
                                        mem[_2122 + 189] = 40
                                        mem[_2122 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2122 + 294] = stor0
                                        mem[_2122 + 314] = sha3(arg2, address(_2238))
                                        mem[_2122 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2122 + 261] = 85
                                        mem[64] = _2122 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2238)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2238)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2238)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2122 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                        else:
                            _2130 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg3)
                            _2131 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2133 = sha3(mem[_2131 + 32 len mem[_2131]])
                            mem[_2130 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2130 + 105] = stor0
                            mem[_2130 + 125] = _2133
                            mem[_2130 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_2130 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2133, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2209 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_2130 + 221] = address(mem[(32 * u) + 128])
                                    mem[_2130 + 241] = address(arg2)
                                    mem[_2130 + 189] = 40
                                    mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2130 + 294] = stor0
                                    mem[_2130 + 314] = sha3(mem[_2130 + 221 len 20], arg2)
                                    mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2130 + 261] = 85
                                    mem[64] = _2130 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_2130 + 221] = address(arg2)
                                    mem[_2130 + 241] = address(_2209)
                                    mem[_2130 + 189] = 40
                                    mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2130 + 294] = stor0
                                    mem[_2130 + 314] = sha3(arg2, address(_2209))
                                    mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2130 + 261] = 85
                                    mem[64] = _2130 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2209)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2209)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2209)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2133, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2133, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2130 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == address(_2093):
                                    _2255 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2130 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2130 + 241] = address(arg2)
                                        mem[_2130 + 189] = 40
                                        mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2130 + 294] = stor0
                                        mem[_2130 + 314] = sha3(mem[_2130 + 221 len 20], arg2)
                                        mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2130 + 261] = 85
                                        mem[64] = _2130 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2130 + 221] = address(arg2)
                                        mem[_2130 + 241] = address(_2255)
                                        mem[_2130 + 189] = 40
                                        mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2130 + 294] = stor0
                                        mem[_2130 + 314] = sha3(arg2, address(_2255))
                                        mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2130 + 261] = 85
                                        mem[64] = _2130 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2255)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2255)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2255)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2256 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2130 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2130 + 241] = address(arg2)
                                        mem[_2130 + 189] = 40
                                        mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2130 + 294] = stor0
                                        mem[_2130 + 314] = sha3(mem[_2130 + 221 len 20], arg2)
                                        mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2130 + 261] = 85
                                        mem[64] = _2130 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2130 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2130 + 221] = address(arg2)
                                        mem[_2130 + 241] = address(_2256)
                                        mem[_2130 + 189] = 40
                                        mem[_2130 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2130 + 294] = stor0
                                        mem[_2130 + 314] = sha3(arg2, address(_2256))
                                        mem[_2130 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2130 + 261] = 85
                                        mem[64] = _2130 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2256)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2256)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2256)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2130 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
            u = u + 1
            continue 
        if not mem[96]:
            _2067 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2067 + 160] = mem[96]
            _2069 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2067 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2067 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2069) + _2067 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2069) + _2067 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2069) + _2067 + -mem[64] + 224
        if not mem[96]:
            _2070 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2070 + 160] = mem[96]
            _2072 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2070 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2070 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2072) + _2070 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2072) + _2070 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2072) + _2070 + -mem[64] + 224
        if -idx > s:
            if idx >= arg5:
                _2105 = mem[64]
                mem[mem[64] + 64] = idx
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = -idx
                mem[mem[64]] = 160
                mem[_2105 + 160] = mem[96]
                _2107 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2105 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2105 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2107) + _2105 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2107) + _2105 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2107) + _2105 + -mem[64] + 224
            if -idx <= 0:
                _2111 = mem[64]
                mem[mem[64] + 64] = idx
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = -idx
                mem[mem[64]] = 160
                mem[_2111 + 160] = mem[96]
                _2113 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2111 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2111 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2113) + _2111 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2113) + _2111 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2113) + _2111 + -mem[64] + 224
            if -idx >= -idx:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = -idx
                    t = idx
                    continue 
                idx = idx + arg6
                s = -idx
                t = idx
                continue 
            _2141 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_2141 + 160] = mem[96]
            _2143 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2141 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2141 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2143) + _2141 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2143) + _2141 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2143) + _2141 + -mem[64] + 224
        if s:
            if idx >= arg5:
                _2108 = mem[64]
                mem[mem[64] + 64] = t
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = s
                mem[mem[64]] = 160
                mem[_2108 + 160] = mem[96]
                _2110 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2108 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2108 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2110) + _2108 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2110) + _2108 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2110) + _2108 + -mem[64] + 224
            if s <= 0:
                _2114 = mem[64]
                mem[mem[64] + 64] = t
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = s
                mem[mem[64]] = 160
                mem[_2114 + 160] = mem[96]
                _2116 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[_2114 + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2114 + 32] = (32 * mem[96]) + 192
                mem[(32 * _2116) + _2114 + 192] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * _2116) + _2114 + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (32 * _2116) + _2114 + -mem[64] + 224
            if -idx >= s:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = s
                    t = t
                    continue 
                idx = idx + arg6
                s = s
                t = t
                continue 
            _2147 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_2147 + 160] = mem[96]
            _2149 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2147 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2147 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2149) + _2147 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2149) + _2147 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2149) + _2147 + -mem[64] + 224
        if idx >= arg5:
            _2117 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_2117 + 160] = mem[96]
            _2119 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2117 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2117 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2119) + _2117 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2119) + _2117 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2119) + _2117 + -mem[64] + 224
        if -idx <= 0:
            _2150 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_2150 + 160] = mem[96]
            _2152 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_2150 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_2150 + 32] = (32 * mem[96]) + 192
            mem[(32 * _2152) + _2150 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _2152) + _2150 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _2152) + _2150 + -mem[64] + 224
        if -idx >= -idx:
            if arg5 - idx < arg6:
                idx = arg5
                s = -idx
                t = idx
                continue 
            idx = idx + arg6
            s = -idx
            t = idx
            continue 
        _2168 = mem[64]
        mem[mem[64] + 64] = idx
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = -idx
        mem[mem[64]] = 160
        mem[_2168 + 160] = mem[96]
        _2170 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[_2168 + idx + 192] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_2168 + 32] = (32 * mem[96]) + 192
        mem[(32 * _2170) + _2168 + 192] = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[(32 * _2170) + _2168 + idx + 224] = mem[idx + 128]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _2170) + _2168 + -mem[64] + 224
    _672 = mem[64]
    mem[mem[64] + 64] = t
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = s
    mem[mem[64]] = 160
    mem[_672 + 160] = mem[96]
    _674 = mem[96]
    mem[_672 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_672 + 32] = (32 * mem[96]) + 192
    mem[(32 * _674) + _672 + 192] = mem[96]
    mem[(32 * _674) + _672 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _674) + _672 + -mem[64] + 224
}



}
