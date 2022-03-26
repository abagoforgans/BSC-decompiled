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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3408 len 96]
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
        _1286 = mem[96]
        u = 0
        while u <= _1286:
            if u >= mem[96]:
                if arg2 < arg3:
                    _1305 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1306 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1308 = sha3(mem[_1306 + 32 len mem[_1306]])
                    mem[_1305 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1305 + 105] = stor0
                    mem[_1305 + 125] = _1308
                    mem[_1305 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1305 + 72] = 85
                    mem[64] = _1305 + 189
                    if ext_code.size(sha3(0, stor0, _1308, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1308, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1308, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1305 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg2:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1305 + 189] = 2
                                            mem[64] = _1305 + 285
                                            mem[_1305 + 221] = arg2
                                            mem[_1305 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1305 + 189] = 2
                                            mem[64] = _1305 + 285
                                            mem[_1305 + 221] = arg2
                                            mem[_1305 + 253] = arg3
                else:
                    _1313 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1314 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1316 = sha3(mem[_1314 + 32 len mem[_1314]])
                    mem[_1313 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1313 + 105] = stor0
                    mem[_1313 + 125] = _1316
                    mem[_1313 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1313 + 72] = 85
                    mem[64] = _1313 + 189
                    if ext_code.size(sha3(0, stor0, _1316, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1316, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1316, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1313 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg3:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1313 + 189] = 2
                                            mem[64] = _1313 + 285
                                            mem[_1313 + 221] = arg2
                                            mem[_1313 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1313 + 189] = 2
                                            mem[64] = _1313 + 285
                                            mem[_1313 + 221] = arg2
                                            mem[_1313 + 253] = arg3
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg2:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg3:
                        require u < mem[96]
                        _1321 = mem[(32 * u) + 128]
                        if arg2 < mem[(32 * u) + 140 len 20]:
                            _1361 = mem[64]
                            mem[mem[64] + 32] = address(arg2)
                            mem[mem[64] + 52] = address(_1321)
                            _1362 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1364 = sha3(mem[_1362 + 32 len mem[_1362]])
                            mem[_1361 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1361 + 105] = stor0
                            mem[_1361 + 125] = _1364
                            mem[_1361 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1361 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1364, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1443 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1361 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1361 + 241] = address(arg3)
                                    mem[_1361 + 189] = 40
                                    mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1361 + 294] = stor0
                                    mem[_1361 + 314] = sha3(mem[_1361 + 221 len 20], arg3)
                                    mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1361 + 261] = 85
                                    mem[64] = _1361 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1361 + 221] = address(arg3)
                                    mem[_1361 + 241] = address(_1443)
                                    mem[_1361 + 189] = 40
                                    mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1361 + 294] = stor0
                                    mem[_1361 + 314] = sha3(arg3, address(_1443))
                                    mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1361 + 261] = 85
                                    mem[64] = _1361 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1364, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1364, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1361 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == arg2:
                                    _1489 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1361 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1361 + 241] = address(arg3)
                                        mem[_1361 + 189] = 40
                                        mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1361 + 294] = stor0
                                        mem[_1361 + 314] = sha3(mem[_1361 + 221 len 20], arg3)
                                        mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1361 + 261] = 85
                                        mem[64] = _1361 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1489) == address(_1489):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
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
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
                                    else:
                                        mem[_1361 + 221] = address(arg3)
                                        mem[_1361 + 241] = address(_1489)
                                        mem[_1361 + 189] = 40
                                        mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1361 + 294] = stor0
                                        mem[_1361 + 314] = sha3(arg3, address(_1489))
                                        mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1361 + 261] = 85
                                        mem[64] = _1361 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1489)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1489)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1489)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1489) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
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
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
                                else:
                                    _1490 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1361 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1361 + 241] = address(arg3)
                                        mem[_1361 + 189] = 40
                                        mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1361 + 294] = stor0
                                        mem[_1361 + 314] = sha3(mem[_1361 + 221 len 20], arg3)
                                        mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1361 + 261] = 85
                                        mem[64] = _1361 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1361 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1490) == address(_1490):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
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
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
                                    else:
                                        mem[_1361 + 221] = address(arg3)
                                        mem[_1361 + 241] = address(_1490)
                                        mem[_1361 + 189] = 40
                                        mem[_1361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1361 + 294] = stor0
                                        mem[_1361 + 314] = sha3(arg3, address(_1490))
                                        mem[_1361 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1361 + 261] = 85
                                        mem[64] = _1361 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1490)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1490)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1490)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1361 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1490) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
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
                                                                            mem[_1361 + 378] = 3
                                                                            mem[64] = _1361 + 506
                                                                            mem[_1361 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1361 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1361 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1361 + 474] = arg3
                        else:
                            _1369 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg2)
                            _1370 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1372 = sha3(mem[_1370 + 32 len mem[_1370]])
                            mem[_1369 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1369 + 105] = stor0
                            mem[_1369 + 125] = _1372
                            mem[_1369 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1369 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1372, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _1445 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg3:
                                    mem[_1369 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1369 + 241] = address(arg3)
                                    mem[_1369 + 189] = 40
                                    mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1369 + 294] = stor0
                                    mem[_1369 + 314] = sha3(mem[_1369 + 221 len 20], arg3)
                                    mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1369 + 261] = 85
                                    mem[64] = _1369 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1369 + 221] = address(arg3)
                                    mem[_1369 + 241] = address(_1445)
                                    mem[_1369 + 189] = 40
                                    mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1369 + 294] = stor0
                                    mem[_1369 + 314] = sha3(arg3, address(_1445))
                                    mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1369 + 261] = 85
                                    mem[64] = _1369 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1445)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1445)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1445)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1372, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1372, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1369 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg2 == address(_1321):
                                    _1507 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1369 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1369 + 241] = address(arg3)
                                        mem[_1369 + 189] = 40
                                        mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1369 + 294] = stor0
                                        mem[_1369 + 314] = sha3(mem[_1369 + 221 len 20], arg3)
                                        mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1369 + 261] = 85
                                        mem[64] = _1369 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1507) == address(_1507):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
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
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
                                    else:
                                        mem[_1369 + 221] = address(arg3)
                                        mem[_1369 + 241] = address(_1507)
                                        mem[_1369 + 189] = 40
                                        mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1369 + 294] = stor0
                                        mem[_1369 + 314] = sha3(arg3, address(_1507))
                                        mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1369 + 261] = 85
                                        mem[64] = _1369 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1507)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1507)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1507)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1507) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
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
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
                                else:
                                    _1508 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg3:
                                        mem[_1369 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1369 + 241] = address(arg3)
                                        mem[_1369 + 189] = 40
                                        mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1369 + 294] = stor0
                                        mem[_1369 + 314] = sha3(mem[_1369 + 221 len 20], arg3)
                                        mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1369 + 261] = 85
                                        mem[64] = _1369 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1369 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1508) == address(_1508):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
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
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
                                    else:
                                        mem[_1369 + 221] = address(arg3)
                                        mem[_1369 + 241] = address(_1508)
                                        mem[_1369 + 189] = 40
                                        mem[_1369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1369 + 294] = stor0
                                        mem[_1369 + 314] = sha3(arg3, address(_1508))
                                        mem[_1369 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1369 + 261] = 85
                                        mem[64] = _1369 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1508)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1508)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1508)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1369 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1508) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
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
                                                                            mem[_1369 + 378] = 3
                                                                            mem[64] = _1369 + 506
                                                                            mem[_1369 + 410 len 96] = code.data[3408 len 96]
                                                                            mem[_1369 + 410] = arg2
                                                                            require u < mem[96]
                                                                            mem[_1369 + 442] = mem[(32 * u) + 140 len 20]
                                                                            mem[_1369 + 474] = arg3
            u = u + 1
            continue 
        _1929 = mem[96]
        u = 0
        while u <= _1929:
            if u >= mem[96]:
                if arg3 < arg2:
                    _1949 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1950 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1952 = sha3(mem[_1950 + 32 len mem[_1950]])
                    mem[_1949 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1949 + 105] = stor0
                    mem[_1949 + 125] = _1952
                    mem[_1949 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1949 + 72] = 85
                    mem[64] = _1949 + 189
                    if ext_code.size(sha3(0, stor0, _1952, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1952, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1952, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1949 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                else:
                    _1957 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1958 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1960 = sha3(mem[_1958 + 32 len mem[_1958]])
                    mem[_1957 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1957 + 105] = stor0
                    mem[_1957 + 125] = _1960
                    mem[_1957 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1957 + 72] = 85
                    mem[64] = _1957 + 189
                    if ext_code.size(sha3(0, stor0, _1960, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1960, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1960, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1957 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
            else:
                require u < mem[96]
                if mem[(32 * u) + 140 len 20] != arg3:
                    require u < mem[96]
                    if mem[(32 * u) + 140 len 20] != arg2:
                        require u < mem[96]
                        _1965 = mem[(32 * u) + 128]
                        if arg3 < mem[(32 * u) + 140 len 20]:
                            _1997 = mem[64]
                            mem[mem[64] + 32] = address(arg3)
                            mem[mem[64] + 52] = address(_1965)
                            _1998 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2000 = sha3(mem[_1998 + 32 len mem[_1998]])
                            mem[_1997 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1997 + 105] = stor0
                            mem[_1997 + 125] = _2000
                            mem[_1997 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1997 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2000, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2031 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_1997 + 221] = address(mem[(32 * u) + 128])
                                    mem[_1997 + 241] = address(arg2)
                                    mem[_1997 + 189] = 40
                                    mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1997 + 294] = stor0
                                    mem[_1997 + 314] = sha3(mem[_1997 + 221 len 20], arg2)
                                    mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1997 + 261] = 85
                                    mem[64] = _1997 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1997 + 221] = address(arg2)
                                    mem[_1997 + 241] = address(_2031)
                                    mem[_1997 + 189] = 40
                                    mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1997 + 294] = stor0
                                    mem[_1997 + 314] = sha3(arg2, address(_2031))
                                    mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1997 + 261] = 85
                                    mem[64] = _1997 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2031)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2031)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2031)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2000, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2000, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1997 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == arg3:
                                    _2061 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_1997 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1997 + 241] = address(arg2)
                                        mem[_1997 + 189] = 40
                                        mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1997 + 294] = stor0
                                        mem[_1997 + 314] = sha3(mem[_1997 + 221 len 20], arg2)
                                        mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1997 + 261] = 85
                                        mem[64] = _1997 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1997 + 221] = address(arg2)
                                        mem[_1997 + 241] = address(_2061)
                                        mem[_1997 + 189] = 40
                                        mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1997 + 294] = stor0
                                        mem[_1997 + 314] = sha3(arg2, address(_2061))
                                        mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1997 + 261] = 85
                                        mem[64] = _1997 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2061)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2061)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2061)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2062 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_1997 + 221] = address(mem[(32 * u) + 128])
                                        mem[_1997 + 241] = address(arg2)
                                        mem[_1997 + 189] = 40
                                        mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1997 + 294] = stor0
                                        mem[_1997 + 314] = sha3(mem[_1997 + 221 len 20], arg2)
                                        mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1997 + 261] = 85
                                        mem[64] = _1997 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1997 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1997 + 221] = address(arg2)
                                        mem[_1997 + 241] = address(_2062)
                                        mem[_1997 + 189] = 40
                                        mem[_1997 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1997 + 294] = stor0
                                        mem[_1997 + 314] = sha3(arg2, address(_2062))
                                        mem[_1997 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1997 + 261] = 85
                                        mem[64] = _1997 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2062)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2062)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2062)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1997 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                        else:
                            _2005 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * u) + 128])
                            mem[mem[64] + 52] = address(arg3)
                            _2006 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2008 = sha3(mem[_2006 + 32 len mem[_2006]])
                            mem[_2005 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2005 + 105] = stor0
                            mem[_2005 + 125] = _2008
                            mem[_2005 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_2005 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _2008, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require u < mem[96]
                                _2033 = mem[(32 * u) + 128]
                                if mem[(32 * u) + 140 len 20] < arg2:
                                    mem[_2005 + 221] = address(mem[(32 * u) + 128])
                                    mem[_2005 + 241] = address(arg2)
                                    mem[_2005 + 189] = 40
                                    mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2005 + 294] = stor0
                                    mem[_2005 + 314] = sha3(mem[_2005 + 221 len 20], arg2)
                                    mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2005 + 261] = 85
                                    mem[64] = _2005 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_2005 + 221] = address(arg2)
                                    mem[_2005 + 241] = address(_2033)
                                    mem[_2005 + 189] = 40
                                    mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2005 + 294] = stor0
                                    mem[_2005 + 314] = sha3(arg2, address(_2033))
                                    mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2005 + 261] = 85
                                    mem[64] = _2005 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2033)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2033)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_2033)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _2008, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2008, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2005 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require u < mem[96]
                                if arg3 == address(_1965):
                                    _2079 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2005 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2005 + 241] = address(arg2)
                                        mem[_2005 + 189] = 40
                                        mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2005 + 294] = stor0
                                        mem[_2005 + 314] = sha3(mem[_2005 + 221 len 20], arg2)
                                        mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2005 + 261] = 85
                                        mem[64] = _2005 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2005 + 221] = address(arg2)
                                        mem[_2005 + 241] = address(_2079)
                                        mem[_2005 + 189] = 40
                                        mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2005 + 294] = stor0
                                        mem[_2005 + 314] = sha3(arg2, address(_2079))
                                        mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2005 + 261] = 85
                                        mem[64] = _2005 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2079)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2079)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2079)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _2080 = mem[(32 * u) + 128]
                                    if mem[(32 * u) + 140 len 20] < arg2:
                                        mem[_2005 + 221] = address(mem[(32 * u) + 128])
                                        mem[_2005 + 241] = address(arg2)
                                        mem[_2005 + 189] = 40
                                        mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2005 + 294] = stor0
                                        mem[_2005 + 314] = sha3(mem[_2005 + 221 len 20], arg2)
                                        mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2005 + 261] = 85
                                        mem[64] = _2005 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2005 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_2005 + 221] = address(arg2)
                                        mem[_2005 + 241] = address(_2080)
                                        mem[_2005 + 189] = 40
                                        mem[_2005 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2005 + 294] = stor0
                                        mem[_2005 + 314] = sha3(arg2, address(_2080))
                                        mem[_2005 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2005 + 261] = 85
                                        mem[64] = _2005 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_2080)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_2080)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_2080)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2005 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
            u = u + 1
            continue 
        if not mem[96]:
            _1939 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_1939 + 160] = mem[96]
            _1941 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_1939 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_1939 + 32] = (32 * mem[96]) + 192
            mem[(32 * _1941) + _1939 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _1941) + _1939 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _1941) + _1939 + -mem[64] + 224
        if not mem[96]:
            _1942 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_1942 + 160] = mem[96]
            _1944 = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[_1942 + s + 192] = mem[s + 128]
                s = s + 32
                continue 
            mem[_1942 + 32] = (32 * mem[96]) + 192
            mem[(32 * _1944) + _1942 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _1944) + _1942 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _1944) + _1942 + -mem[64] + 224
        if -idx > s:
            if idx < arg5:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = -idx
                    t = idx
                    continue 
                idx = idx + arg6
                s = -idx
                t = idx
                continue 
            _1971 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_1971 + 160] = mem[96]
            _1973 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_1971 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_1971 + 32] = (32 * mem[96]) + 192
            mem[(32 * _1973) + _1971 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _1973) + _1971 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _1973) + _1971 + -mem[64] + 224
        if s:
            if idx < arg5:
                if arg5 - idx < arg6:
                    idx = arg5
                    s = s
                    t = t
                    continue 
                idx = idx + arg6
                s = s
                t = t
                continue 
            _1974 = mem[64]
            mem[mem[64] + 64] = t
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = s
            mem[mem[64]] = 160
            mem[_1974 + 160] = mem[96]
            _1976 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_1974 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_1974 + 32] = (32 * mem[96]) + 192
            mem[(32 * _1976) + _1974 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _1976) + _1974 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _1976) + _1974 + -mem[64] + 224
        if idx < arg5:
            if arg5 - idx < arg6:
                idx = arg5
                s = -idx
                t = idx
                continue 
            idx = idx + arg6
            s = -idx
            t = idx
            continue 
        _1979 = mem[64]
        mem[mem[64] + 64] = idx
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = -idx
        mem[mem[64]] = 160
        mem[_1979 + 160] = mem[96]
        _1981 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[_1979 + idx + 192] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_1979 + 32] = (32 * mem[96]) + 192
        mem[(32 * _1981) + _1979 + 192] = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[(32 * _1981) + _1979 + idx + 224] = mem[idx + 128]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _1981) + _1979 + -mem[64] + 224
    _640 = mem[64]
    mem[mem[64] + 64] = t
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = s
    mem[mem[64]] = 160
    mem[_640 + 160] = mem[96]
    _642 = mem[96]
    mem[_640 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_640 + 32] = (32 * mem[96]) + 192
    mem[(32 * _642) + _640 + 192] = mem[96]
    mem[(32 * _642) + _640 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _642) + _640 + -mem[64] + 224
}



}
