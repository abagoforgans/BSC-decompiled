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
                _351 = mem[64]
                mem[mem[64] + 32] = address(arg2)
                mem[mem[64] + 52] = address(arg3)
                _352 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _354 = sha3(mem[_352 + 32 len mem[_352]])
                mem[_351 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_351 + 105] = stor0
                mem[_351 + 125] = _354
                mem[_351 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_351 + 72] = 85
                mem[64] = _351 + 189
                require ext_code.size(address(sha3(0, stor0, _354, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _354, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_351 + 189 len 96] = ext_call.return_data[0 len 96]
                if ext_call.success:
                    require return_data.size >= 96
                    if arg2 == arg2:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                        require 0 < mem[96]
                                        mem[128] = arg2
                                        require 1 < mem[96]
                                        mem[160] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                        require 0 < mem[96]
                                        mem[128] = arg2
                                        require 1 < mem[96]
                                        mem[160] = arg3
            else:
                _359 = mem[64]
                mem[mem[64] + 32] = address(arg3)
                mem[mem[64] + 52] = address(arg2)
                _360 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _362 = sha3(mem[_360 + 32 len mem[_360]])
                mem[_359 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_359 + 105] = stor0
                mem[_359 + 125] = _362
                mem[_359 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_359 + 72] = 85
                mem[64] = _359 + 189
                require ext_code.size(address(sha3(0, stor0, _362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_359 + 189 len 96] = ext_call.return_data[0 len 96]
                if ext_call.success:
                    require return_data.size >= 96
                    if arg2 == arg3:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) > 0:
                                        require 0 < mem[96]
                                        mem[128] = arg2
                                        require 1 < mem[96]
                                        mem[160] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) > 0:
                                        require 0 < mem[96]
                                        mem[128] = arg2
                                        require 1 < mem[96]
                                        mem[160] = arg3
        else:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != arg2:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] != arg3:
                    require idx < mem[96]
                    _367 = mem[(32 * idx) + 128]
                    if arg2 < mem[(32 * idx) + 140 len 20]:
                        _380 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(_367)
                        _381 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _383 = sha3(mem[_381 + 32 len mem[_381]])
                        mem[_380 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_380 + 105] = stor0
                        mem[_380 + 125] = _383
                        mem[_380 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_380 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_380 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            require idx < mem[96]
                            _410 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_380 + 221] = address(mem[(32 * idx) + 128])
                                mem[_380 + 241] = address(arg3)
                                mem[_380 + 189] = 40
                                mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_380 + 294] = stor0
                                mem[_380 + 314] = sha3(mem[_380 + 221 len 20], arg3)
                                mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_380 + 261] = 85
                                mem[64] = _380 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[_380 + 221] = address(arg3)
                                mem[_380 + 241] = address(_410)
                                mem[_380 + 189] = 40
                                mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_380 + 294] = stor0
                                mem[_380 + 314] = sha3(arg3, address(_410))
                                mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_380 + 261] = 85
                                mem[64] = _380 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_410)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_410)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            mem[_380 + 378 len 96] = ext_call.return_data[0 len 96]
                            if ext_call.success:
                                require return_data.size >= 96
                        else:
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == arg2:
                                _416 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_380 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_380 + 241] = address(arg3)
                                    mem[_380 + 189] = 40
                                    mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_380 + 294] = stor0
                                    mem[_380 + 314] = sha3(mem[_380 + 221 len 20], arg3)
                                    mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_380 + 261] = 85
                                    mem[64] = _380 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_380 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_416) == address(_416):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                                else:
                                    mem[_380 + 221] = address(arg3)
                                    mem[_380 + 241] = address(_416)
                                    mem[_380 + 189] = 40
                                    mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_380 + 294] = stor0
                                    mem[_380 + 314] = sha3(arg3, address(_416))
                                    mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_380 + 261] = 85
                                    mem[64] = _380 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_416)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_416)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_380 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_416) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                            else:
                                _417 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_380 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_380 + 241] = address(arg3)
                                    mem[_380 + 189] = 40
                                    mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_380 + 294] = stor0
                                    mem[_380 + 314] = sha3(mem[_380 + 221 len 20], arg3)
                                    mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_380 + 261] = 85
                                    mem[64] = _380 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_380 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_380 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_417) == address(_417):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                                else:
                                    mem[_380 + 221] = address(arg3)
                                    mem[_380 + 241] = address(_417)
                                    mem[_380 + 189] = 40
                                    mem[_380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_380 + 294] = stor0
                                    mem[_380 + 314] = sha3(arg3, address(_417))
                                    mem[_380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_380 + 261] = 85
                                    mem[64] = _380 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_417)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_417)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_380 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_417) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                    else:
                        _388 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(arg2)
                        _389 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _391 = sha3(mem[_389 + 32 len mem[_389]])
                        mem[_388 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_388 + 105] = stor0
                        mem[_388 + 125] = _391
                        mem[_388 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_388 + 72] = 85
                        require ext_code.size(address(sha3(0, stor0, _391, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _391, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_388 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            require idx < mem[96]
                            _411 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_388 + 221] = address(mem[(32 * idx) + 128])
                                mem[_388 + 241] = address(arg3)
                                mem[_388 + 189] = 40
                                mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_388 + 294] = stor0
                                mem[_388 + 314] = sha3(mem[_388 + 221 len 20], arg3)
                                mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_388 + 261] = 85
                                mem[64] = _388 + 378
                                require ext_code.size(address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            else:
                                mem[_388 + 221] = address(arg3)
                                mem[_388 + 241] = address(_411)
                                mem[_388 + 189] = 40
                                mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_388 + 294] = stor0
                                mem[_388 + 314] = sha3(arg3, address(_411))
                                mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_388 + 261] = 85
                                mem[64] = _388 + 378
                                require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_411)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, sha3(arg3, address(_411)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                            mem[_388 + 378 len 96] = ext_call.return_data[0 len 96]
                            if ext_call.success:
                                require return_data.size >= 96
                        else:
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == address(_367):
                                _418 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_388 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_388 + 241] = address(arg3)
                                    mem[_388 + 189] = 40
                                    mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_388 + 294] = stor0
                                    mem[_388 + 314] = sha3(mem[_388 + 221 len 20], arg3)
                                    mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_388 + 261] = 85
                                    mem[64] = _388 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_388 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_418) == address(_418):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                                else:
                                    mem[_388 + 221] = address(arg3)
                                    mem[_388 + 241] = address(_418)
                                    mem[_388 + 189] = 40
                                    mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_388 + 294] = stor0
                                    mem[_388 + 314] = sha3(arg3, address(_418))
                                    mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_388 + 261] = 85
                                    mem[64] = _388 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_418)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_418)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_388 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_418) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                            else:
                                _419 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_388 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_388 + 241] = address(arg3)
                                    mem[_388 + 189] = 40
                                    mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_388 + 294] = stor0
                                    mem[_388 + 314] = sha3(mem[_388 + 221 len 20], arg3)
                                    mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_388 + 261] = 85
                                    mem[64] = _388 + 378
                                    require ext_code.size(address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_388 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_388 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_419) == address(_419):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
                                else:
                                    mem[_388 + 221] = address(arg3)
                                    mem[_388 + 241] = address(_419)
                                    mem[_388 + 189] = 40
                                    mem[_388 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_388 + 294] = stor0
                                    mem[_388 + 314] = sha3(arg3, address(_419))
                                    mem[_388 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_388 + 261] = 85
                                    mem[64] = _388 + 378
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_419)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_419)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_388 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                    else:
                                        require return_data.size >= 96
                                        if address(_419) == arg3:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)) > 0:
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
                                                                        require 0 < mem[96]
                                                                        mem[128] = arg2
                                                                        require idx < mem[96]
                                                                        require 1 < mem[96]
                                                                        mem[160] = mem[(32 * idx) + 140 len 20]
                                                                        require 2 < mem[96]
                                                                        mem[192] = arg3
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
            _2330 = mem[96]
            s = 0
            while s <= _2330:
                if s >= mem[96]:
                    if arg2 < arg3:
                        _2362 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2363 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2365 = sha3(mem[_2363 + 32 len mem[_2363]])
                        mem[_2362 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2362 + 105] = stor0
                        mem[_2362 + 125] = _2365
                        mem[_2362 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2362 + 72] = 85
                        mem[64] = _2362 + 189
                        require ext_code.size(address(sha3(0, stor0, _2365, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2365, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2362 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
                                                s = s + 1
                                                continue 
                    else:
                        _2370 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2371 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2373 = sha3(mem[_2371 + 32 len mem[_2371]])
                        mem[_2370 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2370 + 105] = stor0
                        mem[_2370 + 125] = _2373
                        mem[_2370 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2370 + 72] = 85
                        mem[64] = _2370 + 189
                        require ext_code.size(address(sha3(0, stor0, _2373, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2373, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2370 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                            _2378 = mem[(32 * s) + 128]
                            if arg2 < mem[(32 * s) + 140 len 20]:
                                _2467 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2378)
                                _2468 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2470 = sha3(mem[_2468 + 32 len mem[_2468]])
                                mem[_2467 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2467 + 105] = stor0
                                mem[_2467 + 125] = _2470
                                mem[_2467 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2467 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2470, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2470, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2467 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _2585 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2467 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2467 + 241] = address(arg3)
                                        mem[_2467 + 189] = 40
                                        mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2467 + 294] = stor0
                                        mem[_2467 + 314] = sha3(mem[_2467 + 221 len 20], arg3)
                                        mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2467 + 261] = 85
                                        mem[64] = _2467 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2585) == address(_2585):
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
                                        mem[_2467 + 221] = address(arg3)
                                        mem[_2467 + 241] = address(_2585)
                                        mem[_2467 + 189] = 40
                                        mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2467 + 294] = stor0
                                        mem[_2467 + 314] = sha3(arg3, address(_2585))
                                        mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2467 + 261] = 85
                                        mem[64] = _2467 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2585)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2585)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2585) == arg3:
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
                                        _2617 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2467 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2467 + 241] = address(arg3)
                                            mem[_2467 + 189] = 40
                                            mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2467 + 294] = stor0
                                            mem[_2467 + 314] = sha3(mem[_2467 + 221 len 20], arg3)
                                            mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2467 + 261] = 85
                                            mem[64] = _2467 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2617) == address(_2617):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2467 + 221] = address(arg3)
                                            mem[_2467 + 241] = address(_2617)
                                            mem[_2467 + 189] = 40
                                            mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2467 + 294] = stor0
                                            mem[_2467 + 314] = sha3(arg3, address(_2617))
                                            mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2467 + 261] = 85
                                            mem[64] = _2467 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2617)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2617)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2617) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2618 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2467 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2467 + 241] = address(arg3)
                                            mem[_2467 + 189] = 40
                                            mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2467 + 294] = stor0
                                            mem[_2467 + 314] = sha3(mem[_2467 + 221 len 20], arg3)
                                            mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2467 + 261] = 85
                                            mem[64] = _2467 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2467 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2618) == address(_2618):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2467 + 221] = address(arg3)
                                            mem[_2467 + 241] = address(_2618)
                                            mem[_2467 + 189] = 40
                                            mem[_2467 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2467 + 294] = stor0
                                            mem[_2467 + 314] = sha3(arg3, address(_2618))
                                            mem[_2467 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2467 + 261] = 85
                                            mem[64] = _2467 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2618)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2618)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2467 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2618) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                            else:
                                _2475 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2476 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2478 = sha3(mem[_2476 + 32 len mem[_2476]])
                                mem[_2475 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2475 + 105] = stor0
                                mem[_2475 + 125] = _2478
                                mem[_2475 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2475 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2478, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2478, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2475 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _2586 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg3:
                                        mem[_2475 + 221] = address(mem[(32 * s) + 128])
                                        mem[_2475 + 241] = address(arg3)
                                        mem[_2475 + 189] = 40
                                        mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2475 + 294] = stor0
                                        mem[_2475 + 314] = sha3(mem[_2475 + 221 len 20], arg3)
                                        mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2475 + 261] = 85
                                        mem[64] = _2475 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2586) == address(_2586):
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
                                        mem[_2475 + 221] = address(arg3)
                                        mem[_2475 + 241] = address(_2586)
                                        mem[_2475 + 189] = 40
                                        mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2475 + 294] = stor0
                                        mem[_2475 + 314] = sha3(arg3, address(_2586))
                                        mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2475 + 261] = 85
                                        mem[64] = _2475 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2586)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2586)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if idx <= 0:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2586) == arg3:
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
                                    if arg2 == address(_2378):
                                        require s < mem[96]
                                        _2619 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2475 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2475 + 241] = address(arg3)
                                            mem[_2475 + 189] = 40
                                            mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2475 + 294] = stor0
                                            mem[_2475 + 314] = sha3(mem[_2475 + 221 len 20], arg3)
                                            mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2475 + 261] = 85
                                            mem[64] = _2475 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2619) == address(_2619):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2475 + 221] = address(arg3)
                                            mem[_2475 + 241] = address(_2619)
                                            mem[_2475 + 189] = 40
                                            mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2475 + 294] = stor0
                                            mem[_2475 + 314] = sha3(arg3, address(_2619))
                                            mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2475 + 261] = 85
                                            mem[64] = _2475 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2619)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2619)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2619) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                    else:
                                        require s < mem[96]
                                        _2620 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg3:
                                            mem[_2475 + 221] = address(mem[(32 * s) + 128])
                                            mem[_2475 + 241] = address(arg3)
                                            mem[_2475 + 189] = 40
                                            mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2475 + 294] = stor0
                                            mem[_2475 + 314] = sha3(mem[_2475 + 221 len 20], arg3)
                                            mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2475 + 261] = 85
                                            mem[64] = _2475 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2475 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2620) == address(_2620):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                                        else:
                                            mem[_2475 + 221] = address(arg3)
                                            mem[_2475 + 241] = address(_2620)
                                            mem[_2475 + 189] = 40
                                            mem[_2475 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2475 + 294] = stor0
                                            mem[_2475 + 314] = sha3(arg3, address(_2620))
                                            mem[_2475 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2475 + 261] = 85
                                            mem[64] = _2475 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2620)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2620)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2475 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2620) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require s < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * s) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                s = s + 1
                                                                                continue 
                        else:
                            s = s + 1
                            continue 
            _3491 = mem[96]
            s = 0
            while s <= _3491:
                if s >= mem[96]:
                    if arg3 < arg2:
                        _3511 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _3512 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3514 = sha3(mem[_3512 + 32 len mem[_3512]])
                        mem[_3511 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3511 + 105] = stor0
                        mem[_3511 + 125] = _3514
                        mem[_3511 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3511 + 72] = 85
                        mem[64] = _3511 + 189
                        require ext_code.size(address(sha3(0, stor0, _3514, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3514, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3511 + 189 len 96] = ext_call.return_data[0 len 96]
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
                        _3519 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _3520 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3522 = sha3(mem[_3520 + 32 len mem[_3520]])
                        mem[_3519 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3519 + 105] = stor0
                        mem[_3519 + 125] = _3522
                        mem[_3519 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3519 + 72] = 85
                        mem[64] = _3519 + 189
                        require ext_code.size(address(sha3(0, stor0, _3522, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3522, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3519 + 189 len 96] = ext_call.return_data[0 len 96]
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
                            _3527 = mem[(32 * s) + 128]
                            if arg3 < mem[(32 * s) + 140 len 20]:
                                _3569 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3527)
                                _3570 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3572 = sha3(mem[_3570 + 32 len mem[_3570]])
                                mem[_3569 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3569 + 105] = stor0
                                mem[_3569 + 125] = _3572
                                mem[_3569 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3569 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3572, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3572, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3569 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _3629 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3569 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3569 + 241] = address(arg2)
                                        mem[_3569 + 189] = 40
                                        mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3569 + 294] = stor0
                                        mem[_3569 + 314] = sha3(mem[_3569 + 221 len 20], arg2)
                                        mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3569 + 261] = 85
                                        mem[64] = _3569 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3629) == address(_3629):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_3569 + 221] = address(arg2)
                                        mem[_3569 + 241] = address(_3629)
                                        mem[_3569 + 189] = 40
                                        mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3569 + 294] = stor0
                                        mem[_3569 + 314] = sha3(arg2, address(_3629))
                                        mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3569 + 261] = 85
                                        mem[64] = _3569 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3629)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3629)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3629) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require s < mem[96]
                                        _3641 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3569 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3569 + 241] = address(arg2)
                                            mem[_3569 + 189] = 40
                                            mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3569 + 294] = stor0
                                            mem[_3569 + 314] = sha3(mem[_3569 + 221 len 20], arg2)
                                            mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3569 + 261] = 85
                                            mem[64] = _3569 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3641) == address(_3641):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3569 + 221] = address(arg2)
                                            mem[_3569 + 241] = address(_3641)
                                            mem[_3569 + 189] = 40
                                            mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3569 + 294] = stor0
                                            mem[_3569 + 314] = sha3(arg2, address(_3641))
                                            mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3569 + 261] = 85
                                            mem[64] = _3569 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3641)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3641)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3641) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3642 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3569 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3569 + 241] = address(arg2)
                                            mem[_3569 + 189] = 40
                                            mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3569 + 294] = stor0
                                            mem[_3569 + 314] = sha3(mem[_3569 + 221 len 20], arg2)
                                            mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3569 + 261] = 85
                                            mem[64] = _3569 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3569 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3642) == address(_3642):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3569 + 221] = address(arg2)
                                            mem[_3569 + 241] = address(_3642)
                                            mem[_3569 + 189] = 40
                                            mem[_3569 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3569 + 294] = stor0
                                            mem[_3569 + 314] = sha3(arg2, address(_3642))
                                            mem[_3569 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3569 + 261] = 85
                                            mem[64] = _3569 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3642)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3642)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3569 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3642) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                            else:
                                _3577 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3578 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3580 = sha3(mem[_3578 + 32 len mem[_3578]])
                                mem[_3577 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3577 + 105] = stor0
                                mem[_3577 + 125] = _3580
                                mem[_3577 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3577 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3580, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3580, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3577 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require s < mem[96]
                                    _3630 = mem[(32 * s) + 128]
                                    if mem[(32 * s) + 140 len 20] < arg2:
                                        mem[_3577 + 221] = address(mem[(32 * s) + 128])
                                        mem[_3577 + 241] = address(arg2)
                                        mem[_3577 + 189] = 40
                                        mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3577 + 294] = stor0
                                        mem[_3577 + 314] = sha3(mem[_3577 + 221 len 20], arg2)
                                        mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3577 + 261] = 85
                                        mem[64] = _3577 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3630) == address(_3630):
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_3577 + 221] = address(arg2)
                                        mem[_3577 + 241] = address(_3630)
                                        mem[_3577 + 189] = 40
                                        mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3577 + 294] = stor0
                                        mem[_3577 + 314] = sha3(arg2, address(_3630))
                                        mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3577 + 261] = 85
                                        mem[64] = _3577 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3630)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3630)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            s = s + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3630) == arg2:
                                                s = s + 1
                                                continue 
                                            else:
                                                s = s + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_3527):
                                        require s < mem[96]
                                        _3643 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3577 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3577 + 241] = address(arg2)
                                            mem[_3577 + 189] = 40
                                            mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3577 + 294] = stor0
                                            mem[_3577 + 314] = sha3(mem[_3577 + 221 len 20], arg2)
                                            mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3577 + 261] = 85
                                            mem[64] = _3577 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3643) == address(_3643):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3577 + 221] = address(arg2)
                                            mem[_3577 + 241] = address(_3643)
                                            mem[_3577 + 189] = 40
                                            mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3577 + 294] = stor0
                                            mem[_3577 + 314] = sha3(arg2, address(_3643))
                                            mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3577 + 261] = 85
                                            mem[64] = _3577 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3643)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3643)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3643) == arg2:
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        require s < mem[96]
                                        _3644 = mem[(32 * s) + 128]
                                        if mem[(32 * s) + 140 len 20] < arg2:
                                            mem[_3577 + 221] = address(mem[(32 * s) + 128])
                                            mem[_3577 + 241] = address(arg2)
                                            mem[_3577 + 189] = 40
                                            mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3577 + 294] = stor0
                                            mem[_3577 + 314] = sha3(mem[_3577 + 221 len 20], arg2)
                                            mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3577 + 261] = 85
                                            mem[64] = _3577 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3577 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3644) == address(_3644):
                                                    s = s + 1
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_3577 + 221] = address(arg2)
                                            mem[_3577 + 241] = address(_3644)
                                            mem[_3577 + 189] = 40
                                            mem[_3577 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3577 + 294] = stor0
                                            mem[_3577 + 314] = sha3(arg2, address(_3644))
                                            mem[_3577 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3577 + 261] = 85
                                            mem[64] = _3577 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3577 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                s = s + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3644) == arg2:
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
            _2331 = mem[96]
            idx = 0
            while idx <= _2331:
                if idx >= mem[96]:
                    if arg2 < arg3:
                        _2380 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _2381 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2383 = sha3(mem[_2381 + 32 len mem[_2381]])
                        mem[_2380 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2380 + 105] = stor0
                        mem[_2380 + 125] = _2383
                        mem[_2380 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2380 + 72] = 85
                        mem[64] = _2380 + 189
                        require ext_code.size(address(sha3(0, stor0, _2383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2380 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
                                                idx = idx + 1
                                                continue 
                    else:
                        _2388 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _2389 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2391 = sha3(mem[_2389 + 32 len mem[_2389]])
                        mem[_2388 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2388 + 105] = stor0
                        mem[_2388 + 125] = _2391
                        mem[_2388 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2388 + 72] = 85
                        mem[64] = _2388 + 189
                        require ext_code.size(address(sha3(0, stor0, _2391, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _2391, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2388 + 189 len 96] = ext_call.return_data[0 len 96]
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                                                require 0 < mem[96]
                                                mem[128] = arg2
                                                require 1 < mem[96]
                                                mem[160] = arg3
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
                            _2396 = mem[(32 * idx) + 128]
                            if arg2 < mem[(32 * idx) + 140 len 20]:
                                _2483 = mem[64]
                                mem[mem[64] + 32] = address(arg2)
                                mem[mem[64] + 52] = address(_2396)
                                _2484 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2486 = sha3(mem[_2484 + 32 len mem[_2484]])
                                mem[_2483 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2483 + 105] = stor0
                                mem[_2483 + 125] = _2486
                                mem[_2483 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2483 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2486, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2486, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2483 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _2589 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2483 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2483 + 241] = address(arg3)
                                        mem[_2483 + 189] = 40
                                        mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2483 + 294] = stor0
                                        mem[_2483 + 314] = sha3(mem[_2483 + 221 len 20], arg3)
                                        mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2483 + 261] = 85
                                        mem[64] = _2483 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2589) == address(_2589):
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
                                        mem[_2483 + 221] = address(arg3)
                                        mem[_2483 + 241] = address(_2589)
                                        mem[_2483 + 189] = 40
                                        mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2483 + 294] = stor0
                                        mem[_2483 + 314] = sha3(arg3, address(_2589))
                                        mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2483 + 261] = 85
                                        mem[64] = _2483 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2589)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2589)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2589) == arg3:
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
                                        _2623 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2483 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2483 + 241] = address(arg3)
                                            mem[_2483 + 189] = 40
                                            mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2483 + 294] = stor0
                                            mem[_2483 + 314] = sha3(mem[_2483 + 221 len 20], arg3)
                                            mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2483 + 261] = 85
                                            mem[64] = _2483 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2623) == address(_2623):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2483 + 221] = address(arg3)
                                            mem[_2483 + 241] = address(_2623)
                                            mem[_2483 + 189] = 40
                                            mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2483 + 294] = stor0
                                            mem[_2483 + 314] = sha3(arg3, address(_2623))
                                            mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2483 + 261] = 85
                                            mem[64] = _2483 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2623)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2623)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2623) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2624 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2483 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2483 + 241] = address(arg3)
                                            mem[_2483 + 189] = 40
                                            mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2483 + 294] = stor0
                                            mem[_2483 + 314] = sha3(mem[_2483 + 221 len 20], arg3)
                                            mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2483 + 261] = 85
                                            mem[64] = _2483 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2483 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2624) == address(_2624):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2483 + 221] = address(arg3)
                                            mem[_2483 + 241] = address(_2624)
                                            mem[_2483 + 189] = 40
                                            mem[_2483 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2483 + 294] = stor0
                                            mem[_2483 + 314] = sha3(arg3, address(_2624))
                                            mem[_2483 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2483 + 261] = 85
                                            mem[64] = _2483 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2624)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2624)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2483 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2624) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                            else:
                                _2491 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg2)
                                _2492 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2494 = sha3(mem[_2492 + 32 len mem[_2492]])
                                mem[_2491 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2491 + 105] = stor0
                                mem[_2491 + 125] = _2494
                                mem[_2491 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2491 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _2494, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _2494, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_2491 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _2590 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg3:
                                        mem[_2491 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_2491 + 241] = address(arg3)
                                        mem[_2491 + 189] = 40
                                        mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2491 + 294] = stor0
                                        mem[_2491 + 314] = sha3(mem[_2491 + 221 len 20], arg3)
                                        mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2491 + 261] = 85
                                        mem[64] = _2491 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2590) == address(_2590):
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
                                        mem[_2491 + 221] = address(arg3)
                                        mem[_2491 + 241] = address(_2590)
                                        mem[_2491 + 189] = 40
                                        mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_2491 + 294] = stor0
                                        mem[_2491 + 314] = sha3(arg3, address(_2590))
                                        mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_2491 + 261] = 85
                                        mem[64] = _2491 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2590)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_2590)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            if arg5 <= 0:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_2590) == arg3:
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
                                    if arg2 == address(_2396):
                                        require idx < mem[96]
                                        _2625 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2491 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2491 + 241] = address(arg3)
                                            mem[_2491 + 189] = 40
                                            mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2491 + 294] = stor0
                                            mem[_2491 + 314] = sha3(mem[_2491 + 221 len 20], arg3)
                                            mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2491 + 261] = 85
                                            mem[64] = _2491 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2625) == address(_2625):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2491 + 221] = address(arg3)
                                            mem[_2491 + 241] = address(_2625)
                                            mem[_2491 + 189] = 40
                                            mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2491 + 294] = stor0
                                            mem[_2491 + 314] = sha3(arg3, address(_2625))
                                            mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2491 + 261] = 85
                                            mem[64] = _2491 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2625)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2625)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2625) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        require idx < mem[96]
                                        _2626 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg3:
                                            mem[_2491 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_2491 + 241] = address(arg3)
                                            mem[_2491 + 189] = 40
                                            mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2491 + 294] = stor0
                                            mem[_2491 + 314] = sha3(mem[_2491 + 221 len 20], arg3)
                                            mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2491 + 261] = 85
                                            mem[64] = _2491 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_2491 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2626) == address(_2626):
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                                        else:
                                            mem[_2491 + 221] = address(arg3)
                                            mem[_2491 + 241] = address(_2626)
                                            mem[_2491 + 189] = 40
                                            mem[_2491 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_2491 + 294] = stor0
                                            mem[_2491 + 314] = sha3(arg3, address(_2626))
                                            mem[_2491 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_2491 + 261] = 85
                                            mem[64] = _2491 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_2626)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg3, address(_2626)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_2491 + 378 len 96] = ext_call.return_data[0 len 96]
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
                                                if address(_2626) == arg3:
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
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
                                                                                require 0 < mem[96]
                                                                                mem[128] = arg2
                                                                                require idx < mem[96]
                                                                                require 1 < mem[96]
                                                                                mem[160] = mem[(32 * idx) + 140 len 20]
                                                                                require 2 < mem[96]
                                                                                mem[192] = arg3
                                                                                idx = idx + 1
                                                                                continue 
                        else:
                            idx = idx + 1
                            continue 
            _3492 = mem[96]
            idx = 0
            while idx <= _3492:
                if idx >= mem[96]:
                    if arg3 < arg2:
                        _3528 = mem[64]
                        mem[mem[64] + 32] = address(arg3)
                        mem[mem[64] + 52] = address(arg2)
                        _3529 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3531 = sha3(mem[_3529 + 32 len mem[_3529]])
                        mem[_3528 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3528 + 105] = stor0
                        mem[_3528 + 125] = _3531
                        mem[_3528 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3528 + 72] = 85
                        mem[64] = _3528 + 189
                        require ext_code.size(address(sha3(0, stor0, _3531, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3531, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3528 + 189 len 96] = ext_call.return_data[0 len 96]
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
                        _3536 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(arg3)
                        _3537 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3539 = sha3(mem[_3537 + 32 len mem[_3537]])
                        mem[_3536 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3536 + 105] = stor0
                        mem[_3536 + 125] = _3539
                        mem[_3536 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_3536 + 72] = 85
                        mem[64] = _3536 + 189
                        require ext_code.size(address(sha3(0, stor0, _3539, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                        staticcall address(sha3(0, stor0, _3539, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3536 + 189 len 96] = ext_call.return_data[0 len 96]
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
                            _3544 = mem[(32 * idx) + 128]
                            if arg3 < mem[(32 * idx) + 140 len 20]:
                                _3585 = mem[64]
                                mem[mem[64] + 32] = address(arg3)
                                mem[mem[64] + 52] = address(_3544)
                                _3586 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3588 = sha3(mem[_3586 + 32 len mem[_3586]])
                                mem[_3585 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3585 + 105] = stor0
                                mem[_3585 + 125] = _3588
                                mem[_3585 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3585 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3588, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3588, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3585 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _3631 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3585 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3585 + 241] = address(arg2)
                                        mem[_3585 + 189] = 40
                                        mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3585 + 294] = stor0
                                        mem[_3585 + 314] = sha3(mem[_3585 + 221 len 20], arg2)
                                        mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3585 + 261] = 85
                                        mem[64] = _3585 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3631) == address(_3631):
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[_3585 + 221] = address(arg2)
                                        mem[_3585 + 241] = address(_3631)
                                        mem[_3585 + 189] = 40
                                        mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3585 + 294] = stor0
                                        mem[_3585 + 314] = sha3(arg2, address(_3631))
                                        mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3585 + 261] = 85
                                        mem[64] = _3585 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3631)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3631)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3631) == arg2:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == arg3:
                                        require idx < mem[96]
                                        _3645 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3585 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3585 + 241] = address(arg2)
                                            mem[_3585 + 189] = 40
                                            mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3585 + 294] = stor0
                                            mem[_3585 + 314] = sha3(mem[_3585 + 221 len 20], arg2)
                                            mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3585 + 261] = 85
                                            mem[64] = _3585 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3645) == address(_3645):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3585 + 221] = address(arg2)
                                            mem[_3585 + 241] = address(_3645)
                                            mem[_3585 + 189] = 40
                                            mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3585 + 294] = stor0
                                            mem[_3585 + 314] = sha3(arg2, address(_3645))
                                            mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3585 + 261] = 85
                                            mem[64] = _3585 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3645) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3646 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3585 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3585 + 241] = address(arg2)
                                            mem[_3585 + 189] = 40
                                            mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3585 + 294] = stor0
                                            mem[_3585 + 314] = sha3(mem[_3585 + 221 len 20], arg2)
                                            mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3585 + 261] = 85
                                            mem[64] = _3585 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3585 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3646) == address(_3646):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3585 + 221] = address(arg2)
                                            mem[_3585 + 241] = address(_3646)
                                            mem[_3585 + 189] = 40
                                            mem[_3585 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3585 + 294] = stor0
                                            mem[_3585 + 314] = sha3(arg2, address(_3646))
                                            mem[_3585 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3585 + 261] = 85
                                            mem[64] = _3585 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3585 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3646) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                            else:
                                _3593 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(arg3)
                                _3594 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3596 = sha3(mem[_3594 + 32 len mem[_3594]])
                                mem[_3593 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3593 + 105] = stor0
                                mem[_3593 + 125] = _3596
                                mem[_3593 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3593 + 72] = 85
                                require ext_code.size(address(sha3(0, stor0, _3596, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                staticcall address(sha3(0, stor0, _3596, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_3593 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    require idx < mem[96]
                                    _3632 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 140 len 20] < arg2:
                                        mem[_3593 + 221] = address(mem[(32 * idx) + 128])
                                        mem[_3593 + 241] = address(arg2)
                                        mem[_3593 + 189] = 40
                                        mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3593 + 294] = stor0
                                        mem[_3593 + 314] = sha3(mem[_3593 + 221 len 20], arg2)
                                        mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3593 + 261] = 85
                                        mem[64] = _3593 + 378
                                        require ext_code.size(address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3632) == address(_3632):
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[_3593 + 221] = address(arg2)
                                        mem[_3593 + 241] = address(_3632)
                                        mem[_3593 + 189] = 40
                                        mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3593 + 294] = stor0
                                        mem[_3593 + 314] = sha3(arg2, address(_3632))
                                        mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3593 + 261] = 85
                                        mem[64] = _3593 + 378
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg2, address(_3632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require return_data.size >= 96
                                            if address(_3632) == arg2:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    require return_data.size >= 96
                                    if arg3 == address(_3544):
                                        require idx < mem[96]
                                        _3647 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3593 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3593 + 241] = address(arg2)
                                            mem[_3593 + 189] = 40
                                            mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3593 + 294] = stor0
                                            mem[_3593 + 314] = sha3(mem[_3593 + 221 len 20], arg2)
                                            mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3593 + 261] = 85
                                            mem[64] = _3593 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3647) == address(_3647):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3593 + 221] = address(arg2)
                                            mem[_3593 + 241] = address(_3647)
                                            mem[_3593 + 189] = 40
                                            mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3593 + 294] = stor0
                                            mem[_3593 + 314] = sha3(arg2, address(_3647))
                                            mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3593 + 261] = 85
                                            mem[64] = _3593 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3647) == arg2:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        require idx < mem[96]
                                        _3648 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 140 len 20] < arg2:
                                            mem[_3593 + 221] = address(mem[(32 * idx) + 128])
                                            mem[_3593 + 241] = address(arg2)
                                            mem[_3593 + 189] = 40
                                            mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3593 + 294] = stor0
                                            mem[_3593 + 314] = sha3(mem[_3593 + 221 len 20], arg2)
                                            mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3593 + 261] = 85
                                            mem[64] = _3593 + 378
                                            require ext_code.size(address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, mem[_3593 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3648) == address(_3648):
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            mem[_3593 + 221] = address(arg2)
                                            mem[_3593 + 241] = address(_3648)
                                            mem[_3593 + 189] = 40
                                            mem[_3593 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_3593 + 294] = stor0
                                            mem[_3593 + 314] = sha3(arg2, address(_3648))
                                            mem[_3593 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_3593 + 261] = 85
                                            mem[64] = _3593 + 378
                                            require ext_code.size(address(sha3(0, stor0, sha3(arg2, address(_3648)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            staticcall address(sha3(0, stor0, sha3(arg2, address(_3648)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[_3593 + 378 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require return_data.size >= 96
                                                if address(_3648) == arg2:
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
    _1166 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_1166 + 160] = mem[96]
    _1168 = mem[96]
    mem[_1166 + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_1166 + 32] = (32 * mem[96]) + 192
    mem[(32 * _1168) + _1166 + 192] = mem[96]
    mem[(32 * _1168) + _1166 + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _1168) + _1166 + -mem[64] + 224
}



}
