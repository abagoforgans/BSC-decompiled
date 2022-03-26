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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_394 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
                                                                        mem[_402 + 410 len 96] = code.data[3389 len 96]
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
        _1214 = mem[96]
        s = 0
        while s <= _1214:
            if s >= mem[96]:
                if arg2 < arg3:
                    _1233 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1234 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1236 = sha3(mem[_1234 + 32 len mem[_1234]])
                    mem[_1233 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1233 + 105] = stor0
                    mem[_1233 + 125] = _1236
                    mem[_1233 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1233 + 72] = 85
                    mem[64] = _1233 + 189
                    if ext_code.size(sha3(0, stor0, _1236, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                        if idx <= 0:
                            s = s + 1
                            continue 
                        else:
                            s = s + 1
                            continue 
                    else:
                        require ext_code.size(address(sha3(0, stor0, _1236, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1236, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1233 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1233 + 189] = 2
                                                mem[64] = _1233 + 285
                                                mem[_1233 + 221] = arg2
                                                mem[_1233 + 253] = arg3
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
                                                mem[_1233 + 189] = 2
                                                mem[64] = _1233 + 285
                                                mem[_1233 + 221] = arg2
                                                mem[_1233 + 253] = arg3
                                                s = s + 1
                                                continue 
                else:
                    _1241 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1242 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1244 = sha3(mem[_1242 + 32 len mem[_1242]])
                    mem[_1241 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1241 + 105] = stor0
                    mem[_1241 + 125] = _1244
                    mem[_1241 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1241 + 72] = 85
                    mem[64] = _1241 + 189
                    if ext_code.size(sha3(0, stor0, _1244, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                        if idx <= 0:
                            s = s + 1
                            continue 
                        else:
                            s = s + 1
                            continue 
                    else:
                        require ext_code.size(address(sha3(0, stor0, _1244, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1244, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1241 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1241 + 189] = 2
                                                mem[64] = _1241 + 285
                                                mem[_1241 + 221] = arg2
                                                mem[_1241 + 253] = arg3
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
                                                mem[_1241 + 189] = 2
                                                mem[64] = _1241 + 285
                                                mem[_1241 + 221] = arg2
                                                mem[_1241 + 253] = arg3
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
                        _1249 = mem[(32 * s) + 128]
                        if arg2 < mem[(32 * s) + 140 len 20]:
                            _1275 = mem[64]
                            mem[mem[64] + 32] = address(arg2)
                            mem[mem[64] + 52] = address(_1249)
                            _1276 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1278 = sha3(mem[_1276 + 32 len mem[_1276]])
                            mem[_1275 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1275 + 105] = stor0
                            mem[_1275 + 125] = _1278
                            mem[_1275 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1275 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1331 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg3:
                                    mem[_1275 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1275 + 241] = address(arg3)
                                    mem[_1275 + 189] = 40
                                    mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1275 + 294] = stor0
                                    mem[_1275 + 314] = sha3(mem[_1275 + 221 len 20], arg3)
                                    mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1275 + 261] = 85
                                    mem[64] = _1275 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if idx <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            s = s + 1
                                            continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1331) == address(_1331):
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
                                    mem[_1275 + 221] = address(arg3)
                                    mem[_1275 + 241] = address(_1331)
                                    mem[_1275 + 189] = 40
                                    mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1275 + 294] = stor0
                                    mem[_1275 + 314] = sha3(arg3, address(_1331))
                                    mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1275 + 261] = 85
                                    mem[64] = _1275 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1331)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if idx <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            s = s + 1
                                            continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1331)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1331)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1331) == arg3:
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
                                require ext_code.size(address(sha3(0, stor0, _1278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1275 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == arg2:
                                        require s < mem[96]
                                        _1377 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_1275 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1275 + 241] = address(arg3)
                                            mem[_1275 + 189] = 40
                                            mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1275 + 294] = stor0
                                            mem[_1275 + 314] = sha3(mem[_1275 + 221 len 20], arg3)
                                            mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1275 + 261] = 85
                                            mem[64] = _1275 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1377) == address(_1377):
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                        else:
                                            mem[_1275 + 221] = address(arg3)
                                            mem[_1275 + 241] = address(_1377)
                                            mem[_1275 + 189] = 40
                                            mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1275 + 294] = stor0
                                            mem[_1275 + 314] = sha3(arg3, address(_1377))
                                            mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1275 + 261] = 85
                                            mem[64] = _1275 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1377)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1377)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg3, address(_1377)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1377) == arg3:
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _1378 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_1275 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1275 + 241] = address(arg3)
                                            mem[_1275 + 189] = 40
                                            mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1275 + 294] = stor0
                                            mem[_1275 + 314] = sha3(mem[_1275 + 221 len 20], arg3)
                                            mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1275 + 261] = 85
                                            mem[64] = _1275 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1275 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1378) == address(_1378):
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                        else:
                                            mem[_1275 + 221] = address(arg3)
                                            mem[_1275 + 241] = address(_1378)
                                            mem[_1275 + 189] = 40
                                            mem[_1275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1275 + 294] = stor0
                                            mem[_1275 + 314] = sha3(arg3, address(_1378))
                                            mem[_1275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1275 + 261] = 85
                                            mem[64] = _1275 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1378)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1378)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg3, address(_1378)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1275 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1378) == arg3:
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
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
                                                                                    mem[_1275 + 378] = 3
                                                                                    mem[64] = _1275 + 506
                                                                                    mem[_1275 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1275 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1275 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1275 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                        else:
                            _1283 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                            mem[mem[64] + 52] = address(arg2)
                            _1284 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1286 = sha3(mem[_1284 + 32 len mem[_1284]])
                            mem[_1283 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1283 + 105] = stor0
                            mem[_1283 + 125] = _1286
                            mem[_1283 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1283 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1286, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1333 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg3:
                                    mem[_1283 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1283 + 241] = address(arg3)
                                    mem[_1283 + 189] = 40
                                    mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1283 + 294] = stor0
                                    mem[_1283 + 314] = sha3(mem[_1283 + 221 len 20], arg3)
                                    mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1283 + 261] = 85
                                    mem[64] = _1283 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if idx <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            s = s + 1
                                            continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1333) == address(_1333):
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
                                    mem[_1283 + 221] = address(arg3)
                                    mem[_1283 + 241] = address(_1333)
                                    mem[_1283 + 189] = 40
                                    mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1283 + 294] = stor0
                                    mem[_1283 + 314] = sha3(arg3, address(_1333))
                                    mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1283 + 261] = 85
                                    mem[64] = _1283 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1333)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        if idx <= 0:
                                            s = s + 1
                                            continue 
                                        else:
                                            s = s + 1
                                            continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1333)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_1333)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1333) == arg3:
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
                                require ext_code.size(address(sha3(0, stor0, _1286, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1286, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1283 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == address(_1249):
                                        require s < mem[96]
                                        _1395 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_1283 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1283 + 241] = address(arg3)
                                            mem[_1283 + 189] = 40
                                            mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1283 + 294] = stor0
                                            mem[_1283 + 314] = sha3(mem[_1283 + 221 len 20], arg3)
                                            mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1283 + 261] = 85
                                            mem[64] = _1283 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1395) == address(_1395):
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                        else:
                                            mem[_1283 + 221] = address(arg3)
                                            mem[_1283 + 241] = address(_1395)
                                            mem[_1283 + 189] = 40
                                            mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1283 + 294] = stor0
                                            mem[_1283 + 314] = sha3(arg3, address(_1395))
                                            mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1283 + 261] = 85
                                            mem[64] = _1283 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1395)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1395)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg3, address(_1395)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1395) == arg3:
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _1396 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_1283 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1283 + 241] = address(arg3)
                                            mem[_1283 + 189] = 40
                                            mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1283 + 294] = stor0
                                            mem[_1283 + 314] = sha3(mem[_1283 + 221 len 20], arg3)
                                            mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1283 + 261] = 85
                                            mem[64] = _1283 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1283 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1396) == address(_1396):
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                                        else:
                                            mem[_1283 + 221] = address(arg3)
                                            mem[_1283 + 241] = address(_1396)
                                            mem[_1283 + 189] = 40
                                            mem[_1283 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1283 + 294] = stor0
                                            mem[_1283 + 314] = sha3(arg3, address(_1396))
                                            mem[_1283 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1283 + 261] = 85
                                            mem[64] = _1283 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg3, address(_1396)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
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
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_1396)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg3, address(_1396)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1283 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1396) == arg3:
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
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
                                                                                    mem[_1283 + 378] = 3
                                                                                    mem[64] = _1283 + 506
                                                                                    mem[_1283 + 410 len 96] = code.data[3389 len 96]
                                                                                    mem[_1283 + 410] = arg2
                                                                                    require s < mem[96]
                                                                                    mem[_1283 + 442] = mem[(32 * s) + 140 len 20]
                                                                                    mem[_1283 + 474] = arg3
                                                                                    s = s + 1
                                                                                    continue 
                    else:
                        s = s + 1
                        continue 
        _1817 = mem[96]
        s = 0
        while s <= _1817:
            if s >= mem[96]:
                if arg3 < arg2:
                    _1828 = mem[64]
                    mem[mem[64] + 32] = address(arg3)
                    mem[mem[64] + 52] = address(arg2)
                    _1829 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1831 = sha3(mem[_1829 + 32 len mem[_1829]])
                    mem[_1828 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1828 + 105] = stor0
                    mem[_1828 + 125] = _1831
                    mem[_1828 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1828 + 72] = 85
                    mem[64] = _1828 + 189
                    if ext_code.size(sha3(0, stor0, _1831, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                        s = s + 1
                        continue 
                    else:
                        require ext_code.size(address(sha3(0, stor0, _1831, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1831, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1828 + 189 len 96] = ext_call.return_data[0 len 96]
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
                    _1836 = mem[64]
                    mem[mem[64] + 32] = address(arg2)
                    mem[mem[64] + 52] = address(arg3)
                    _1837 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1839 = sha3(mem[_1837 + 32 len mem[_1837]])
                    mem[_1836 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1836 + 105] = stor0
                    mem[_1836 + 125] = _1839
                    mem[_1836 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_1836 + 72] = 85
                    mem[64] = _1836 + 189
                    if ext_code.size(sha3(0, stor0, _1839, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                        s = s + 1
                        continue 
                    else:
                        require ext_code.size(address(sha3(0, stor0, _1839, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1839, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1836 + 189 len 96] = ext_call.return_data[0 len 96]
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
                        _1844 = mem[(32 * s) + 128]
                        if arg3 < mem[(32 * s) + 140 len 20]:
                            _1851 = mem[64]
                            mem[mem[64] + 32] = address(arg3)
                            mem[mem[64] + 52] = address(_1844)
                            _1852 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1854 = sha3(mem[_1852 + 32 len mem[_1852]])
                            mem[_1851 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1851 + 105] = stor0
                            mem[_1851 + 125] = _1854
                            mem[_1851 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1851 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1854, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1879 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg2:
                                    mem[_1851 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1851 + 241] = address(arg2)
                                    mem[_1851 + 189] = 40
                                    mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1851 + 294] = stor0
                                    mem[_1851 + 314] = sha3(mem[_1851 + 221 len 20], arg2)
                                    mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1851 + 261] = 85
                                    mem[64] = _1851 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1879) == address(_1879):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    mem[_1851 + 221] = address(arg2)
                                    mem[_1851 + 241] = address(_1879)
                                    mem[_1851 + 189] = 40
                                    mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1851 + 294] = stor0
                                    mem[_1851 + 314] = sha3(arg2, address(_1879))
                                    mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1851 + 261] = 85
                                    mem[64] = _1851 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1879)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1879)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_1879)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1879) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1854, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1854, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1851 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require s < mem[96]
                                        _1909 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_1851 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1851 + 241] = address(arg2)
                                            mem[_1851 + 189] = 40
                                            mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1851 + 294] = stor0
                                            mem[_1851 + 314] = sha3(mem[_1851 + 221 len 20], arg2)
                                            mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1851 + 261] = 85
                                            mem[64] = _1851 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1909) == address(_1909):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[_1851 + 221] = address(arg2)
                                            mem[_1851 + 241] = address(_1909)
                                            mem[_1851 + 189] = 40
                                            mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1851 + 294] = stor0
                                            mem[_1851 + 314] = sha3(arg2, address(_1909))
                                            mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1851 + 261] = 85
                                            mem[64] = _1851 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1909)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1909)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg2, address(_1909)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1909) == arg2:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                    else:
                                        require s < mem[96]
                                        _1910 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_1851 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1851 + 241] = address(arg2)
                                            mem[_1851 + 189] = 40
                                            mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1851 + 294] = stor0
                                            mem[_1851 + 314] = sha3(mem[_1851 + 221 len 20], arg2)
                                            mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1851 + 261] = 85
                                            mem[64] = _1851 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1851 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1910) == address(_1910):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[_1851 + 221] = address(arg2)
                                            mem[_1851 + 241] = address(_1910)
                                            mem[_1851 + 189] = 40
                                            mem[_1851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1851 + 294] = stor0
                                            mem[_1851 + 314] = sha3(arg2, address(_1910))
                                            mem[_1851 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1851 + 261] = 85
                                            mem[64] = _1851 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1910)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1910)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg2, address(_1910)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1851 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1910) == arg2:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                        else:
                            _1859 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                            mem[mem[64] + 52] = address(arg3)
                            _1860 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1862 = sha3(mem[_1860 + 32 len mem[_1860]])
                            mem[_1859 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1859 + 105] = stor0
                            mem[_1859 + 125] = _1862
                            mem[_1859 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                            mem[_1859 + 72] = 85
                            if ext_code.size(sha3(0, stor0, _1862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                require s < mem[96]
                                _1881 = mem[(32 * s) + 128]
                                if mem[(32 * s) + 140 len 20] < arg2:
                                    mem[_1859 + 221] = address(mem[(32 * s) + 128])
                                    mem[_1859 + 241] = address(arg2)
                                    mem[_1859 + 189] = 40
                                    mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1859 + 294] = stor0
                                    mem[_1859 + 314] = sha3(mem[_1859 + 221 len 20], arg2)
                                    mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1859 + 261] = 85
                                    mem[64] = _1859 + 378
                                    if ext_code.size(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1881) == address(_1881):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    mem[_1859 + 221] = address(arg2)
                                    mem[_1859 + 241] = address(_1881)
                                    mem[_1859 + 189] = 40
                                    mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_1859 + 294] = stor0
                                    mem[_1859 + 314] = sha3(arg2, address(_1881))
                                    mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_1859 + 261] = 85
                                    mem[64] = _1859 + 378
                                    if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1881)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                        s = s + 1
                                        continue 
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1881)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_1881)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            if address(_1881) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                            else:
                                require ext_code.size(address(sha3(0, stor0, _1862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _1862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_1859 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_1844):
                                        require s < mem[96]
                                        _1927 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_1859 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1859 + 241] = address(arg2)
                                            mem[_1859 + 189] = 40
                                            mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1859 + 294] = stor0
                                            mem[_1859 + 314] = sha3(mem[_1859 + 221 len 20], arg2)
                                            mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1859 + 261] = 85
                                            mem[64] = _1859 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1927) == address(_1927):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[_1859 + 221] = address(arg2)
                                            mem[_1859 + 241] = address(_1927)
                                            mem[_1859 + 189] = 40
                                            mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1859 + 294] = stor0
                                            mem[_1859 + 314] = sha3(arg2, address(_1927))
                                            mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1859 + 261] = 85
                                            mem[64] = _1859 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1927)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1927)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg2, address(_1927)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1927) == arg2:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                    else:
                                        require s < mem[96]
                                        _1928 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_1859 + 221] = address(mem[(32 * s) + 128])
                                            mem[_1859 + 241] = address(arg2)
                                            mem[_1859 + 189] = 40
                                            mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1859 + 294] = stor0
                                            mem[_1859 + 314] = sha3(mem[_1859 + 221 len 20], arg2)
                                            mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1859 + 261] = 85
                                            mem[64] = _1859 + 378
                                            if ext_code.size(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, mem[_1859 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1928) == address(_1928):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[_1859 + 221] = address(arg2)
                                            mem[_1859 + 241] = address(_1928)
                                            mem[_1859 + 189] = 40
                                            mem[_1859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1859 + 294] = stor0
                                            mem[_1859 + 314] = sha3(arg2, address(_1928))
                                            mem[_1859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_1859 + 261] = 85
                                            mem[64] = _1859 + 378
                                            if ext_code.size(sha3(0, stor0, sha3(arg2, address(_1928)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)) <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_1928)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                                staticcall address(sha3(0, stor0, sha3(arg2, address(_1928)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[_1859 + 378 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if address(_1928) == arg2:
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        continue 
                    else:
                        s = s + 1
                        continue 
        if not mem[96]:
            if arg5 - idx < arg6:
                idx = arg5
                continue 
            else:
                idx = idx + arg6
                continue 
        else:
            if mem[96]:
                if -idx > 0:
                    if arg5 - idx < arg6:
                        idx = arg5
                        continue 
                    else:
                        idx = idx + arg6
                        continue 
                else:
                    if arg5 - idx < arg6:
                        idx = arg5
                        continue 
                    else:
                        idx = idx + arg6
                        continue 
            else:
                if arg5 - idx < arg6:
                    idx = arg5
                    continue 
                else:
                    idx = idx + arg6
                    continue 
    _608 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_608 + 160] = mem[96]
    _610 = mem[96]
    mem[_608 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_608 + 32] = (32 * mem[96]) + 192
    mem[(32 * _610) + _608 + 192] = mem[96]
    mem[(32 * _610) + _608 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _610) + _608 + -mem[64] + 224
}



}
