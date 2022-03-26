contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
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
        require ext_code.size(address(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
        staticcall address(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
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
                _311 = mem[64]
                mem[mem[64] + 32] = address(arg2)
                mem[mem[64] + 52] = address(arg3)
                _312 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _314 = sha3(mem[_312 + 32 len mem[_312]])
                mem[_311 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_311 + 105] = stor0
                mem[_311 + 125] = _314
                mem[_311 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_311 + 72] = 85
                mem[64] = _311 + 189
                require ext_code.size(address(sha3(0, stor0, _314, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _314, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_311 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg2:
                    if arg4 > 0:
                        if ext_call.return_data[18 len 14] > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                    mem[_311 + 189] = 2
                                    mem[64] = _311 + 285
                                    mem[_311 + 221] = arg2
                                    mem[_311 + 253] = arg3
                else:
                    if arg4 > 0:
                        if ext_call.return_data[50 len 14] > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                    mem[_311 + 189] = 2
                                    mem[64] = _311 + 285
                                    mem[_311 + 221] = arg2
                                    mem[_311 + 253] = arg3
            else:
                _319 = mem[64]
                mem[mem[64] + 32] = address(arg3)
                mem[mem[64] + 52] = address(arg2)
                _320 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _322 = sha3(mem[_320 + 32 len mem[_320]])
                mem[_319 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_319 + 105] = stor0
                mem[_319 + 125] = _322
                mem[_319 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_319 + 72] = 85
                mem[64] = _319 + 189
                require ext_code.size(address(sha3(0, stor0, _322, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _322, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_319 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg3:
                    if arg4 > 0:
                        if ext_call.return_data[18 len 14] > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                    mem[_319 + 189] = 2
                                    mem[64] = _319 + 285
                                    mem[_319 + 221] = arg2
                                    mem[_319 + 253] = arg3
                else:
                    if arg4 > 0:
                        if ext_call.return_data[50 len 14] > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                    mem[_319 + 189] = 2
                                    mem[64] = _319 + 285
                                    mem[_319 + 221] = arg2
                                    mem[_319 + 253] = arg3
        else:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != arg2:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] != arg3:
                    require idx < mem[96]
                    _327 = mem[(32 * idx) + 128]
                    if arg2 < mem[(32 * idx) + 140 len 20]:
                        _340 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(_327)
                        _341 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _343 = sha3(mem[_341 + 32 len mem[_341]])
                        mem[_340 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_340 + 105] = stor0
                        mem[_340 + 125] = _343
                        mem[_340 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_340 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _343, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _343, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_340 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if arg2 == arg2:
                            _372 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_340 + 221] = address(mem[(32 * idx) + 128])
                                mem[_340 + 241] = address(arg3)
                                mem[_340 + 189] = 40
                                mem[_340 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_340 + 294] = stor0
                                mem[_340 + 314] = sha3(mem[_340 + 221 len 20], arg3)
                                mem[_340 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_340 + 261] = 85
                                mem[64] = _340 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_340 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_340 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_340 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_372) == address(_372):
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
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
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
                            else:
                                mem[_340 + 221] = address(arg3)
                                mem[_340 + 241] = address(_372)
                                mem[_340 + 189] = 40
                                mem[_340 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_340 + 294] = stor0
                                mem[_340 + 314] = sha3(arg3, address(_372))
                                mem[_340 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_340 + 261] = 85
                                mem[64] = _340 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_372)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_372)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_340 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_372) == arg3:
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
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
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
                        else:
                            _373 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_340 + 221] = address(mem[(32 * idx) + 128])
                                mem[_340 + 241] = address(arg3)
                                mem[_340 + 189] = 40
                                mem[_340 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_340 + 294] = stor0
                                mem[_340 + 314] = sha3(mem[_340 + 221 len 20], arg3)
                                mem[_340 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_340 + 261] = 85
                                mem[64] = _340 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_340 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_340 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_340 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_373) == address(_373):
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
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
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
                            else:
                                mem[_340 + 221] = address(arg3)
                                mem[_340 + 241] = address(_373)
                                mem[_340 + 189] = 40
                                mem[_340 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_340 + 294] = stor0
                                mem[_340 + 314] = sha3(arg3, address(_373))
                                mem[_340 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_340 + 261] = 85
                                mem[64] = _340 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_373)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_373)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_340 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_373) == arg3:
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
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
                                                                mem[_340 + 378] = 3
                                                                mem[64] = _340 + 506
                                                                mem[_340 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_340 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_340 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_340 + 474] = arg3
                    else:
                        _348 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(arg2)
                        _349 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _351 = sha3(mem[_349 + 32 len mem[_349]])
                        mem[_348 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_348 + 105] = stor0
                        mem[_348 + 125] = _351
                        mem[_348 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_348 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _351, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _351, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_348 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if arg2 == address(_327):
                            _374 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_348 + 221] = address(mem[(32 * idx) + 128])
                                mem[_348 + 241] = address(arg3)
                                mem[_348 + 189] = 40
                                mem[_348 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_348 + 294] = stor0
                                mem[_348 + 314] = sha3(mem[_348 + 221 len 20], arg3)
                                mem[_348 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_348 + 261] = 85
                                mem[64] = _348 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_348 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_348 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_348 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_374) == address(_374):
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
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
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
                            else:
                                mem[_348 + 221] = address(arg3)
                                mem[_348 + 241] = address(_374)
                                mem[_348 + 189] = 40
                                mem[_348 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_348 + 294] = stor0
                                mem[_348 + 314] = sha3(arg3, address(_374))
                                mem[_348 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_348 + 261] = 85
                                mem[64] = _348 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_374)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_374)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_348 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_374) == arg3:
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[0]) > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
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
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
                        else:
                            _375 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_348 + 221] = address(mem[(32 * idx) + 128])
                                mem[_348 + 241] = address(arg3)
                                mem[_348 + 189] = 40
                                mem[_348 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_348 + 294] = stor0
                                mem[_348 + 314] = sha3(mem[_348 + 221 len 20], arg3)
                                mem[_348 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_348 + 261] = 85
                                mem[64] = _348 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_348 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_348 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_348 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_375) == address(_375):
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
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
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
                            else:
                                mem[_348 + 221] = address(arg3)
                                mem[_348 + 241] = address(_375)
                                mem[_348 + 189] = 40
                                mem[_348 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_348 + 294] = stor0
                                mem[_348 + 314] = sha3(arg3, address(_375))
                                mem[_348 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_348 + 261] = 85
                                mem[64] = _348 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_375)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_375)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_348 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if address(_375) == arg3:
                                    if arg4 > 0:
                                        if Mask(112, 0, ext_call.return_data[32]) > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if ext_call.return_data[50 len 14] > 0:
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                            if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
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
                                                                mem[_348 + 378] = 3
                                                                mem[64] = _348 + 506
                                                                mem[_348 + 410 len 96] = code.data[3241 len 96]
                                                                mem[_348 + 410] = arg2
                                                                require idx < mem[96]
                                                                mem[_348 + 442] = mem[(32 * idx) + 140 len 20]
                                                                mem[_348 + 474] = arg3
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
            _1930 = mem[96]
            s = 0
            while s <= _1930:
                if s >= mem[96]:
                    if arg2 < arg3:
                        _1962 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _1963 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1965 = sha3(mem[_1963 + 32 len mem[_1963]])
                        mem[_1962 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1962 + 105] = stor0
                        mem[_1962 + 125] = _1965
                        mem[_1962 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_1962 + 72] = 85
                        mem[64] = _1962 + 189
                        require ext_code.size(address(sha3(0, stor0, _1965, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1965, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1962 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1962 + 189] = 2
                                                mem[64] = _1962 + 285
                                                mem[_1962 + 221] = arg2
                                                mem[_1962 + 253] = arg3
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
                                                mem[_1962 + 189] = 2
                                                mem[64] = _1962 + 285
                                                mem[_1962 + 221] = arg2
                                                mem[_1962 + 253] = arg3
                                                s = s + 1
                                                continue 
                    else:
                        _1970 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _1971 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1973 = sha3(mem[_1971 + 32 len mem[_1971]])
                        mem[_1970 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1970 + 105] = stor0
                        mem[_1970 + 125] = _1973
                        mem[_1970 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_1970 + 72] = 85
                        mem[64] = _1970 + 189
                        require ext_code.size(address(sha3(0, stor0, _1973, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1973, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1970 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1970 + 189] = 2
                                                mem[64] = _1970 + 285
                                                mem[_1970 + 221] = arg2
                                                mem[_1970 + 253] = arg3
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
                                                mem[_1970 + 189] = 2
                                                mem[64] = _1970 + 285
                                                mem[_1970 + 221] = arg2
                                                mem[_1970 + 253] = arg3
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
                            _1978 = mem[(32 * s) + 128]
                            if arg2 < mem[(32 * s) + 140 len 20]:
                                _2067 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_1978)
                                _2068 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2070 = sha3(mem[_2068 + 32 len mem[_2068]])
                                mem[_2067 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2067 + 105] = stor0
                                mem[_2067 + 125] = _2070
                                mem[_2067 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2067 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2070, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2070, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2067 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == arg2:
                                        require s < mem[96]
                                        _2197 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2067 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2067 + 241] = address(arg3)
                                            mem[_2067 + 189] = 40
                                            mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2067 + 294] = stor0
                                            mem[_2067 + 314] = sha3(mem[_2067 + 221 len 20], arg3)
                                            mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2067 + 261] = 85
                                            mem[64] = _2067 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2197) == address(_2197):
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2067 + 221] = address(arg3)
                                            mem[_2067 + 241] = address(_2197)
                                            mem[_2067 + 189] = 40
                                            mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2067 + 294] = stor0
                                            mem[_2067 + 314] = sha3(arg3, address(_2197))
                                            mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2067 + 261] = 85
                                            mem[64] = _2067 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2197)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2197)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2197) == arg3:
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2198 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2067 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2067 + 241] = address(arg3)
                                            mem[_2067 + 189] = 40
                                            mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2067 + 294] = stor0
                                            mem[_2067 + 314] = sha3(mem[_2067 + 221 len 20], arg3)
                                            mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2067 + 261] = 85
                                            mem[64] = _2067 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2067 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2198) == address(_2198):
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2067 + 221] = address(arg3)
                                            mem[_2067 + 241] = address(_2198)
                                            mem[_2067 + 189] = 40
                                            mem[_2067 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2067 + 294] = stor0
                                            mem[_2067 + 314] = sha3(arg3, address(_2198))
                                            mem[_2067 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2067 + 261] = 85
                                            mem[64] = _2067 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2198)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2198)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2067 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2198) == arg3:
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
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
                                                                                mem[_2067 + 378] = 3
                                                                                mem[64] = _2067 + 506
                                                                                mem[_2067 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2067 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2067 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2067 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                            else:
                                _2075 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2076 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2078 = sha3(mem[_2076 + 32 len mem[_2076]])
                                mem[_2075 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2075 + 105] = stor0
                                mem[_2075 + 125] = _2078
                                mem[_2075 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2075 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2078, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2078, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2075 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == address(_1978):
                                        require s < mem[96]
                                        _2199 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2075 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2075 + 241] = address(arg3)
                                            mem[_2075 + 189] = 40
                                            mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2075 + 294] = stor0
                                            mem[_2075 + 314] = sha3(mem[_2075 + 221 len 20], arg3)
                                            mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2075 + 261] = 85
                                            mem[64] = _2075 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2199) == address(_2199):
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2075 + 221] = address(arg3)
                                            mem[_2075 + 241] = address(_2199)
                                            mem[_2075 + 189] = 40
                                            mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2075 + 294] = stor0
                                            mem[_2075 + 314] = sha3(arg3, address(_2199))
                                            mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2075 + 261] = 85
                                            mem[64] = _2075 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2199)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2199)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2199) == arg3:
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2200 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2075 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2075 + 241] = address(arg3)
                                            mem[_2075 + 189] = 40
                                            mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2075 + 294] = stor0
                                            mem[_2075 + 314] = sha3(mem[_2075 + 221 len 20], arg3)
                                            mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2075 + 261] = 85
                                            mem[64] = _2075 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2075 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2200) == address(_2200):
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2075 + 221] = address(arg3)
                                            mem[_2075 + 241] = address(_2200)
                                            mem[_2075 + 189] = 40
                                            mem[_2075 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2075 + 294] = stor0
                                            mem[_2075 + 314] = sha3(arg3, address(_2200))
                                            mem[_2075 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2075 + 261] = 85
                                            mem[64] = _2075 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2200)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2200)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2075 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2200) == arg3:
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
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
                                                                                mem[_2075 + 378] = 3
                                                                                mem[64] = _2075 + 506
                                                                                mem[_2075 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2075 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2075 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2075 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                        else:
                            s = s + 1
                            continue 
            _2891 = mem[96]
            s = 0
            while s <= _2891:
                if s >= mem[96]:
                    if arg3 < arg2:
                        _2911 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2912 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2914 = sha3(mem[_2912 + 32 len mem[_2912]])
                        mem[_2911 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2911 + 105] = stor0
                        mem[_2911 + 125] = _2914
                        mem[_2911 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2911 + 72] = 85
                        mem[64] = _2911 + 189
                        require ext_code.size(address(sha3(0, stor0, _2914, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2914, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2911 + 189 len 96] = ext_call.return_data[0 len 96]
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
                        _2919 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2920 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2922 = sha3(mem[_2920 + 32 len mem[_2920]])
                        mem[_2919 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2919 + 105] = stor0
                        mem[_2919 + 125] = _2922
                        mem[_2919 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2919 + 72] = 85
                        mem[64] = _2919 + 189
                        require ext_code.size(address(sha3(0, stor0, _2922, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2922, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2919 + 189 len 96] = ext_call.return_data[0 len 96]
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
                            _2927 = mem[(32 * s) + 128]
                            if arg3 < mem[(32 * s) + 140 len 20]:
                                _2969 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_2927)
                                _2970 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2972 = sha3(mem[_2970 + 32 len mem[_2970]])
                                mem[_2969 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2969 + 105] = stor0
                                mem[_2969 + 125] = _2972
                                mem[_2969 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2969 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2972, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2972, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2969 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require s < mem[96]
                                        _3033 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_2969 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2969 + 241] = address(arg2)
                                            mem[_2969 + 189] = 40
                                            mem[_2969 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2969 + 294] = stor0
                                            mem[_2969 + 314] = sha3(mem[_2969 + 221 len 20], arg2)
                                            mem[_2969 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2969 + 261] = 85
                                            mem[64] = _2969 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2969 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2969 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2969 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3033) == address(_3033):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_2969 + 221] = address(arg2)
                                            mem[_2969 + 241] = address(_3033)
                                            mem[_2969 + 189] = 40
                                            mem[_2969 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2969 + 294] = stor0
                                            mem[_2969 + 314] = sha3(arg2, address(_3033))
                                            mem[_2969 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2969 + 261] = 85
                                            mem[64] = _2969 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3033)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3033)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2969 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3033) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3034 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_2969 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2969 + 241] = address(arg2)
                                            mem[_2969 + 189] = 40
                                            mem[_2969 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2969 + 294] = stor0
                                            mem[_2969 + 314] = sha3(mem[_2969 + 221 len 20], arg2)
                                            mem[_2969 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2969 + 261] = 85
                                            mem[64] = _2969 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2969 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2969 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2969 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3034) == address(_3034):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_2969 + 221] = address(arg2)
                                            mem[_2969 + 241] = address(_3034)
                                            mem[_2969 + 189] = 40
                                            mem[_2969 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2969 + 294] = stor0
                                            mem[_2969 + 314] = sha3(arg2, address(_3034))
                                            mem[_2969 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2969 + 261] = 85
                                            mem[64] = _2969 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3034)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3034)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2969 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3034) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                            else:
                                _2977 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _2978 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2980 = sha3(mem[_2978 + 32 len mem[_2978]])
                                mem[_2977 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2977 + 105] = stor0
                                mem[_2977 + 125] = _2980
                                mem[_2977 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2977 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2980, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2980, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2977 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_2927):
                                        require s < mem[96]
                                        _3035 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_2977 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2977 + 241] = address(arg2)
                                            mem[_2977 + 189] = 40
                                            mem[_2977 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2977 + 294] = stor0
                                            mem[_2977 + 314] = sha3(mem[_2977 + 221 len 20], arg2)
                                            mem[_2977 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2977 + 261] = 85
                                            mem[64] = _2977 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2977 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2977 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2977 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3035) == address(_3035):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_2977 + 221] = address(arg2)
                                            mem[_2977 + 241] = address(_3035)
                                            mem[_2977 + 189] = 40
                                            mem[_2977 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2977 + 294] = stor0
                                            mem[_2977 + 314] = sha3(arg2, address(_3035))
                                            mem[_2977 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2977 + 261] = 85
                                            mem[64] = _2977 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3035)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3035)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2977 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3035) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3036 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_2977 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2977 + 241] = address(arg2)
                                            mem[_2977 + 189] = 40
                                            mem[_2977 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2977 + 294] = stor0
                                            mem[_2977 + 314] = sha3(mem[_2977 + 221 len 20], arg2)
                                            mem[_2977 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2977 + 261] = 85
                                            mem[64] = _2977 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2977 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2977 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2977 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3036) == address(_3036):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_2977 + 221] = address(arg2)
                                            mem[_2977 + 241] = address(_3036)
                                            mem[_2977 + 189] = 40
                                            mem[_2977 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2977 + 294] = stor0
                                            mem[_2977 + 314] = sha3(arg2, address(_3036))
                                            mem[_2977 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2977 + 261] = 85
                                            mem[64] = _2977 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3036)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3036)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2977 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3036) == arg2:
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
            _1931 = mem[96]
            idx = 0
            while idx <= _1931:
                if idx >= mem[96]:
                    if arg2 < arg3:
                        _1980 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _1981 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1983 = sha3(mem[_1981 + 32 len mem[_1981]])
                        mem[_1980 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1980 + 105] = stor0
                        mem[_1980 + 125] = _1983
                        mem[_1980 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_1980 + 72] = 85
                        mem[64] = _1980 + 189
                        require ext_code.size(address(sha3(0, stor0, _1983, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1983, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1980 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1980 + 189] = 2
                                                mem[64] = _1980 + 285
                                                mem[_1980 + 221] = arg2
                                                mem[_1980 + 253] = arg3
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
                                                mem[_1980 + 189] = 2
                                                mem[64] = _1980 + 285
                                                mem[_1980 + 221] = arg2
                                                mem[_1980 + 253] = arg3
                                                idx = idx + 1
                                                continue 
                    else:
                        _1988 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _1989 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1991 = sha3(mem[_1989 + 32 len mem[_1989]])
                        mem[_1988 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1988 + 105] = stor0
                        mem[_1988 + 125] = _1991
                        mem[_1988 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_1988 + 72] = 85
                        mem[64] = _1988 + 189
                        require ext_code.size(address(sha3(0, stor0, _1991, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _1991, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1988 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                mem[_1988 + 189] = 2
                                                mem[64] = _1988 + 285
                                                mem[_1988 + 221] = arg2
                                                mem[_1988 + 253] = arg3
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
                                                mem[_1988 + 189] = 2
                                                mem[64] = _1988 + 285
                                                mem[_1988 + 221] = arg2
                                                mem[_1988 + 253] = arg3
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
                            _1996 = mem[(32 * idx) + 128]
                            if arg2 < mem[(32 * idx) + 140 len 20]:
                                _2083 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_1996)
                                _2084 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2086 = sha3(mem[_2084 + 32 len mem[_2084]])
                                mem[_2083 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2083 + 105] = stor0
                                mem[_2083 + 125] = _2086
                                mem[_2083 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2083 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2083 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == arg2:
                                        require idx < mem[96]
                                        _2207 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2083 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2083 + 241] = address(arg3)
                                            mem[_2083 + 189] = 40
                                            mem[_2083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2083 + 294] = stor0
                                            mem[_2083 + 314] = sha3(mem[_2083 + 221 len 20], arg3)
                                            mem[_2083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2083 + 261] = 85
                                            mem[64] = _2083 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2083 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2083 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2083 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2207) == address(_2207):
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2083 + 221] = address(arg3)
                                            mem[_2083 + 241] = address(_2207)
                                            mem[_2083 + 189] = 40
                                            mem[_2083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2083 + 294] = stor0
                                            mem[_2083 + 314] = sha3(arg3, address(_2207))
                                            mem[_2083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2083 + 261] = 85
                                            mem[64] = _2083 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2207)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2207)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2083 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2207) == arg3:
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2208 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2083 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2083 + 241] = address(arg3)
                                            mem[_2083 + 189] = 40
                                            mem[_2083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2083 + 294] = stor0
                                            mem[_2083 + 314] = sha3(mem[_2083 + 221 len 20], arg3)
                                            mem[_2083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2083 + 261] = 85
                                            mem[64] = _2083 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2083 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2083 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2083 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2208) == address(_2208):
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2083 + 221] = address(arg3)
                                            mem[_2083 + 241] = address(_2208)
                                            mem[_2083 + 189] = 40
                                            mem[_2083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2083 + 294] = stor0
                                            mem[_2083 + 314] = sha3(arg3, address(_2208))
                                            mem[_2083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2083 + 261] = 85
                                            mem[64] = _2083 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2208)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2208)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2083 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2208) == arg3:
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
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
                                                                                mem[_2083 + 378] = 3
                                                                                mem[64] = _2083 + 506
                                                                                mem[_2083 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2083 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2083 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2083 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                            else:
                                _2091 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2092 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2094 = sha3(mem[_2092 + 32 len mem[_2092]])
                                mem[_2091 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2091 + 105] = stor0
                                mem[_2091 + 125] = _2094
                                mem[_2091 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2091 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2094, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2094, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2091 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg2 == address(_1996):
                                        require idx < mem[96]
                                        _2209 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2091 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2091 + 241] = address(arg3)
                                            mem[_2091 + 189] = 40
                                            mem[_2091 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2091 + 294] = stor0
                                            mem[_2091 + 314] = sha3(mem[_2091 + 221 len 20], arg3)
                                            mem[_2091 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2091 + 261] = 85
                                            mem[64] = _2091 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2091 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2091 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2091 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2209) == address(_2209):
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2091 + 221] = address(arg3)
                                            mem[_2091 + 241] = address(_2209)
                                            mem[_2091 + 189] = 40
                                            mem[_2091 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2091 + 294] = stor0
                                            mem[_2091 + 314] = sha3(arg3, address(_2209))
                                            mem[_2091 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2091 + 261] = 85
                                            mem[64] = _2091 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2209)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2209)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2091 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2209) == arg3:
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2210 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2091 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2091 + 241] = address(arg3)
                                            mem[_2091 + 189] = 40
                                            mem[_2091 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2091 + 294] = stor0
                                            mem[_2091 + 314] = sha3(mem[_2091 + 221 len 20], arg3)
                                            mem[_2091 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2091 + 261] = 85
                                            mem[64] = _2091 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2091 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2091 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2091 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2210) == address(_2210):
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2091 + 221] = address(arg3)
                                            mem[_2091 + 241] = address(_2210)
                                            mem[_2091 + 189] = 40
                                            mem[_2091 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2091 + 294] = stor0
                                            mem[_2091 + 314] = sha3(arg3, address(_2210))
                                            mem[_2091 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2091 + 261] = 85
                                            mem[64] = _2091 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2210)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2210)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2091 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_2210) == arg3:
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
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
                                                                                mem[_2091 + 378] = 3
                                                                                mem[64] = _2091 + 506
                                                                                mem[_2091 + 410 len 96] = code.data[3241 len 96]
                                                                                mem[_2091 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2091 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2091 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                        else:
                            idx = idx + 1
                            continue 
            _2892 = mem[96]
            idx = 0
            while idx <= _2892:
                if idx >= mem[96]:
                    if arg3 < arg2:
                        _2928 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2929 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2931 = sha3(mem[_2929 + 32 len mem[_2929]])
                        mem[_2928 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2928 + 105] = stor0
                        mem[_2928 + 125] = _2931
                        mem[_2928 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2928 + 72] = 85
                        mem[64] = _2928 + 189
                        require ext_code.size(address(sha3(0, stor0, _2931, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2931, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2928 + 189 len 96] = ext_call.return_data[0 len 96]
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
                        _2936 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2937 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2939 = sha3(mem[_2937 + 32 len mem[_2937]])
                        mem[_2936 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2936 + 105] = stor0
                        mem[_2936 + 125] = _2939
                        mem[_2936 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2936 + 72] = 85
                        mem[64] = _2936 + 189
                        require ext_code.size(address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2936 + 189 len 96] = ext_call.return_data[0 len 96]
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
                            _2944 = mem[(32 * idx) + 128]
                            if arg3 < mem[(32 * idx) + 140 len 20]:
                                _2985 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_2944)
                                _2986 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2988 = sha3(mem[_2986 + 32 len mem[_2986]])
                                mem[_2985 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2985 + 105] = stor0
                                mem[_2985 + 125] = _2988
                                mem[_2985 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2985 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2988, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2988, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2985 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require idx < mem[96]
                                        _3037 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_2985 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2985 + 241] = address(arg2)
                                            mem[_2985 + 189] = 40
                                            mem[_2985 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2985 + 294] = stor0
                                            mem[_2985 + 314] = sha3(mem[_2985 + 221 len 20], arg2)
                                            mem[_2985 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2985 + 261] = 85
                                            mem[64] = _2985 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2985 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2985 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2985 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3037) == address(_3037):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_2985 + 221] = address(arg2)
                                            mem[_2985 + 241] = address(_3037)
                                            mem[_2985 + 189] = 40
                                            mem[_2985 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2985 + 294] = stor0
                                            mem[_2985 + 314] = sha3(arg2, address(_3037))
                                            mem[_2985 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2985 + 261] = 85
                                            mem[64] = _2985 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3037)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3037)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2985 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3037) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3038 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_2985 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2985 + 241] = address(arg2)
                                            mem[_2985 + 189] = 40
                                            mem[_2985 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2985 + 294] = stor0
                                            mem[_2985 + 314] = sha3(mem[_2985 + 221 len 20], arg2)
                                            mem[_2985 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2985 + 261] = 85
                                            mem[64] = _2985 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2985 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2985 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2985 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3038) == address(_3038):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_2985 + 221] = address(arg2)
                                            mem[_2985 + 241] = address(_3038)
                                            mem[_2985 + 189] = 40
                                            mem[_2985 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2985 + 294] = stor0
                                            mem[_2985 + 314] = sha3(arg2, address(_3038))
                                            mem[_2985 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2985 + 261] = 85
                                            mem[64] = _2985 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3038)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3038)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2985 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3038) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                            else:
                                _2993 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _2994 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2996 = sha3(mem[_2994 + 32 len mem[_2994]])
                                mem[_2993 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2993 + 105] = stor0
                                mem[_2993 + 125] = _2996
                                mem[_2993 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2993 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2996, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2996, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2993 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_2944):
                                        require idx < mem[96]
                                        _3039 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_2993 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2993 + 241] = address(arg2)
                                            mem[_2993 + 189] = 40
                                            mem[_2993 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2993 + 294] = stor0
                                            mem[_2993 + 314] = sha3(mem[_2993 + 221 len 20], arg2)
                                            mem[_2993 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2993 + 261] = 85
                                            mem[64] = _2993 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2993 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2993 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2993 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3039) == address(_3039):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_2993 + 221] = address(arg2)
                                            mem[_2993 + 241] = address(_3039)
                                            mem[_2993 + 189] = 40
                                            mem[_2993 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2993 + 294] = stor0
                                            mem[_2993 + 314] = sha3(arg2, address(_3039))
                                            mem[_2993 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2993 + 261] = 85
                                            mem[64] = _2993 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3039)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3039)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2993 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3039) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3040 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_2993 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2993 + 241] = address(arg2)
                                            mem[_2993 + 189] = 40
                                            mem[_2993 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2993 + 294] = stor0
                                            mem[_2993 + 314] = sha3(mem[_2993 + 221 len 20], arg2)
                                            mem[_2993 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2993 + 261] = 85
                                            mem[64] = _2993 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2993 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2993 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2993 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3040) == address(_3040):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_2993 + 221] = address(arg2)
                                            mem[_2993 + 241] = address(_3040)
                                            mem[_2993 + 189] = 40
                                            mem[_2993 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2993 + 294] = stor0
                                            mem[_2993 + 314] = sha3(arg2, address(_3040))
                                            mem[_2993 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2993 + 261] = 85
                                            mem[64] = _2993 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3040)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3040)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2993 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if address(_3040) == arg2:
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
    _966 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_966 + 160] = mem[96]
    _968 = mem[96]
    mem[_966 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_966 + 32] = (32 * mem[96]) + 192
    mem[(32 * _968) + _966 + 192] = mem[96]
    mem[(32 * _968) + _966 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _968) + _966 + -mem[64] + 224
}



}
