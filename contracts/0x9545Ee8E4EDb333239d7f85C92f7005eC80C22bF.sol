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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3410 len 96]
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
    while idx <= arg5:
        _1246 = mem[96]
        s = 0
        while s <= _1246:
            if s >= mem[96]:
                if arg2 < arg3:
                    _1265 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1266 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1268 = sha3(mem[_1266 + 32 len mem[_1266]])
                    mem[_1265 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1265 + 105] = stor0
                    mem[_1265 + 125] = _1268
                    mem[_1265 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1265 + 72] = 85
                    mem[64] = _1265 + 189
                    if ext_code.size(sha3(0, stor0, _1268, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1268, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1268, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1265 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg2:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1265 + 189] = 2
                                            mem[64] = _1265 + 285
                                            mem[_1265 + 221] = arg2
                                            mem[_1265 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1265 + 189] = 2
                                            mem[64] = _1265 + 285
                                            mem[_1265 + 221] = arg2
                                            mem[_1265 + 253] = arg3
                else:
                    _1273 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1274 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1276 = sha3(mem[_1274 + 32 len mem[_1274]])
                    mem[_1273 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1273 + 105] = stor0
                    mem[_1273 + 125] = _1276
                    mem[_1273 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1273 + 72] = 85
                    mem[64] = _1273 + 189
                    if ext_code.size(sha3(0, stor0, _1276, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1276, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1276, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1273 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg2 == arg3:
                            if idx > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    if ext_call.return_data[50 len 14] > 0:
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * idx) > 0:
                                            mem[_1273 + 189] = 2
                                            mem[64] = _1273 + 285
                                            mem[_1273 + 221] = arg2
                                            mem[_1273 + 253] = arg3
                        else:
                            if idx > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if ext_call.return_data[18 len 14] > 0:
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * idx)
                                        if 997 * idx * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * idx) > 0:
                                            mem[_1273 + 189] = 2
                                            mem[64] = _1273 + 285
                                            mem[_1273 + 221] = arg2
                                            mem[_1273 + 253] = arg3
            else:
                require s < mem[96]
                if mem[(32 * s) + 140 len 20] != arg2:
                    require s < mem[96]
                    if mem[(32 * s) + 140 len 20] != arg3:
                        require s < mem[96]
                        _1281 = mem[(32 * s) + 128]
                        if arg2 < mem[(32 * s) + 140 len 20]:
                            _1307 = mem[64]
                            mem[mem[64] + 32] = address(arg2)
                            mem[mem[64] + 52] = address(_1281)
                            _1308 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1310 = sha3(mem[_1308 + 32 len mem[_1308]])
                            mem[_1307 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1307 + 105] = stor0
                            mem[_1307 + 125] = _1310
                            mem[_1307 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1307 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1310, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1379 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg3:
                                    mem[_1307 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1307 + 241] = address(arg3)
                                    mem[_1307 + 189] = 40
                                    mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1307 + 294] = stor0
                                    mem[_1307 + 314] = sha3(mem[_1307 + 221 len 20], arg3)
                                    mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1307 + 261] = 85
                                    mem[64] = _1307 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1307 + 221] = address(arg3)
                                    mem[_1307 + 241] = address(_1379)
                                    mem[_1307 + 189] = 40
                                    mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1307 + 294] = stor0
                                    mem[_1307 + 314] = sha3(arg3, address(_1379))
                                    mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1307 + 261] = 85
                                    mem[64] = _1307 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1379)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1379)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1379)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1310, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1310, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1307 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require s < mem[96]
                                if arg2 == arg2:
                                    _1425 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_1307 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1307 + 241] = address(arg3)
                                        mem[_1307 + 189] = 40
                                        mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1307 + 294] = stor0
                                        mem[_1307 + 314] = sha3(mem[_1307 + 221 len 20], arg3)
                                        mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1307 + 261] = 85
                                        mem[64] = _1307 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1425) == address(_1425):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
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
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
                                    else:
                                        mem[_1307 + 221] = address(arg3)
                                        mem[_1307 + 241] = address(_1425)
                                        mem[_1307 + 189] = 40
                                        mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1307 + 294] = stor0
                                        mem[_1307 + 314] = sha3(arg3, address(_1425))
                                        mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1307 + 261] = 85
                                        mem[64] = _1307 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1425)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1425)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1425)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1425) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
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
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
                                else:
                                    _1426 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_1307 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1307 + 241] = address(arg3)
                                        mem[_1307 + 189] = 40
                                        mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1307 + 294] = stor0
                                        mem[_1307 + 314] = sha3(mem[_1307 + 221 len 20], arg3)
                                        mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1307 + 261] = 85
                                        mem[64] = _1307 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1307 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1426) == address(_1426):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
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
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
                                    else:
                                        mem[_1307 + 221] = address(arg3)
                                        mem[_1307 + 241] = address(_1426)
                                        mem[_1307 + 189] = 40
                                        mem[_1307 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1307 + 294] = stor0
                                        mem[_1307 + 314] = sha3(arg3, address(_1426))
                                        mem[_1307 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1307 + 261] = 85
                                        mem[64] = _1307 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1426)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1426)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1426)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1307 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1426) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
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
                                                                            mem[_1307 + 378] = 3
                                                                            mem[64] = _1307 + 506
                                                                            mem[_1307 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1307 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1307 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1307 + 474] = arg3
                        else:
                            _1315 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                            mem[mem[64] + 52] = address(arg2)
                            _1316 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1318 = sha3(mem[_1316 + 32 len mem[_1316]])
                            mem[_1315 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1315 + 105] = stor0
                            mem[_1315 + 125] = _1318
                            mem[_1315 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1315 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1318, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1381 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg3:
                                    mem[_1315 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1315 + 241] = address(arg3)
                                    mem[_1315 + 189] = 40
                                    mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1315 + 294] = stor0
                                    mem[_1315 + 314] = sha3(mem[_1315 + 221 len 20], arg3)
                                    mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1315 + 261] = 85
                                    mem[64] = _1315 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1315 + 221] = address(arg3)
                                    mem[_1315 + 241] = address(_1381)
                                    mem[_1315 + 189] = 40
                                    mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1315 + 294] = stor0
                                    mem[_1315 + 314] = sha3(arg3, address(_1381))
                                    mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1315 + 261] = 85
                                    mem[64] = _1315 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1381)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1381)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1381)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1318, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1318, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1315 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require s < mem[96]
                                if arg2 == address(_1281):
                                    _1443 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_1315 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1315 + 241] = address(arg3)
                                        mem[_1315 + 189] = 40
                                        mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1315 + 294] = stor0
                                        mem[_1315 + 314] = sha3(mem[_1315 + 221 len 20], arg3)
                                        mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1315 + 261] = 85
                                        mem[64] = _1315 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1443) == address(_1443):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
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
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
                                    else:
                                        mem[_1315 + 221] = address(arg3)
                                        mem[_1315 + 241] = address(_1443)
                                        mem[_1315 + 189] = 40
                                        mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1315 + 294] = stor0
                                        mem[_1315 + 314] = sha3(arg3, address(_1443))
                                        mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1315 + 261] = 85
                                        mem[64] = _1315 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1443)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1443) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * idx)) > 0:
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
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
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
                                else:
                                    _1444 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_1315 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1315 + 241] = address(arg3)
                                        mem[_1315 + 189] = 40
                                        mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1315 + 294] = stor0
                                        mem[_1315 + 314] = sha3(mem[_1315 + 221 len 20], arg3)
                                        mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1315 + 261] = 85
                                        mem[64] = _1315 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1315 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1444) == address(_1444):
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
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
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
                                    else:
                                        mem[_1315 + 221] = address(arg3)
                                        mem[_1315 + 241] = address(_1444)
                                        mem[_1315 + 189] = 40
                                        mem[_1315 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1315 + 294] = stor0
                                        mem[_1315 + 314] = sha3(arg3, address(_1444))
                                        mem[_1315 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1315 + 261] = 85
                                        mem[64] = _1315 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1444)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                            if idx > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                        else:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1444)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_1444)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1315 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if address(_1444) == arg3:
                                                if idx > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)
                                                            if 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    if ext_call.return_data[50 len 14] > 0:
                                                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx))
                                                                        if 997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * idx * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * idx)) > 0:
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
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
                                                                            mem[_1315 + 378] = 3
                                                                            mem[64] = _1315 + 506
                                                                            mem[_1315 + 410 len 96] = code.data[3410 len 96]
                                                                            mem[_1315 + 410] = arg2
                                                                            require s < mem[96]
                                                                            mem[_1315 + 442] = mem[(32 * s) + 140 len 20]
                                                                            mem[_1315 + 474] = arg3
            s = s + 1
            continue 
        _1865 = mem[96]
        s = 0
        while s <= _1865:
            if s >= mem[96]:
                if arg3 < arg2:
                    _1876 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1877 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1879 = sha3(mem[_1877 + 32 len mem[_1877]])
                    mem[_1876 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1876 + 105] = stor0
                    mem[_1876 + 125] = _1879
                    mem[_1876 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1876 + 72] = 85
                    mem[64] = _1876 + 189
                    if ext_code.size(sha3(0, stor0, _1879, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1879, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1879, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1876 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                else:
                    _1884 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1885 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1887 = sha3(mem[_1885 + 32 len mem[_1885]])
                    mem[_1884 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1884 + 105] = stor0
                    mem[_1884 + 125] = _1887
                    mem[_1884 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1884 + 72] = 85
                    mem[64] = _1884 + 189
                    if ext_code.size(sha3(0, stor0, _1887, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                        require ext_code.size(address(sha3(0, stor0, _1887, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1887, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1884 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
            else:
                require s < mem[96]
                if mem[(32 * s) + 140 len 20] != arg3:
                    require s < mem[96]
                    if mem[(32 * s) + 140 len 20] != arg2:
                        require s < mem[96]
                        _1892 = mem[(32 * s) + 128]
                        if arg3 < mem[(32 * s) + 140 len 20]:
                            _1911 = mem[64]
                            mem[mem[64] + 32] = address(arg3)
                            mem[mem[64] + 52] = address(_1892)
                            _1912 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1914 = sha3(mem[_1912 + 32 len mem[_1912]])
                            mem[_1911 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1911 + 105] = stor0
                            mem[_1911 + 125] = _1914
                            mem[_1911 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1911 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1914, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1943 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg2:
                                    mem[_1911 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1911 + 241] = address(arg2)
                                    mem[_1911 + 189] = 40
                                    mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1911 + 294] = stor0
                                    mem[_1911 + 314] = sha3(mem[_1911 + 221 len 20], arg2)
                                    mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1911 + 261] = 85
                                    mem[64] = _1911 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1911 + 221] = address(arg2)
                                    mem[_1911 + 241] = address(_1943)
                                    mem[_1911 + 189] = 40
                                    mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1911 + 294] = stor0
                                    mem[_1911 + 314] = sha3(arg2, address(_1943))
                                    mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1911 + 261] = 85
                                    mem[64] = _1911 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1943)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1943)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_1943)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1914, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1914, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1911 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require s < mem[96]
                                if arg3 == arg3:
                                    _1973 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_1911 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1911 + 241] = address(arg2)
                                        mem[_1911 + 189] = 40
                                        mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1911 + 294] = stor0
                                        mem[_1911 + 314] = sha3(mem[_1911 + 221 len 20], arg2)
                                        mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1911 + 261] = 85
                                        mem[64] = _1911 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1911 + 221] = address(arg2)
                                        mem[_1911 + 241] = address(_1973)
                                        mem[_1911 + 189] = 40
                                        mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1911 + 294] = stor0
                                        mem[_1911 + 314] = sha3(arg2, address(_1973))
                                        mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1911 + 261] = 85
                                        mem[64] = _1911 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1973)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1973)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_1973)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _1974 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_1911 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1911 + 241] = address(arg2)
                                        mem[_1911 + 189] = 40
                                        mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1911 + 294] = stor0
                                        mem[_1911 + 314] = sha3(mem[_1911 + 221 len 20], arg2)
                                        mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1911 + 261] = 85
                                        mem[64] = _1911 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1911 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1911 + 221] = address(arg2)
                                        mem[_1911 + 241] = address(_1974)
                                        mem[_1911 + 189] = 40
                                        mem[_1911 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1911 + 294] = stor0
                                        mem[_1911 + 314] = sha3(arg2, address(_1974))
                                        mem[_1911 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1911 + 261] = 85
                                        mem[64] = _1911 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1974)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1974)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_1974)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1911 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                        else:
                            _1919 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                            mem[mem[64] + 52] = address(arg3)
                            _1920 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1922 = sha3(mem[_1920 + 32 len mem[_1920]])
                            mem[_1919 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1919 + 105] = stor0
                            mem[_1919 + 125] = _1922
                            mem[_1919 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1919 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1922, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1945 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg2:
                                    mem[_1919 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1919 + 241] = address(arg2)
                                    mem[_1919 + 189] = 40
                                    mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1919 + 294] = stor0
                                    mem[_1919 + 314] = sha3(mem[_1919 + 221 len 20], arg2)
                                    mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1919 + 261] = 85
                                    mem[64] = _1919 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                else:
                                    mem[_1919 + 221] = address(arg2)
                                    mem[_1919 + 241] = address(_1945)
                                    mem[_1919 + 189] = 40
                                    mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1919 + 294] = stor0
                                    mem[_1919 + 314] = sha3(arg2, address(_1945))
                                    mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1919 + 261] = 85
                                    mem[64] = _1919 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1945)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1945)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_1945)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1922, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1922, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1919 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require s < mem[96]
                                if arg3 == address(_1892):
                                    _1991 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_1919 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1919 + 241] = address(arg2)
                                        mem[_1919 + 189] = 40
                                        mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1919 + 294] = stor0
                                        mem[_1919 + 314] = sha3(mem[_1919 + 221 len 20], arg2)
                                        mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1919 + 261] = 85
                                        mem[64] = _1919 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1919 + 221] = address(arg2)
                                        mem[_1919 + 241] = address(_1991)
                                        mem[_1919 + 189] = 40
                                        mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1919 + 294] = stor0
                                        mem[_1919 + 314] = sha3(arg2, address(_1991))
                                        mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1919 + 261] = 85
                                        mem[64] = _1919 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1991)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1991)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_1991)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                else:
                                    _1992 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_1919 + 221] = address(mem[(32 * s) + 128])
                                        mem[_1919 + 241] = address(arg2)
                                        mem[_1919 + 189] = 40
                                        mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1919 + 294] = stor0
                                        mem[_1919 + 314] = sha3(mem[_1919 + 221 len 20], arg2)
                                        mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1919 + 261] = 85
                                        mem[64] = _1919 + 378
                                        if ext_code.size(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_1919 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    else:
                                        mem[_1919 + 221] = address(arg2)
                                        mem[_1919 + 241] = address(_1992)
                                        mem[_1919 + 189] = 40
                                        mem[_1919 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_1919 + 294] = stor0
                                        mem[_1919 + 314] = sha3(arg2, address(_1992))
                                        mem[_1919 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_1919 + 261] = 85
                                        mem[64] = _1919 + 378
                                        if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1992)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) > 0:
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1992)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_1992)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_1919 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
            s = s + 1
            continue 
        if not mem[96]:
            if arg5 - idx < arg6:
                idx = arg5
                continue 
            idx = idx + arg6
            continue 
        if not mem[96]:
            if arg5 - idx < arg6:
                idx = arg5
                continue 
            idx = idx + arg6
            continue 
        if idx != arg5:
            if arg5 - idx < arg6:
                idx = arg5
                continue 
            idx = idx + arg6
            continue 
        if -idx > 0:
            _1893 = mem[64]
            mem[mem[64] + 64] = idx
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = -idx
            mem[mem[64]] = 160
            mem[_1893 + 160] = mem[96]
            _1895 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[_1893 + idx + 192] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_1893 + 32] = (32 * mem[96]) + 192
            mem[(32 * _1895) + _1893 + 192] = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[(32 * _1895) + _1893 + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _1895) + _1893 + -mem[64] + 224
        _1896 = mem[64]
        mem[mem[64] + 64] = idx
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = -idx
        mem[mem[64]] = 160
        mem[_1896 + 160] = mem[96]
        _1898 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[_1896 + idx + 192] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_1896 + 32] = (32 * mem[96]) + 192
        mem[(32 * _1898) + _1896 + 192] = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[(32 * _1898) + _1896 + idx + 224] = mem[idx + 128]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _1898) + _1896 + -mem[64] + 224
    _624 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_624 + 160] = mem[96]
    _626 = mem[96]
    mem[_624 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_624 + 32] = (32 * mem[96]) + 192
    mem[(32 * _626) + _624 + 192] = mem[96]
    mem[(32 * _626) + _624 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _626) + _624 + -mem[64] + 224
}



}
