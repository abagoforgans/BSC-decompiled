contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a801900(?)
#
address stor0;

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint32(ext_code.size(arg1)))
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        return 0
    if arg2 <= 0:
        return 0
    if arg3 <= 0:
        return 0
    require (997 * arg1) + (1000 * arg2)
    return (997 * arg1 * arg3 / (997 * arg1) + (1000 * arg2))
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
        if not uint32(ext_code.size(sha3(0, stor0, sha3(arg1, arg2), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
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
        if not uint32(ext_code.size(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
            return 0
        require ext_code.size(address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
        staticcall address(sha3(0, stor0, sha3(arg2, arg1), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg1:
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
    if arg1.length <= 0:
        mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return 64, 
               0,
               arg1.length,
               call.data[arg1 + 36 len floor32(arg1.length)],
               mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)]
    if not arg2:
        mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return 64, 
               0,
               arg1.length,
               call.data[arg1 + 36 len floor32(arg1.length)],
               mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)]
    if not arg3:
        mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return 64, 
               0,
               arg1.length,
               call.data[arg1 + 36 len floor32(arg1.length)],
               mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)]
    if arg4 <= 0:
        mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return 64, 
               0,
               arg1.length,
               call.data[arg1 + 36 len floor32(arg1.length)],
               mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)]
    idx = 0
    while idx <= arg1.length:
        if idx >= mem[96]:
            if arg2 < arg3:
                _368 = mem[64]
                mem[mem[64] + 32] = address(arg2)
                mem[mem[64] + 52] = address(arg3)
                _369 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _371 = sha3(mem[_369 + 32 len mem[_369]])
                mem[_368 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_368 + 105] = Mask(160, 96, stor0)
                mem[_368 + 125] = _371
                mem[_368 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_368 + 72] = 85
                mem[64] = _368 + 189
                if uint32(ext_code.size(sha3(0, stor0, _371, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                    require ext_code.size(address(sha3(0, stor0, _371, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _371, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_368 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 == arg2:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (997 * arg4) + (1000 * ext_call.return_data[18 len 14])
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                        mem[_368 + 189] = 2
                                        mem[64] = _368 + 285
                                        mem[_368 + 221] = arg2
                                        mem[_368 + 253] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (997 * arg4) + (1000 * ext_call.return_data[50 len 14])
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                        mem[_368 + 189] = 2
                                        mem[64] = _368 + 285
                                        mem[_368 + 221] = arg2
                                        mem[_368 + 253] = arg3
            else:
                _375 = mem[64]
                mem[mem[64] + 32] = address(arg3)
                mem[mem[64] + 52] = address(arg2)
                _376 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _378 = sha3(mem[_376 + 32 len mem[_376]])
                mem[_375 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_375 + 105] = Mask(160, 96, stor0)
                mem[_375 + 125] = _378
                mem[_375 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_375 + 72] = 85
                mem[64] = _375 + 189
                if uint32(ext_code.size(sha3(0, stor0, _378, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                    require ext_code.size(address(sha3(0, stor0, _378, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _378, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_375 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg3 == arg2:
                        if arg4 > 0:
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    require (997 * arg4) + (1000 * ext_call.return_data[18 len 14])
                                    if 997 * arg4 * ext_call.return_data[50 len 14] / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                        mem[_375 + 189] = 2
                                        mem[64] = _375 + 285
                                        mem[_375 + 221] = arg2
                                        mem[_375 + 253] = arg3
                    else:
                        if arg4 > 0:
                            if ext_call.return_data[50 len 14] > 0:
                                if ext_call.return_data[18 len 14] > 0:
                                    require (997 * arg4) + (1000 * ext_call.return_data[50 len 14])
                                    if 997 * arg4 * ext_call.return_data[18 len 14] / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                        mem[_375 + 189] = 2
                                        mem[64] = _375 + 285
                                        mem[_375 + 221] = arg2
                                        mem[_375 + 253] = arg3
        else:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != arg2:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] != arg3:
                    require idx < mem[96]
                    _382 = mem[(32 * idx) + 128]
                    if arg2 < mem[(32 * idx) + 140 len 20]:
                        _389 = mem[64]
                        mem[mem[64] + 32] = address(arg2)
                        mem[mem[64] + 52] = address(_382)
                        _390 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _392 = sha3(mem[_390 + 32 len mem[_390]])
                        mem[_389 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_389 + 105] = Mask(160, 96, stor0)
                        mem[_389 + 125] = _392
                        mem[_389 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_389 + 72] = 85
                        if not uint32(ext_code.size(sha3(0, stor0, _392, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[96]
                            _413 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_389 + 221] = address(mem[(32 * idx) + 128])
                                mem[_389 + 241] = address(arg3)
                                mem[_389 + 189] = 40
                                mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_389 + 294] = Mask(160, 96, stor0)
                                mem[_389 + 314] = sha3(mem[_389 + 221 len 20], arg3)
                                mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_389 + 261] = 85
                                mem[64] = _389 + 378
                                if uint32(ext_code.size(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                    require ext_code.size(address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                            else:
                                mem[_389 + 221] = address(arg3)
                                mem[_389 + 241] = address(_413)
                                mem[_389 + 189] = 40
                                mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_389 + 294] = Mask(160, 96, stor0)
                                mem[_389 + 314] = sha3(arg3, address(_413))
                                mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_389 + 261] = 85
                                mem[64] = _389 + 378
                                if uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_413)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_413)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_413)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                        else:
                            require ext_code.size(address(sha3(0, stor0, _392, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _392, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_389 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[96]
                            if arg2 == arg2:
                                _439 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_389 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_389 + 241] = address(arg3)
                                    mem[_389 + 189] = 40
                                    mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_389 + 294] = Mask(160, 96, stor0)
                                    mem[_389 + 314] = sha3(mem[_389 + 221 len 20], arg3)
                                    mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_389 + 261] = 85
                                    mem[64] = _389 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_439) == address(_439):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                else:
                                    mem[_389 + 221] = address(arg3)
                                    mem[_389 + 241] = address(_439)
                                    mem[_389 + 189] = 40
                                    mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_389 + 294] = Mask(160, 96, stor0)
                                    mem[_389 + 314] = sha3(arg3, address(_439))
                                    mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_389 + 261] = 85
                                    mem[64] = _389 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_439)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_439)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_439)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if arg3 == address(_439):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                            else:
                                _440 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_389 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_389 + 241] = address(arg3)
                                    mem[_389 + 189] = 40
                                    mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_389 + 294] = Mask(160, 96, stor0)
                                    mem[_389 + 314] = sha3(mem[_389 + 221 len 20], arg3)
                                    mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_389 + 261] = 85
                                    mem[64] = _389 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_389 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_440) == address(_440):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                else:
                                    mem[_389 + 221] = address(arg3)
                                    mem[_389 + 241] = address(_440)
                                    mem[_389 + 189] = 40
                                    mem[_389 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_389 + 294] = Mask(160, 96, stor0)
                                    mem[_389 + 314] = sha3(arg3, address(_440))
                                    mem[_389 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_389 + 261] = 85
                                    mem[64] = _389 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_440)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_440)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_440)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_389 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if arg3 == address(_440):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_389 + 378] = 3
                                                                        mem[64] = _389 + 506
                                                                        mem[_389 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_389 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_389 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_389 + 474] = arg3
                    else:
                        _396 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(arg2)
                        _397 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _399 = sha3(mem[_397 + 32 len mem[_397]])
                        mem[_396 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_396 + 105] = Mask(160, 96, stor0)
                        mem[_396 + 125] = _399
                        mem[_396 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_396 + 72] = 85
                        if not uint32(ext_code.size(sha3(0, stor0, _399, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[96]
                            _415 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + 140 len 20] < arg3:
                                mem[_396 + 221] = address(mem[(32 * idx) + 128])
                                mem[_396 + 241] = address(arg3)
                                mem[_396 + 189] = 40
                                mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_396 + 294] = Mask(160, 96, stor0)
                                mem[_396 + 314] = sha3(mem[_396 + 221 len 20], arg3)
                                mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_396 + 261] = 85
                                mem[64] = _396 + 378
                                if uint32(ext_code.size(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                    require ext_code.size(address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                            else:
                                mem[_396 + 221] = address(arg3)
                                mem[_396 + 241] = address(_415)
                                mem[_396 + 189] = 40
                                mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_396 + 294] = Mask(160, 96, stor0)
                                mem[_396 + 314] = sha3(arg3, address(_415))
                                mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_396 + 261] = 85
                                mem[64] = _396 + 378
                                if uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_415)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                    require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_415)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    staticcall address(sha3(0, stor0, sha3(arg3, address(_415)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                        else:
                            require ext_code.size(address(sha3(0, stor0, _399, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _399, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_396 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[96]
                            if address(_382) == arg2:
                                _455 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_396 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_396 + 241] = address(arg3)
                                    mem[_396 + 189] = 40
                                    mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_396 + 294] = Mask(160, 96, stor0)
                                    mem[_396 + 314] = sha3(mem[_396 + 221 len 20], arg3)
                                    mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_396 + 261] = 85
                                    mem[64] = _396 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_455) == address(_455):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                else:
                                    mem[_396 + 221] = address(arg3)
                                    mem[_396 + 241] = address(_455)
                                    mem[_396 + 189] = 40
                                    mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_396 + 294] = Mask(160, 96, stor0)
                                    mem[_396 + 314] = sha3(arg3, address(_455))
                                    mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_396 + 261] = 85
                                    mem[64] = _396 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_455)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_455)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_455)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if arg3 == address(_455):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                            else:
                                _456 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 140 len 20] < arg3:
                                    mem[_396 + 221] = address(mem[(32 * idx) + 128])
                                    mem[_396 + 241] = address(arg3)
                                    mem[_396 + 189] = 40
                                    mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_396 + 294] = Mask(160, 96, stor0)
                                    mem[_396 + 314] = sha3(mem[_396 + 221 len 20], arg3)
                                    mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_396 + 261] = 85
                                    mem[64] = _396 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, mem[_396 + 314], 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if address(_456) == address(_456):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                else:
                                    mem[_396 + 221] = address(arg3)
                                    mem[_396 + 241] = address(_456)
                                    mem[_396 + 189] = 40
                                    mem[_396 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_396 + 294] = Mask(160, 96, stor0)
                                    mem[_396 + 314] = sha3(arg3, address(_456))
                                    mem[_396 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_396 + 261] = 85
                                    mem[64] = _396 + 378
                                    if not uint32(ext_code.size(sha3(0, stor0, sha3(arg3, address(_456)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                                        if arg4 > 0:
                                            if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                    require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        require ext_code.size(address(sha3(0, stor0, sha3(arg3, address(_456)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        staticcall address(sha3(0, stor0, sha3(arg3, address(_456)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                                gas gas_remaining wei
                                        mem[_396 + 378 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if arg3 == address(_456):
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[18 len 14] > 0:
                                                                if ext_call.return_data[50 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[50 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[18 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
                                        else:
                                            if arg4 > 0:
                                                if Mask(112, 0, ext_call.return_data[32]) > 0:
                                                    if Mask(112, 0, ext_call.return_data[0]) > 0:
                                                        require (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                        if 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) > 0:
                                                            if ext_call.return_data[50 len 14] > 0:
                                                                if ext_call.return_data[18 len 14] > 0:
                                                                    require (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
                                                                    if 997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (997 * 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) > 0:
                                                                        mem[_396 + 378] = 3
                                                                        mem[64] = _396 + 506
                                                                        mem[_396 + 410 len 96] = code.data[2946 len 96]
                                                                        mem[_396 + 410] = arg2
                                                                        require idx < mem[96]
                                                                        mem[_396 + 442] = mem[(32 * idx) + 140 len 20]
                                                                        mem[_396 + 474] = arg3
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = 0
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, 0, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}



}
