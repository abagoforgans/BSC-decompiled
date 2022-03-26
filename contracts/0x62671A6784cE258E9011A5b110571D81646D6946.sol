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
            return 0
        require return_data.size >= 96
        if arg1 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        require ext_code.size(address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
        staticcall address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            return 0
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
                require ext_code.size(address(sha3(0, stor0, _374, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _374, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_371 + 189 len 96] = ext_call.return_data[0 len 96]
                if ext_call.success:
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
                require ext_code.size(address(sha3(0, stor0, _382, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _382, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_379 + 189 len 96] = ext_call.return_data[0 len 96]
                if ext_call.success:
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
                        _400 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(_387)
                        _401 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _403 = sha3(mem[_401 + 32 len mem[_401]])
                        mem[_400 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_400 + 105] = stor0
                        mem[_400 + 125] = _403
                        mem[_400 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_400 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _403, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _403, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_400 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            require idx < mem[96]
                            _430 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_400 + 221] = address(mem[(32 * idx) + 128])
                                mem[_400 + 241] = address(arg3)
                                mem[_400 + 189] = 40
                                mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_400 + 294] = stor0
                                mem[_400 + 314] = sha3(mem[_400 + 221 len 20], arg3)
                                mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_400 + 261] = 85
                                mem[64] = _400 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[_400 + 221] = address(arg3)
                                mem[_400 + 241] = address(_430)
                                mem[_400 + 189] = 40
                                mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_400 + 294] = stor0
                                mem[_400 + 314] = sha3(arg3, address(_430))
                                mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_400 + 261] = 85
                                mem[64] = _400 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_430)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_430)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            mem[_400 + 378 len 96] = ext_call.return_data[0 len 96]
                            if ext_call.success:
                                require return_data.size >= 96
                        else:
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == arg2:
                                _436 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_400 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_400 + 241] = address(arg3)
                                    mem[_400 + 189] = 40
                                    mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_400 + 294] = stor0
                                    mem[_400 + 314] = sha3(mem[_400 + 221 len 20], arg3)
                                    mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_400 + 261] = 85
                                    mem[64] = _400 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_400 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_436) == address(_436):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
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
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
                                else:
                                    mem[_400 + 221] = address(arg3)
                                    mem[_400 + 241] = address(_436)
                                    mem[_400 + 189] = 40
                                    mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_400 + 294] = stor0
                                    mem[_400 + 314] = sha3(arg3, address(_436))
                                    mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_400 + 261] = 85
                                    mem[64] = _400 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_436)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_436)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_400 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_436) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
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
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
                            else:
                                _437 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_400 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_400 + 241] = address(arg3)
                                    mem[_400 + 189] = 40
                                    mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_400 + 294] = stor0
                                    mem[_400 + 314] = sha3(mem[_400 + 221 len 20], arg3)
                                    mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_400 + 261] = 85
                                    mem[64] = _400 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_400 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_400 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_437) == address(_437):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
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
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
                                else:
                                    mem[_400 + 221] = address(arg3)
                                    mem[_400 + 241] = address(_437)
                                    mem[_400 + 189] = 40
                                    mem[_400 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_400 + 294] = stor0
                                    mem[_400 + 314] = sha3(arg3, address(_437))
                                    mem[_400 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_400 + 261] = 85
                                    mem[64] = _400 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_437)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_437)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_400 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_437) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
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
                                                                        mem[_400 + 378] = 3
                                                                        mem[64] = _400 + 506
                                                                        mem[_400 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_400 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_400 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_400 + 474] = arg3
                    else:
                        _408 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(arg2)
                        _409 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _411 = sha3(mem[_409 + 32 len mem[_409]])
                        mem[_408 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_408 + 105] = stor0
                        mem[_408 + 125] = _411
                        mem[_408 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_408 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_408 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            require idx < mem[96]
                            _431 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_408 + 221] = address(mem[(32 * idx) + 128])
                                mem[_408 + 241] = address(arg3)
                                mem[_408 + 189] = 40
                                mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_408 + 294] = stor0
                                mem[_408 + 314] = sha3(mem[_408 + 221 len 20], arg3)
                                mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_408 + 261] = 85
                                mem[64] = _408 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[_408 + 221] = address(arg3)
                                mem[_408 + 241] = address(_431)
                                mem[_408 + 189] = 40
                                mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_408 + 294] = stor0
                                mem[_408 + 314] = sha3(arg3, address(_431))
                                mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_408 + 261] = 85
                                mem[64] = _408 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_431)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_431)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            mem[_408 + 378 len 96] = ext_call.return_data[0 len 96]
                            if ext_call.success:
                                require return_data.size >= 96
                        else:
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == address(_387):
                                _438 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_408 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_408 + 241] = address(arg3)
                                    mem[_408 + 189] = 40
                                    mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_408 + 294] = stor0
                                    mem[_408 + 314] = sha3(mem[_408 + 221 len 20], arg3)
                                    mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_408 + 261] = 85
                                    mem[64] = _408 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_408 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_438) == address(_438):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
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
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
                                else:
                                    mem[_408 + 221] = address(arg3)
                                    mem[_408 + 241] = address(_438)
                                    mem[_408 + 189] = 40
                                    mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_408 + 294] = stor0
                                    mem[_408 + 314] = sha3(arg3, address(_438))
                                    mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_408 + 261] = 85
                                    mem[64] = _408 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_438)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_438)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_408 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_438) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
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
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
                            else:
                                _439 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_408 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_408 + 241] = address(arg3)
                                    mem[_408 + 189] = 40
                                    mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_408 + 294] = stor0
                                    mem[_408 + 314] = sha3(mem[_408 + 221 len 20], arg3)
                                    mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_408 + 261] = 85
                                    mem[64] = _408 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_408 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_408 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_439) == address(_439):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
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
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
                                else:
                                    mem[_408 + 221] = address(arg3)
                                    mem[_408 + 241] = address(_439)
                                    mem[_408 + 189] = 40
                                    mem[_408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_408 + 294] = stor0
                                    mem[_408 + 314] = sha3(arg3, address(_439))
                                    mem[_408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_408 + 261] = 85
                                    mem[64] = _408 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_439)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_439)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_408 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_439) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
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
                                                                        mem[_408 + 378] = 3
                                                                        mem[64] = _408 + 506
                                                                        mem[_408 + 410 len 96] = code.data[3263 len 96]
                                                                        mem[_408 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_408 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_408 + 474] = arg3
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
                        require ext_code.size(address(sha3(0, stor0, _2445, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2445, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2442 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            if idx <= 0:
                                s = s + 1
                                continue 
                            else:
                                s = s + 1
                                continue 
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
                        require ext_code.size(address(sha3(0, stor0, _2453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2450 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            if idx <= 0:
                                s = s + 1
                                continue 
                            else:
                                s = s + 1
                                continue 
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
                                _2547 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2458)
                                _2548 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2550 = sha3(mem[_2548 + 32 len mem[_2548]])
                                mem[_2547 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2547 + 105] = stor0
                                mem[_2547 + 125] = _2550
                                mem[_2547 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2547 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2550, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2550, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2547 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _2665 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2547 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2547 + 241] = address(arg3)
                                        mem[_2547 + 189] = 40
                                        mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2547 + 294] = stor0
                                        mem[_2547 + 314] = sha3(mem[_2547 + 221 len 20], arg3)
                                        mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2547 + 261] = 85
                                        mem[64] = _2547 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2665) == address(_2665):
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
                                        mem[_2547 + 221] = address(arg3)
                                        mem[_2547 + 241] = address(_2665)
                                        mem[_2547 + 189] = 40
                                        mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2547 + 294] = stor0
                                        mem[_2547 + 314] = sha3(arg3, address(_2665))
                                        mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2547 + 261] = 85
                                        mem[64] = _2547 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2665)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2665)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2665) == arg3:
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
                                    require return_data.size >= 96
                                    if arg2 == arg2:
                                        require s < mem[96]
                                        _2697 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2547 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2547 + 241] = address(arg3)
                                            mem[_2547 + 189] = 40
                                            mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2547 + 294] = stor0
                                            mem[_2547 + 314] = sha3(mem[_2547 + 221 len 20], arg3)
                                            mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2547 + 261] = 85
                                            mem[64] = _2547 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2697) == address(_2697):
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2547 + 221] = address(arg3)
                                            mem[_2547 + 241] = address(_2697)
                                            mem[_2547 + 189] = 40
                                            mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2547 + 294] = stor0
                                            mem[_2547 + 314] = sha3(arg3, address(_2697))
                                            mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2547 + 261] = 85
                                            mem[64] = _2547 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2697)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2697)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2697) == arg3:
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2698 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2547 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2547 + 241] = address(arg3)
                                            mem[_2547 + 189] = 40
                                            mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2547 + 294] = stor0
                                            mem[_2547 + 314] = sha3(mem[_2547 + 221 len 20], arg3)
                                            mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2547 + 261] = 85
                                            mem[64] = _2547 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2547 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2698) == address(_2698):
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2547 + 221] = address(arg3)
                                            mem[_2547 + 241] = address(_2698)
                                            mem[_2547 + 189] = 40
                                            mem[_2547 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2547 + 294] = stor0
                                            mem[_2547 + 314] = sha3(arg3, address(_2698))
                                            mem[_2547 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2547 + 261] = 85
                                            mem[64] = _2547 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2698)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2698)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2547 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2698) == arg3:
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
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
                                                                                mem[_2547 + 378] = 3
                                                                                mem[64] = _2547 + 506
                                                                                mem[_2547 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2547 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2547 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2547 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                            else:
                                _2555 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2556 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2558 = sha3(mem[_2556 + 32 len mem[_2556]])
                                mem[_2555 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2555 + 105] = stor0
                                mem[_2555 + 125] = _2558
                                mem[_2555 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2555 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2555 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _2666 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2555 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2555 + 241] = address(arg3)
                                        mem[_2555 + 189] = 40
                                        mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2555 + 294] = stor0
                                        mem[_2555 + 314] = sha3(mem[_2555 + 221 len 20], arg3)
                                        mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2555 + 261] = 85
                                        mem[64] = _2555 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2666) == address(_2666):
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
                                        mem[_2555 + 221] = address(arg3)
                                        mem[_2555 + 241] = address(_2666)
                                        mem[_2555 + 189] = 40
                                        mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2555 + 294] = stor0
                                        mem[_2555 + 314] = sha3(arg3, address(_2666))
                                        mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2555 + 261] = 85
                                        mem[64] = _2555 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2666)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2666)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2666) == arg3:
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
                                    require return_data.size >= 96
                                    if arg2 == address(_2458):
                                        require s < mem[96]
                                        _2699 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2555 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2555 + 241] = address(arg3)
                                            mem[_2555 + 189] = 40
                                            mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2555 + 294] = stor0
                                            mem[_2555 + 314] = sha3(mem[_2555 + 221 len 20], arg3)
                                            mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2555 + 261] = 85
                                            mem[64] = _2555 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2699) == address(_2699):
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2555 + 221] = address(arg3)
                                            mem[_2555 + 241] = address(_2699)
                                            mem[_2555 + 189] = 40
                                            mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2555 + 294] = stor0
                                            mem[_2555 + 314] = sha3(arg3, address(_2699))
                                            mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2555 + 261] = 85
                                            mem[64] = _2555 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2699)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2699)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2699) == arg3:
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2700 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2555 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2555 + 241] = address(arg3)
                                            mem[_2555 + 189] = 40
                                            mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2555 + 294] = stor0
                                            mem[_2555 + 314] = sha3(mem[_2555 + 221 len 20], arg3)
                                            mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2555 + 261] = 85
                                            mem[64] = _2555 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2555 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2700) == address(_2700):
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2555 + 221] = address(arg3)
                                            mem[_2555 + 241] = address(_2700)
                                            mem[_2555 + 189] = 40
                                            mem[_2555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2555 + 294] = stor0
                                            mem[_2555 + 314] = sha3(arg3, address(_2700))
                                            mem[_2555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2555 + 261] = 85
                                            mem[64] = _2555 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2700)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2700)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2555 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2700) == arg3:
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
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
                                                                                mem[_2555 + 378] = 3
                                                                                mem[64] = _2555 + 506
                                                                                mem[_2555 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2555 + 410] = arg2
                                                                                require s < mem[96]
                                                                                mem[_2555 + 442] = mem[(32 * s) + 140 len 20]
                                                                                mem[_2555 + 474] = arg3
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
                        require ext_code.size(address(sha3(0, stor0, _3634, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3634, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3631 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            s = s + 1
                            continue 
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
                        require ext_code.size(address(sha3(0, stor0, _3642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3639 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            s = s + 1
                            continue 
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
                                _3689 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3647)
                                _3690 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3692 = sha3(mem[_3690 + 32 len mem[_3690]])
                                mem[_3689 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3689 + 105] = stor0
                                mem[_3689 + 125] = _3692
                                mem[_3689 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3689 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3692, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3692, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3689 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _3749 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3689 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3689 + 241] = address(arg2)
                                        mem[_3689 + 189] = 40
                                        mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3689 + 294] = stor0
                                        mem[_3689 + 314] = sha3(mem[_3689 + 221 len 20], arg2)
                                        mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3689 + 261] = 85
                                        mem[64] = _3689 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3749) == address(_3749):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_3689 + 221] = address(arg2)
                                        mem[_3689 + 241] = address(_3749)
                                        mem[_3689 + 189] = 40
                                        mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3689 + 294] = stor0
                                        mem[_3689 + 314] = sha3(arg2, address(_3749))
                                        mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3689 + 261] = 85
                                        mem[64] = _3689 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3749)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3749)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3749) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require s < mem[96]
                                        _3761 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3689 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3689 + 241] = address(arg2)
                                            mem[_3689 + 189] = 40
                                            mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3689 + 294] = stor0
                                            mem[_3689 + 314] = sha3(mem[_3689 + 221 len 20], arg2)
                                            mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3689 + 261] = 85
                                            mem[64] = _3689 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3761) == address(_3761):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3689 + 221] = address(arg2)
                                            mem[_3689 + 241] = address(_3761)
                                            mem[_3689 + 189] = 40
                                            mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3689 + 294] = stor0
                                            mem[_3689 + 314] = sha3(arg2, address(_3761))
                                            mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3689 + 261] = 85
                                            mem[64] = _3689 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3761)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3761)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3761) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3762 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3689 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3689 + 241] = address(arg2)
                                            mem[_3689 + 189] = 40
                                            mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3689 + 294] = stor0
                                            mem[_3689 + 314] = sha3(mem[_3689 + 221 len 20], arg2)
                                            mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3689 + 261] = 85
                                            mem[64] = _3689 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3689 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3762) == address(_3762):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3689 + 221] = address(arg2)
                                            mem[_3689 + 241] = address(_3762)
                                            mem[_3689 + 189] = 40
                                            mem[_3689 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3689 + 294] = stor0
                                            mem[_3689 + 314] = sha3(arg2, address(_3762))
                                            mem[_3689 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3689 + 261] = 85
                                            mem[64] = _3689 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3762)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3762)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3689 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3762) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                            else:
                                _3697 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3698 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3700 = sha3(mem[_3698 + 32 len mem[_3698]])
                                mem[_3697 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3697 + 105] = stor0
                                mem[_3697 + 125] = _3700
                                mem[_3697 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3697 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3700, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3700, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3697 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _3750 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3697 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3697 + 241] = address(arg2)
                                        mem[_3697 + 189] = 40
                                        mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3697 + 294] = stor0
                                        mem[_3697 + 314] = sha3(mem[_3697 + 221 len 20], arg2)
                                        mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3697 + 261] = 85
                                        mem[64] = _3697 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3750) == address(_3750):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_3697 + 221] = address(arg2)
                                        mem[_3697 + 241] = address(_3750)
                                        mem[_3697 + 189] = 40
                                        mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3697 + 294] = stor0
                                        mem[_3697 + 314] = sha3(arg2, address(_3750))
                                        mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3697 + 261] = 85
                                        mem[64] = _3697 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3750)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3750)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3750) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_3647):
                                        require s < mem[96]
                                        _3763 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3697 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3697 + 241] = address(arg2)
                                            mem[_3697 + 189] = 40
                                            mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3697 + 294] = stor0
                                            mem[_3697 + 314] = sha3(mem[_3697 + 221 len 20], arg2)
                                            mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3697 + 261] = 85
                                            mem[64] = _3697 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3763) == address(_3763):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3697 + 221] = address(arg2)
                                            mem[_3697 + 241] = address(_3763)
                                            mem[_3697 + 189] = 40
                                            mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3697 + 294] = stor0
                                            mem[_3697 + 314] = sha3(arg2, address(_3763))
                                            mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3697 + 261] = 85
                                            mem[64] = _3697 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3763)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3763)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3763) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3764 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3697 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3697 + 241] = address(arg2)
                                            mem[_3697 + 189] = 40
                                            mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3697 + 294] = stor0
                                            mem[_3697 + 314] = sha3(mem[_3697 + 221 len 20], arg2)
                                            mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3697 + 261] = 85
                                            mem[64] = _3697 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3697 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3764) == address(_3764):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3697 + 221] = address(arg2)
                                            mem[_3697 + 241] = address(_3764)
                                            mem[_3697 + 189] = 40
                                            mem[_3697 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3697 + 294] = stor0
                                            mem[_3697 + 314] = sha3(arg2, address(_3764))
                                            mem[_3697 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3697 + 261] = 85
                                            mem[64] = _3697 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3764)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3764)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3697 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3764) == arg2:
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
                        require ext_code.size(address(sha3(0, stor0, _2463, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2463, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2460 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            if arg5 <= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
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
                        require ext_code.size(address(sha3(0, stor0, _2471, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2471, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2468 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            if arg5 <= 0:
                                idx = idx + 1
                                continue 
                            else:
                                idx = idx + 1
                                continue 
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
                                _2563 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2476)
                                _2564 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2566 = sha3(mem[_2564 + 32 len mem[_2564]])
                                mem[_2563 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2563 + 105] = stor0
                                mem[_2563 + 125] = _2566
                                mem[_2563 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2563 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2566, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2566, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2563 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _2669 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2563 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2563 + 241] = address(arg3)
                                        mem[_2563 + 189] = 40
                                        mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2563 + 294] = stor0
                                        mem[_2563 + 314] = sha3(mem[_2563 + 221 len 20], arg3)
                                        mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2563 + 261] = 85
                                        mem[64] = _2563 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2669) == address(_2669):
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
                                        mem[_2563 + 221] = address(arg3)
                                        mem[_2563 + 241] = address(_2669)
                                        mem[_2563 + 189] = 40
                                        mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2563 + 294] = stor0
                                        mem[_2563 + 314] = sha3(arg3, address(_2669))
                                        mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2563 + 261] = 85
                                        mem[64] = _2563 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2669)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2669)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2669) == arg3:
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
                                    require return_data.size >= 96
                                    if arg2 == arg2:
                                        require idx < mem[96]
                                        _2703 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2563 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2563 + 241] = address(arg3)
                                            mem[_2563 + 189] = 40
                                            mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2563 + 294] = stor0
                                            mem[_2563 + 314] = sha3(mem[_2563 + 221 len 20], arg3)
                                            mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2563 + 261] = 85
                                            mem[64] = _2563 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2703) == address(_2703):
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2563 + 221] = address(arg3)
                                            mem[_2563 + 241] = address(_2703)
                                            mem[_2563 + 189] = 40
                                            mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2563 + 294] = stor0
                                            mem[_2563 + 314] = sha3(arg3, address(_2703))
                                            mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2563 + 261] = 85
                                            mem[64] = _2563 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2703)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2703)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2703) == arg3:
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2704 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2563 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2563 + 241] = address(arg3)
                                            mem[_2563 + 189] = 40
                                            mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2563 + 294] = stor0
                                            mem[_2563 + 314] = sha3(mem[_2563 + 221 len 20], arg3)
                                            mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2563 + 261] = 85
                                            mem[64] = _2563 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2563 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2704) == address(_2704):
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2563 + 221] = address(arg3)
                                            mem[_2563 + 241] = address(_2704)
                                            mem[_2563 + 189] = 40
                                            mem[_2563 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2563 + 294] = stor0
                                            mem[_2563 + 314] = sha3(arg3, address(_2704))
                                            mem[_2563 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2563 + 261] = 85
                                            mem[64] = _2563 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2704)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2704)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2563 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2704) == arg3:
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
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
                                                                                mem[_2563 + 378] = 3
                                                                                mem[64] = _2563 + 506
                                                                                mem[_2563 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2563 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2563 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2563 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                            else:
                                _2571 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2572 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2574 = sha3(mem[_2572 + 32 len mem[_2572]])
                                mem[_2571 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2571 + 105] = stor0
                                mem[_2571 + 125] = _2574
                                mem[_2571 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2571 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2574, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2574, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2571 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _2670 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2571 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2571 + 241] = address(arg3)
                                        mem[_2571 + 189] = 40
                                        mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2571 + 294] = stor0
                                        mem[_2571 + 314] = sha3(mem[_2571 + 221 len 20], arg3)
                                        mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2571 + 261] = 85
                                        mem[64] = _2571 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2670) == address(_2670):
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
                                        mem[_2571 + 221] = address(arg3)
                                        mem[_2571 + 241] = address(_2670)
                                        mem[_2571 + 189] = 40
                                        mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2571 + 294] = stor0
                                        mem[_2571 + 314] = sha3(arg3, address(_2670))
                                        mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2571 + 261] = 85
                                        mem[64] = _2571 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2670)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2670)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2670) == arg3:
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
                                    require return_data.size >= 96
                                    if arg2 == address(_2476):
                                        require idx < mem[96]
                                        _2705 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2571 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2571 + 241] = address(arg3)
                                            mem[_2571 + 189] = 40
                                            mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2571 + 294] = stor0
                                            mem[_2571 + 314] = sha3(mem[_2571 + 221 len 20], arg3)
                                            mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2571 + 261] = 85
                                            mem[64] = _2571 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2705) == address(_2705):
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2571 + 221] = address(arg3)
                                            mem[_2571 + 241] = address(_2705)
                                            mem[_2571 + 189] = 40
                                            mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2571 + 294] = stor0
                                            mem[_2571 + 314] = sha3(arg3, address(_2705))
                                            mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2571 + 261] = 85
                                            mem[64] = _2571 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2705)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2705)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2705) == arg3:
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2706 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2571 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2571 + 241] = address(arg3)
                                            mem[_2571 + 189] = 40
                                            mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2571 + 294] = stor0
                                            mem[_2571 + 314] = sha3(mem[_2571 + 221 len 20], arg3)
                                            mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2571 + 261] = 85
                                            mem[64] = _2571 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2571 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2706) == address(_2706):
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2571 + 221] = address(arg3)
                                            mem[_2571 + 241] = address(_2706)
                                            mem[_2571 + 189] = 40
                                            mem[_2571 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2571 + 294] = stor0
                                            mem[_2571 + 314] = sha3(arg3, address(_2706))
                                            mem[_2571 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2571 + 261] = 85
                                            mem[64] = _2571 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2706)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2706)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2571 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
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
                                                require return_data.size >= 96
                                                if address(_2706) == arg3:
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
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
                                                                                mem[_2571 + 378] = 3
                                                                                mem[64] = _2571 + 506
                                                                                mem[_2571 + 410 len 96] = code.data[3263 len 96]
                                                                                mem[_2571 + 410] = arg2
                                                                                require idx < mem[96]
                                                                                mem[_2571 + 442] = mem[(32 * idx) + 140 len 20]
                                                                                mem[_2571 + 474] = arg3
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
                        require ext_code.size(address(sha3(0, stor0, _3651, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3651, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3648 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            idx = idx + 1
                            continue 
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
                        require ext_code.size(address(sha3(0, stor0, _3659, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3659, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3656 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            idx = idx + 1
                            continue 
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
                                _3705 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3664)
                                _3706 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3708 = sha3(mem[_3706 + 32 len mem[_3706]])
                                mem[_3705 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3705 + 105] = stor0
                                mem[_3705 + 125] = _3708
                                mem[_3705 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3705 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3708, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3708, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3705 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _3751 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3705 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3705 + 241] = address(arg2)
                                        mem[_3705 + 189] = 40
                                        mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3705 + 294] = stor0
                                        mem[_3705 + 314] = sha3(mem[_3705 + 221 len 20], arg2)
                                        mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3705 + 261] = 85
                                        mem[64] = _3705 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3751) == address(_3751):
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[_3705 + 221] = address(arg2)
                                        mem[_3705 + 241] = address(_3751)
                                        mem[_3705 + 189] = 40
                                        mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3705 + 294] = stor0
                                        mem[_3705 + 314] = sha3(arg2, address(_3751))
                                        mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3705 + 261] = 85
                                        mem[64] = _3705 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3751)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3751)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3751) == arg2:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require idx < mem[96]
                                        _3765 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3705 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3705 + 241] = address(arg2)
                                            mem[_3705 + 189] = 40
                                            mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3705 + 294] = stor0
                                            mem[_3705 + 314] = sha3(mem[_3705 + 221 len 20], arg2)
                                            mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3705 + 261] = 85
                                            mem[64] = _3705 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3765) == address(_3765):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3705 + 221] = address(arg2)
                                            mem[_3705 + 241] = address(_3765)
                                            mem[_3705 + 189] = 40
                                            mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3705 + 294] = stor0
                                            mem[_3705 + 314] = sha3(arg2, address(_3765))
                                            mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3705 + 261] = 85
                                            mem[64] = _3705 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3765)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3765)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3765) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3766 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3705 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3705 + 241] = address(arg2)
                                            mem[_3705 + 189] = 40
                                            mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3705 + 294] = stor0
                                            mem[_3705 + 314] = sha3(mem[_3705 + 221 len 20], arg2)
                                            mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3705 + 261] = 85
                                            mem[64] = _3705 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3705 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3766) == address(_3766):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3705 + 221] = address(arg2)
                                            mem[_3705 + 241] = address(_3766)
                                            mem[_3705 + 189] = 40
                                            mem[_3705 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3705 + 294] = stor0
                                            mem[_3705 + 314] = sha3(arg2, address(_3766))
                                            mem[_3705 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3705 + 261] = 85
                                            mem[64] = _3705 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3766)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3766)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3705 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3766) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                            else:
                                _3713 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3714 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3716 = sha3(mem[_3714 + 32 len mem[_3714]])
                                mem[_3713 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3713 + 105] = stor0
                                mem[_3713 + 125] = _3716
                                mem[_3713 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3713 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3716, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3716, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3713 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _3752 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3713 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3713 + 241] = address(arg2)
                                        mem[_3713 + 189] = 40
                                        mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3713 + 294] = stor0
                                        mem[_3713 + 314] = sha3(mem[_3713 + 221 len 20], arg2)
                                        mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3713 + 261] = 85
                                        mem[64] = _3713 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3752) == address(_3752):
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[_3713 + 221] = address(arg2)
                                        mem[_3713 + 241] = address(_3752)
                                        mem[_3713 + 189] = 40
                                        mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3713 + 294] = stor0
                                        mem[_3713 + 314] = sha3(arg2, address(_3752))
                                        mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3713 + 261] = 85
                                        mem[64] = _3713 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3752)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3752)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3752) == arg2:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_3664):
                                        require idx < mem[96]
                                        _3767 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3713 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3713 + 241] = address(arg2)
                                            mem[_3713 + 189] = 40
                                            mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3713 + 294] = stor0
                                            mem[_3713 + 314] = sha3(mem[_3713 + 221 len 20], arg2)
                                            mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3713 + 261] = 85
                                            mem[64] = _3713 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3767) == address(_3767):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3713 + 221] = address(arg2)
                                            mem[_3713 + 241] = address(_3767)
                                            mem[_3713 + 189] = 40
                                            mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3713 + 294] = stor0
                                            mem[_3713 + 314] = sha3(arg2, address(_3767))
                                            mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3713 + 261] = 85
                                            mem[64] = _3713 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3767)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3767)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3767) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3768 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3713 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3713 + 241] = address(arg2)
                                            mem[_3713 + 189] = 40
                                            mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3713 + 294] = stor0
                                            mem[_3713 + 314] = sha3(mem[_3713 + 221 len 20], arg2)
                                            mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3713 + 261] = 85
                                            mem[64] = _3713 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3713 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3768) == address(_3768):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3713 + 221] = address(arg2)
                                            mem[_3713 + 241] = address(_3768)
                                            mem[_3713 + 189] = 40
                                            mem[_3713 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3713 + 294] = stor0
                                            mem[_3713 + 314] = sha3(arg2, address(_3768))
                                            mem[_3713 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3713 + 261] = 85
                                            mem[64] = _3713 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3768)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3768)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3713 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3768) == arg2:
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
