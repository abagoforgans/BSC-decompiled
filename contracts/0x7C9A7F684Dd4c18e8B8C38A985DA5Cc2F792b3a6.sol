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

function sub_ddf89e9d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length <= 0:
        mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        return Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
    if arg1 <= 0:
        mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        return Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[96]
            _157 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _164 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _173 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_164)
                _174 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _176 = sha3(mem[_174 + 32 len mem[_174]])
                mem[_173 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_173 + 105] = Mask(160, 96, stor0)
                mem[_173 + 125] = _176
                mem[_173 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_173 + 72] = 85
                mem[64] = _173 + 189
                if not uint32(ext_code.size(sha3(0, stor0, _176, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                else:
                    require ext_code.size(address(sha3(0, stor0, _176, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _176, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_173 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_157) == address(_157):
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[18 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                                else:
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                                else:
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            else:
                _180 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_157)
                _181 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _183 = sha3(mem[_181 + 32 len mem[_181]])
                mem[_180 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_180 + 105] = Mask(160, 96, stor0)
                mem[_180 + 125] = _183
                mem[_180 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[_180 + 72] = 85
                mem[64] = _180 + 189
                if not uint32(ext_code.size(sha3(0, stor0, _183, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                else:
                    require ext_code.size(address(sha3(0, stor0, _183, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                    staticcall address(sha3(0, stor0, _183, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                            gas gas_remaining wei
                    mem[_180 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_164) == address(_157):
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[18 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                                else:
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                                else:
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _163 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _163) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[4693 len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    idx = 0
    while idx < arg2.length - 1:
        require idx < mem[96]
        _159 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _168 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            _187 = mem[64]
            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
            mem[mem[64] + 52] = address(_168)
            _188 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _190 = sha3(mem[_188 + 32 len mem[_188]])
            mem[_187 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_187 + 105] = Mask(160, 96, stor0)
            mem[_187 + 125] = _190
            mem[_187 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
            mem[_187 + 72] = 85
            mem[64] = _187 + 189
            if not uint32(ext_code.size(sha3(0, stor0, _190, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                require idx < mem[(32 * arg2.length) + 128]
                require idx + 1 < mem[(32 * arg2.length) + 128]
                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
            else:
                require ext_code.size(address(sha3(0, stor0, _190, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _190, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_187 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_159) == address(_159):
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                    else:
                        if ext_call.return_data[18 len 14] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                else:
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[18 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
        else:
            _194 = mem[64]
            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
            mem[mem[64] + 52] = address(_159)
            _195 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _197 = sha3(mem[_195 + 32 len mem[_195]])
            mem[_194 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_194 + 105] = Mask(160, 96, stor0)
            mem[_194 + 125] = _197
            mem[_194 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
            mem[_194 + 72] = 85
            mem[64] = _194 + 189
            if not uint32(ext_code.size(sha3(0, stor0, _197, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                require idx < mem[(32 * arg2.length) + 128]
                require idx + 1 < mem[(32 * arg2.length) + 128]
                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
            else:
                require ext_code.size(address(sha3(0, stor0, _197, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                staticcall address(sha3(0, stor0, _197, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                        gas gas_remaining wei
                mem[_194 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_168) == address(_159):
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                    else:
                        if ext_call.return_data[18 len 14] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                else:
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                        else:
                            if ext_call.return_data[18 len 14] <= 0:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0
                            else:
                                require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    _167 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _167) + 32]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_389 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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
                                                                        mem[_396 + 410 len 96] = code.data[4693 len 96]
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

function swap(address[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length < 2:
        revert with 0, 'PARAMS_FAILED'
    if arg2 <= 0:
        revert with 0, 'PARAMS_FAILED'
    if arg3 <= 0:
        revert with 0, 'PARAMS_FAILED'
    if arg1.length <= 0:
        require arg1.length - 1 < arg1.length
        if mem[(32 * arg1.length - 1) + 128] < arg3:
            revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < arg1.length
        _23 = mem[128]
        require 0 < arg1.length
        require 1 < arg1.length
        _35 = mem[160]
        if mem[140 len 20] < mem[172 len 20]:
            mem[(32 * arg1.length) + 160] = address(mem[128])
            mem[(32 * arg1.length) + 180] = address(_35)
            mem[(32 * arg1.length) + 128] = 40
            mem[(32 * arg1.length) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 233] = Mask(160, 96, stor0)
            mem[(32 * arg1.length) + 253] = sha3(mem[(32 * arg1.length) + 160 len 20], address(_35))
            mem[(32 * arg1.length) + 285] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
            mem[(32 * arg1.length) + 200] = 85
            mem[64] = (32 * arg1.length) + 317
            require 0 < arg1.length
            mem[(32 * arg1.length) + 321] = msg.sender
            mem[(32 * arg1.length) + 353] = address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 20], address(_35)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
            mem[(32 * arg1.length) + 385] = mem[128]
            require ext_code.size(address(_23))
            call address(_23).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 20], address(_35)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), mem[128]
            mem[(32 * arg1.length) + 317] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg1.length - 1:
                require idx < mem[96]
                _2632 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2644 = mem[(32 * idx + 1) + 128]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    _2670 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2810 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2811 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2813 = sha3(mem[_2811 + 32 len mem[_2811]])
                                mem[_2810 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2810 + 105] = Mask(160, 96, stor0)
                                mem[_2810 + 125] = _2813
                                mem[_2810 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2810 + 72] = 85
                                mem[64] = _2810 + 189
                                mem[_2810 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2810 + 193] = 0
                                mem[_2810 + 225] = _2670
                                mem[_2810 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2813, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2813, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2670, msg.sender
                            else:
                                _2817 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2632)
                                _2818 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2820 = sha3(mem[_2818 + 32 len mem[_2818]])
                                mem[_2817 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2817 + 105] = Mask(160, 96, stor0)
                                mem[_2817 + 125] = _2820
                                mem[_2817 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2817 + 72] = 85
                                mem[64] = _2817 + 189
                                mem[_2817 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2817 + 193] = 0
                                mem[_2817 + 225] = _2670
                                mem[_2817 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2820, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2820, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2670, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2748 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2796 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2748)
                                _2797 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2799 = sha3(mem[_2797 + 32 len mem[_2797]])
                                mem[_2796 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2796 + 105] = Mask(160, 96, stor0)
                                mem[_2796 + 125] = _2799
                                mem[_2796 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2796 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2796 + 221] = address(_2632)
                                    mem[_2796 + 241] = address(_2644)
                                    mem[_2796 + 189] = 40
                                    mem[_2796 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2796 + 294] = Mask(160, 96, stor0)
                                    mem[_2796 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2796 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2796 + 261] = 85
                                    mem[64] = _2796 + 378
                                    mem[_2796 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2796 + 382] = 0
                                    mem[_2796 + 414] = _2670
                                    mem[_2796 + 446] = address(sha3(0, stor0, _2799, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2670, address(sha3(0, stor0, _2799, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2796 + 221] = address(_2644)
                                    mem[_2796 + 241] = address(_2632)
                                    mem[_2796 + 189] = 40
                                    mem[_2796 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2796 + 294] = Mask(160, 96, stor0)
                                    mem[_2796 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2796 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2796 + 261] = 85
                                    mem[64] = _2796 + 378
                                    mem[_2796 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2796 + 382] = 0
                                    mem[_2796 + 414] = _2670
                                    mem[_2796 + 446] = address(sha3(0, stor0, _2799, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2670, address(sha3(0, stor0, _2799, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2803 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2804 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2806 = sha3(mem[_2804 + 32 len mem[_2804]])
                                mem[_2803 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2803 + 105] = Mask(160, 96, stor0)
                                mem[_2803 + 125] = _2806
                                mem[_2803 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2803 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2803 + 221] = address(_2632)
                                    mem[_2803 + 241] = address(_2644)
                                    mem[_2803 + 189] = 40
                                    mem[_2803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2803 + 294] = Mask(160, 96, stor0)
                                    mem[_2803 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2803 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2803 + 261] = 85
                                    mem[64] = _2803 + 378
                                    mem[_2803 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2803 + 382] = 0
                                    mem[_2803 + 414] = _2670
                                    mem[_2803 + 446] = address(sha3(0, stor0, _2806, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2670, address(sha3(0, stor0, _2806, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2803 + 221] = address(_2644)
                                    mem[_2803 + 241] = address(_2632)
                                    mem[_2803 + 189] = 40
                                    mem[_2803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2803 + 294] = Mask(160, 96, stor0)
                                    mem[_2803 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2803 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2803 + 261] = 85
                                    mem[64] = _2803 + 378
                                    mem[_2803 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2803 + 382] = 0
                                    mem[_2803 + 414] = _2670
                                    mem[_2803 + 446] = address(sha3(0, stor0, _2806, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2670, address(sha3(0, stor0, _2806, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2838 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2839 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2841 = sha3(mem[_2839 + 32 len mem[_2839]])
                                mem[_2838 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2838 + 105] = Mask(160, 96, stor0)
                                mem[_2838 + 125] = _2841
                                mem[_2838 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2838 + 72] = 85
                                mem[64] = _2838 + 189
                                mem[_2838 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2838 + 193] = _2670
                                mem[_2838 + 225] = 0
                                mem[_2838 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2841, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2841, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2670, 0, msg.sender
                            else:
                                _2845 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2632)
                                _2846 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2848 = sha3(mem[_2846 + 32 len mem[_2846]])
                                mem[_2845 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2845 + 105] = Mask(160, 96, stor0)
                                mem[_2845 + 125] = _2848
                                mem[_2845 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2845 + 72] = 85
                                mem[64] = _2845 + 189
                                mem[_2845 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2845 + 193] = _2670
                                mem[_2845 + 225] = 0
                                mem[_2845 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2848, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2848, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2670, 0, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2749 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2824 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2749)
                                _2825 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2827 = sha3(mem[_2825 + 32 len mem[_2825]])
                                mem[_2824 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2824 + 105] = Mask(160, 96, stor0)
                                mem[_2824 + 125] = _2827
                                mem[_2824 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2824 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2824 + 221] = address(_2632)
                                    mem[_2824 + 241] = address(_2644)
                                    mem[_2824 + 189] = 40
                                    mem[_2824 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2824 + 294] = Mask(160, 96, stor0)
                                    mem[_2824 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2824 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2824 + 261] = 85
                                    mem[64] = _2824 + 378
                                    mem[_2824 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2824 + 382] = _2670
                                    mem[_2824 + 414] = 0
                                    mem[_2824 + 446] = address(sha3(0, stor0, _2827, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2670, 0, address(sha3(0, stor0, _2827, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2824 + 221] = address(_2644)
                                    mem[_2824 + 241] = address(_2632)
                                    mem[_2824 + 189] = 40
                                    mem[_2824 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2824 + 294] = Mask(160, 96, stor0)
                                    mem[_2824 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2824 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2824 + 261] = 85
                                    mem[64] = _2824 + 378
                                    mem[_2824 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2824 + 382] = _2670
                                    mem[_2824 + 414] = 0
                                    mem[_2824 + 446] = address(sha3(0, stor0, _2827, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2670, 0, address(sha3(0, stor0, _2827, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2831 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2832 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2834 = sha3(mem[_2832 + 32 len mem[_2832]])
                                mem[_2831 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2831 + 105] = Mask(160, 96, stor0)
                                mem[_2831 + 125] = _2834
                                mem[_2831 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2831 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2831 + 221] = address(_2632)
                                    mem[_2831 + 241] = address(_2644)
                                    mem[_2831 + 189] = 40
                                    mem[_2831 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2831 + 294] = Mask(160, 96, stor0)
                                    mem[_2831 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2831 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2831 + 261] = 85
                                    mem[64] = _2831 + 378
                                    mem[_2831 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2831 + 382] = _2670
                                    mem[_2831 + 414] = 0
                                    mem[_2831 + 446] = address(sha3(0, stor0, _2834, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2670, 0, address(sha3(0, stor0, _2834, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2831 + 221] = address(_2644)
                                    mem[_2831 + 241] = address(_2632)
                                    mem[_2831 + 189] = 40
                                    mem[_2831 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2831 + 294] = Mask(160, 96, stor0)
                                    mem[_2831 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2831 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2831 + 261] = 85
                                    mem[64] = _2831 + 378
                                    mem[_2831 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2831 + 382] = _2670
                                    mem[_2831 + 414] = 0
                                    mem[_2831 + 446] = address(sha3(0, stor0, _2834, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2670, 0, address(sha3(0, stor0, _2834, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                else:
                    _2671 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2866 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2867 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2869 = sha3(mem[_2867 + 32 len mem[_2867]])
                                mem[_2866 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2866 + 105] = Mask(160, 96, stor0)
                                mem[_2866 + 125] = _2869
                                mem[_2866 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2866 + 72] = 85
                                mem[64] = _2866 + 189
                                mem[_2866 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2866 + 193] = 0
                                mem[_2866 + 225] = _2671
                                mem[_2866 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2869, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2869, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2671, msg.sender
                            else:
                                _2873 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2632)
                                _2874 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2876 = sha3(mem[_2874 + 32 len mem[_2874]])
                                mem[_2873 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2873 + 105] = Mask(160, 96, stor0)
                                mem[_2873 + 125] = _2876
                                mem[_2873 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2873 + 72] = 85
                                mem[64] = _2873 + 189
                                mem[_2873 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2873 + 193] = 0
                                mem[_2873 + 225] = _2671
                                mem[_2873 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2876, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2876, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2671, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2750 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2852 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2750)
                                _2853 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2855 = sha3(mem[_2853 + 32 len mem[_2853]])
                                mem[_2852 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2852 + 105] = Mask(160, 96, stor0)
                                mem[_2852 + 125] = _2855
                                mem[_2852 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2852 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2852 + 221] = address(_2632)
                                    mem[_2852 + 241] = address(_2644)
                                    mem[_2852 + 189] = 40
                                    mem[_2852 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2852 + 294] = Mask(160, 96, stor0)
                                    mem[_2852 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2852 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2852 + 261] = 85
                                    mem[64] = _2852 + 378
                                    mem[_2852 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2852 + 382] = 0
                                    mem[_2852 + 414] = _2671
                                    mem[_2852 + 446] = address(sha3(0, stor0, _2855, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2671, address(sha3(0, stor0, _2855, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2852 + 221] = address(_2644)
                                    mem[_2852 + 241] = address(_2632)
                                    mem[_2852 + 189] = 40
                                    mem[_2852 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2852 + 294] = Mask(160, 96, stor0)
                                    mem[_2852 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2852 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2852 + 261] = 85
                                    mem[64] = _2852 + 378
                                    mem[_2852 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2852 + 382] = 0
                                    mem[_2852 + 414] = _2671
                                    mem[_2852 + 446] = address(sha3(0, stor0, _2855, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2671, address(sha3(0, stor0, _2855, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2859 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2860 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2862 = sha3(mem[_2860 + 32 len mem[_2860]])
                                mem[_2859 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2859 + 105] = Mask(160, 96, stor0)
                                mem[_2859 + 125] = _2862
                                mem[_2859 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2859 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2859 + 221] = address(_2632)
                                    mem[_2859 + 241] = address(_2644)
                                    mem[_2859 + 189] = 40
                                    mem[_2859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2859 + 294] = Mask(160, 96, stor0)
                                    mem[_2859 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2859 + 261] = 85
                                    mem[64] = _2859 + 378
                                    mem[_2859 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2859 + 382] = 0
                                    mem[_2859 + 414] = _2671
                                    mem[_2859 + 446] = address(sha3(0, stor0, _2862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2671, address(sha3(0, stor0, _2862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2859 + 221] = address(_2644)
                                    mem[_2859 + 241] = address(_2632)
                                    mem[_2859 + 189] = 40
                                    mem[_2859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2859 + 294] = Mask(160, 96, stor0)
                                    mem[_2859 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2859 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2859 + 261] = 85
                                    mem[64] = _2859 + 378
                                    mem[_2859 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2859 + 382] = 0
                                    mem[_2859 + 414] = _2671
                                    mem[_2859 + 446] = address(sha3(0, stor0, _2862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2671, address(sha3(0, stor0, _2862, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2894 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2895 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2897 = sha3(mem[_2895 + 32 len mem[_2895]])
                                mem[_2894 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2894 + 105] = Mask(160, 96, stor0)
                                mem[_2894 + 125] = _2897
                                mem[_2894 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2894 + 72] = 85
                                mem[64] = _2894 + 189
                                mem[_2894 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2894 + 193] = _2671
                                mem[_2894 + 225] = 0
                                mem[_2894 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2897, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2897, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2671, 0, msg.sender
                            else:
                                _2901 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2632)
                                _2902 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2904 = sha3(mem[_2902 + 32 len mem[_2902]])
                                mem[_2901 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2901 + 105] = Mask(160, 96, stor0)
                                mem[_2901 + 125] = _2904
                                mem[_2901 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2901 + 72] = 85
                                mem[64] = _2901 + 189
                                mem[_2901 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2901 + 193] = _2671
                                mem[_2901 + 225] = 0
                                mem[_2901 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2904, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2904, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2671, 0, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2751 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2880 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2751)
                                _2881 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2883 = sha3(mem[_2881 + 32 len mem[_2881]])
                                mem[_2880 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2880 + 105] = Mask(160, 96, stor0)
                                mem[_2880 + 125] = _2883
                                mem[_2880 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2880 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2880 + 221] = address(_2632)
                                    mem[_2880 + 241] = address(_2644)
                                    mem[_2880 + 189] = 40
                                    mem[_2880 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2880 + 294] = Mask(160, 96, stor0)
                                    mem[_2880 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2880 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2880 + 261] = 85
                                    mem[64] = _2880 + 378
                                    mem[_2880 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2880 + 382] = _2671
                                    mem[_2880 + 414] = 0
                                    mem[_2880 + 446] = address(sha3(0, stor0, _2883, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2671, 0, address(sha3(0, stor0, _2883, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2880 + 221] = address(_2644)
                                    mem[_2880 + 241] = address(_2632)
                                    mem[_2880 + 189] = 40
                                    mem[_2880 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2880 + 294] = Mask(160, 96, stor0)
                                    mem[_2880 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2880 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2880 + 261] = 85
                                    mem[64] = _2880 + 378
                                    mem[_2880 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2880 + 382] = _2671
                                    mem[_2880 + 414] = 0
                                    mem[_2880 + 446] = address(sha3(0, stor0, _2883, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2671, 0, address(sha3(0, stor0, _2883, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2887 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2644)
                                _2888 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2890 = sha3(mem[_2888 + 32 len mem[_2888]])
                                mem[_2887 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2887 + 105] = Mask(160, 96, stor0)
                                mem[_2887 + 125] = _2890
                                mem[_2887 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2887 + 72] = 85
                                if address(_2632) < address(_2644):
                                    mem[_2887 + 221] = address(_2632)
                                    mem[_2887 + 241] = address(_2644)
                                    mem[_2887 + 189] = 40
                                    mem[_2887 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2887 + 294] = Mask(160, 96, stor0)
                                    mem[_2887 + 314] = sha3(address(_2632), address(_2644))
                                    mem[_2887 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2887 + 261] = 85
                                    mem[64] = _2887 + 378
                                    mem[_2887 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2887 + 382] = _2671
                                    mem[_2887 + 414] = 0
                                    mem[_2887 + 446] = address(sha3(0, stor0, _2890, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2632), address(_2644)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2671, 0, address(sha3(0, stor0, _2890, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2887 + 221] = address(_2644)
                                    mem[_2887 + 241] = address(_2632)
                                    mem[_2887 + 189] = 40
                                    mem[_2887 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2887 + 294] = Mask(160, 96, stor0)
                                    mem[_2887 + 314] = sha3(address(_2644), address(_2632))
                                    mem[_2887 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2887 + 261] = 85
                                    mem[64] = _2887 + 378
                                    mem[_2887 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2887 + 382] = _2671
                                    mem[_2887 + 414] = 0
                                    mem[_2887 + 446] = address(sha3(0, stor0, _2890, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2644), address(_2632)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2671, 0, address(sha3(0, stor0, _2890, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg1.length) + 160] = address(mem[160])
            mem[(32 * arg1.length) + 180] = address(mem[128])
            mem[(32 * arg1.length) + 128] = 40
            mem[(32 * arg1.length) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 233] = Mask(160, 96, stor0)
            mem[(32 * arg1.length) + 253] = sha3(mem[(32 * arg1.length) + 160 len 40])
            mem[(32 * arg1.length) + 285] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
            mem[(32 * arg1.length) + 200] = 85
            mem[64] = (32 * arg1.length) + 317
            require 0 < arg1.length
            mem[(32 * arg1.length) + 321] = msg.sender
            mem[(32 * arg1.length) + 353] = address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 40]), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
            mem[(32 * arg1.length) + 385] = mem[128]
            require ext_code.size(address(_23))
            call address(_23).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 40]), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), mem[128]
            mem[(32 * arg1.length) + 317] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < arg1.length - 1:
                require idx < mem[96]
                _2634 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2645 = mem[(32 * idx + 1) + 128]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    _2672 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2922 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2923 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2925 = sha3(mem[_2923 + 32 len mem[_2923]])
                                mem[_2922 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2922 + 105] = Mask(160, 96, stor0)
                                mem[_2922 + 125] = _2925
                                mem[_2922 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2922 + 72] = 85
                                mem[64] = _2922 + 189
                                mem[_2922 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2922 + 193] = 0
                                mem[_2922 + 225] = _2672
                                mem[_2922 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2925, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2925, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2672, msg.sender
                            else:
                                _2929 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2634)
                                _2930 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2932 = sha3(mem[_2930 + 32 len mem[_2930]])
                                mem[_2929 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2929 + 105] = Mask(160, 96, stor0)
                                mem[_2929 + 125] = _2932
                                mem[_2929 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2929 + 72] = 85
                                mem[64] = _2929 + 189
                                mem[_2929 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2929 + 193] = 0
                                mem[_2929 + 225] = _2672
                                mem[_2929 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2932, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2932, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2672, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2752 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2908 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2752)
                                _2909 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2911 = sha3(mem[_2909 + 32 len mem[_2909]])
                                mem[_2908 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2908 + 105] = Mask(160, 96, stor0)
                                mem[_2908 + 125] = _2911
                                mem[_2908 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2908 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2908 + 221] = address(_2634)
                                    mem[_2908 + 241] = address(_2645)
                                    mem[_2908 + 189] = 40
                                    mem[_2908 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2908 + 294] = Mask(160, 96, stor0)
                                    mem[_2908 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2908 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2908 + 261] = 85
                                    mem[64] = _2908 + 378
                                    mem[_2908 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2908 + 382] = 0
                                    mem[_2908 + 414] = _2672
                                    mem[_2908 + 446] = address(sha3(0, stor0, _2911, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2672, address(sha3(0, stor0, _2911, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2908 + 221] = address(_2645)
                                    mem[_2908 + 241] = address(_2634)
                                    mem[_2908 + 189] = 40
                                    mem[_2908 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2908 + 294] = Mask(160, 96, stor0)
                                    mem[_2908 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2908 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2908 + 261] = 85
                                    mem[64] = _2908 + 378
                                    mem[_2908 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2908 + 382] = 0
                                    mem[_2908 + 414] = _2672
                                    mem[_2908 + 446] = address(sha3(0, stor0, _2911, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2672, address(sha3(0, stor0, _2911, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2915 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2916 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2918 = sha3(mem[_2916 + 32 len mem[_2916]])
                                mem[_2915 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2915 + 105] = Mask(160, 96, stor0)
                                mem[_2915 + 125] = _2918
                                mem[_2915 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2915 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2915 + 221] = address(_2634)
                                    mem[_2915 + 241] = address(_2645)
                                    mem[_2915 + 189] = 40
                                    mem[_2915 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2915 + 294] = Mask(160, 96, stor0)
                                    mem[_2915 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2915 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2915 + 261] = 85
                                    mem[64] = _2915 + 378
                                    mem[_2915 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2915 + 382] = 0
                                    mem[_2915 + 414] = _2672
                                    mem[_2915 + 446] = address(sha3(0, stor0, _2918, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2672, address(sha3(0, stor0, _2918, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2915 + 221] = address(_2645)
                                    mem[_2915 + 241] = address(_2634)
                                    mem[_2915 + 189] = 40
                                    mem[_2915 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2915 + 294] = Mask(160, 96, stor0)
                                    mem[_2915 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2915 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2915 + 261] = 85
                                    mem[64] = _2915 + 378
                                    mem[_2915 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2915 + 382] = 0
                                    mem[_2915 + 414] = _2672
                                    mem[_2915 + 446] = address(sha3(0, stor0, _2918, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2672, address(sha3(0, stor0, _2918, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2950 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2951 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2953 = sha3(mem[_2951 + 32 len mem[_2951]])
                                mem[_2950 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2950 + 105] = Mask(160, 96, stor0)
                                mem[_2950 + 125] = _2953
                                mem[_2950 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2950 + 72] = 85
                                mem[64] = _2950 + 189
                                mem[_2950 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2950 + 193] = _2672
                                mem[_2950 + 225] = 0
                                mem[_2950 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2953, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2953, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2672, 0, msg.sender
                            else:
                                _2957 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2634)
                                _2958 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2960 = sha3(mem[_2958 + 32 len mem[_2958]])
                                mem[_2957 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2957 + 105] = Mask(160, 96, stor0)
                                mem[_2957 + 125] = _2960
                                mem[_2957 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2957 + 72] = 85
                                mem[64] = _2957 + 189
                                mem[_2957 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2957 + 193] = _2672
                                mem[_2957 + 225] = 0
                                mem[_2957 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2960, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2960, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2672, 0, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2753 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2936 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2753)
                                _2937 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2939 = sha3(mem[_2937 + 32 len mem[_2937]])
                                mem[_2936 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2936 + 105] = Mask(160, 96, stor0)
                                mem[_2936 + 125] = _2939
                                mem[_2936 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2936 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2936 + 221] = address(_2634)
                                    mem[_2936 + 241] = address(_2645)
                                    mem[_2936 + 189] = 40
                                    mem[_2936 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2936 + 294] = Mask(160, 96, stor0)
                                    mem[_2936 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2936 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2936 + 261] = 85
                                    mem[64] = _2936 + 378
                                    mem[_2936 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2936 + 382] = _2672
                                    mem[_2936 + 414] = 0
                                    mem[_2936 + 446] = address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2672, 0, address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2936 + 221] = address(_2645)
                                    mem[_2936 + 241] = address(_2634)
                                    mem[_2936 + 189] = 40
                                    mem[_2936 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2936 + 294] = Mask(160, 96, stor0)
                                    mem[_2936 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2936 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2936 + 261] = 85
                                    mem[64] = _2936 + 378
                                    mem[_2936 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2936 + 382] = _2672
                                    mem[_2936 + 414] = 0
                                    mem[_2936 + 446] = address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2672, 0, address(sha3(0, stor0, _2939, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2943 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2944 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2946 = sha3(mem[_2944 + 32 len mem[_2944]])
                                mem[_2943 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2943 + 105] = Mask(160, 96, stor0)
                                mem[_2943 + 125] = _2946
                                mem[_2943 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2943 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2943 + 221] = address(_2634)
                                    mem[_2943 + 241] = address(_2645)
                                    mem[_2943 + 189] = 40
                                    mem[_2943 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2943 + 294] = Mask(160, 96, stor0)
                                    mem[_2943 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2943 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2943 + 261] = 85
                                    mem[64] = _2943 + 378
                                    mem[_2943 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2943 + 382] = _2672
                                    mem[_2943 + 414] = 0
                                    mem[_2943 + 446] = address(sha3(0, stor0, _2946, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2672, 0, address(sha3(0, stor0, _2946, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2943 + 221] = address(_2645)
                                    mem[_2943 + 241] = address(_2634)
                                    mem[_2943 + 189] = 40
                                    mem[_2943 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2943 + 294] = Mask(160, 96, stor0)
                                    mem[_2943 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2943 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2943 + 261] = 85
                                    mem[64] = _2943 + 378
                                    mem[_2943 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2943 + 382] = _2672
                                    mem[_2943 + 414] = 0
                                    mem[_2943 + 446] = address(sha3(0, stor0, _2946, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2672, 0, address(sha3(0, stor0, _2946, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                else:
                    _2673 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _2978 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2979 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2981 = sha3(mem[_2979 + 32 len mem[_2979]])
                                mem[_2978 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2978 + 105] = Mask(160, 96, stor0)
                                mem[_2978 + 125] = _2981
                                mem[_2978 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2978 + 72] = 85
                                mem[64] = _2978 + 189
                                mem[_2978 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2978 + 193] = 0
                                mem[_2978 + 225] = _2673
                                mem[_2978 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2981, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2981, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2673, msg.sender
                            else:
                                _2985 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2634)
                                _2986 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2988 = sha3(mem[_2986 + 32 len mem[_2986]])
                                mem[_2985 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2985 + 105] = Mask(160, 96, stor0)
                                mem[_2985 + 125] = _2988
                                mem[_2985 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2985 + 72] = 85
                                mem[64] = _2985 + 189
                                mem[_2985 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_2985 + 193] = 0
                                mem[_2985 + 225] = _2673
                                mem[_2985 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _2988, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _2988, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _2673, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2754 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2964 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2754)
                                _2965 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2967 = sha3(mem[_2965 + 32 len mem[_2965]])
                                mem[_2964 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2964 + 105] = Mask(160, 96, stor0)
                                mem[_2964 + 125] = _2967
                                mem[_2964 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2964 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2964 + 221] = address(_2634)
                                    mem[_2964 + 241] = address(_2645)
                                    mem[_2964 + 189] = 40
                                    mem[_2964 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2964 + 294] = Mask(160, 96, stor0)
                                    mem[_2964 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2964 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2964 + 261] = 85
                                    mem[64] = _2964 + 378
                                    mem[_2964 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2964 + 382] = 0
                                    mem[_2964 + 414] = _2673
                                    mem[_2964 + 446] = address(sha3(0, stor0, _2967, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2673, address(sha3(0, stor0, _2967, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2964 + 221] = address(_2645)
                                    mem[_2964 + 241] = address(_2634)
                                    mem[_2964 + 189] = 40
                                    mem[_2964 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2964 + 294] = Mask(160, 96, stor0)
                                    mem[_2964 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2964 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2964 + 261] = 85
                                    mem[64] = _2964 + 378
                                    mem[_2964 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2964 + 382] = 0
                                    mem[_2964 + 414] = _2673
                                    mem[_2964 + 446] = address(sha3(0, stor0, _2967, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2673, address(sha3(0, stor0, _2967, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2971 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _2972 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2974 = sha3(mem[_2972 + 32 len mem[_2972]])
                                mem[_2971 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2971 + 105] = Mask(160, 96, stor0)
                                mem[_2971 + 125] = _2974
                                mem[_2971 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2971 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2971 + 221] = address(_2634)
                                    mem[_2971 + 241] = address(_2645)
                                    mem[_2971 + 189] = 40
                                    mem[_2971 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2971 + 294] = Mask(160, 96, stor0)
                                    mem[_2971 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2971 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2971 + 261] = 85
                                    mem[64] = _2971 + 378
                                    mem[_2971 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2971 + 382] = 0
                                    mem[_2971 + 414] = _2673
                                    mem[_2971 + 446] = address(sha3(0, stor0, _2974, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2673, address(sha3(0, stor0, _2974, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2971 + 221] = address(_2645)
                                    mem[_2971 + 241] = address(_2634)
                                    mem[_2971 + 189] = 40
                                    mem[_2971 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2971 + 294] = Mask(160, 96, stor0)
                                    mem[_2971 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2971 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2971 + 261] = 85
                                    mem[64] = _2971 + 378
                                    mem[_2971 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2971 + 382] = 0
                                    mem[_2971 + 414] = _2673
                                    mem[_2971 + 446] = address(sha3(0, stor0, _2974, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2673, address(sha3(0, stor0, _2974, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        if idx >= mem[96] - 2:
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                _3006 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _3007 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3009 = sha3(mem[_3007 + 32 len mem[_3007]])
                                mem[_3006 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3006 + 105] = Mask(160, 96, stor0)
                                mem[_3006 + 125] = _3009
                                mem[_3006 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3006 + 72] = 85
                                mem[64] = _3006 + 189
                                mem[_3006 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_3006 + 193] = _2673
                                mem[_3006 + 225] = 0
                                mem[_3006 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _3009, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _3009, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2673, 0, msg.sender
                            else:
                                _3013 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2634)
                                _3014 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3016 = sha3(mem[_3014 + 32 len mem[_3014]])
                                mem[_3013 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_3013 + 105] = Mask(160, 96, stor0)
                                mem[_3013 + 125] = _3016
                                mem[_3013 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_3013 + 72] = 85
                                mem[64] = _3013 + 189
                                mem[_3013 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_3013 + 193] = _2673
                                mem[_3013 + 225] = 0
                                mem[_3013 + 257] = msg.sender
                                require ext_code.size(address(sha3(0, stor0, _3016, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                call address(sha3(0, stor0, _3016, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _2673, 0, msg.sender
                        else:
                            require idx + 2 < mem[96]
                            _2755 = mem[(32 * idx + 2) + 128]
                            if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                _2992 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                mem[mem[64] + 52] = address(_2755)
                                _2993 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _2995 = sha3(mem[_2993 + 32 len mem[_2993]])
                                mem[_2992 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2992 + 105] = Mask(160, 96, stor0)
                                mem[_2992 + 125] = _2995
                                mem[_2992 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2992 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2992 + 221] = address(_2634)
                                    mem[_2992 + 241] = address(_2645)
                                    mem[_2992 + 189] = 40
                                    mem[_2992 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2992 + 294] = Mask(160, 96, stor0)
                                    mem[_2992 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2992 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2992 + 261] = 85
                                    mem[64] = _2992 + 378
                                    mem[_2992 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2992 + 382] = _2673
                                    mem[_2992 + 414] = 0
                                    mem[_2992 + 446] = address(sha3(0, stor0, _2995, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2673, 0, address(sha3(0, stor0, _2995, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2992 + 221] = address(_2645)
                                    mem[_2992 + 241] = address(_2634)
                                    mem[_2992 + 189] = 40
                                    mem[_2992 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2992 + 294] = Mask(160, 96, stor0)
                                    mem[_2992 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2992 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2992 + 261] = 85
                                    mem[64] = _2992 + 378
                                    mem[_2992 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2992 + 382] = _2673
                                    mem[_2992 + 414] = 0
                                    mem[_2992 + 446] = address(sha3(0, stor0, _2995, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2673, 0, address(sha3(0, stor0, _2995, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                _2999 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                mem[mem[64] + 52] = address(_2645)
                                _3000 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _3002 = sha3(mem[_3000 + 32 len mem[_3000]])
                                mem[_2999 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_2999 + 105] = Mask(160, 96, stor0)
                                mem[_2999 + 125] = _3002
                                mem[_2999 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                mem[_2999 + 72] = 85
                                if address(_2634) < address(_2645):
                                    mem[_2999 + 221] = address(_2634)
                                    mem[_2999 + 241] = address(_2645)
                                    mem[_2999 + 189] = 40
                                    mem[_2999 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2999 + 294] = Mask(160, 96, stor0)
                                    mem[_2999 + 314] = sha3(address(_2634), address(_2645))
                                    mem[_2999 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2999 + 261] = 85
                                    mem[64] = _2999 + 378
                                    mem[_2999 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2999 + 382] = _2673
                                    mem[_2999 + 414] = 0
                                    mem[_2999 + 446] = address(sha3(0, stor0, _3002, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2634), address(_2645)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2673, 0, address(sha3(0, stor0, _3002, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    mem[_2999 + 221] = address(_2645)
                                    mem[_2999 + 241] = address(_2634)
                                    mem[_2999 + 189] = 40
                                    mem[_2999 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_2999 + 294] = Mask(160, 96, stor0)
                                    mem[_2999 + 314] = sha3(address(_2645), address(_2634))
                                    mem[_2999 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_2999 + 261] = 85
                                    mem[64] = _2999 + 378
                                    mem[_2999 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_2999 + 382] = _2673
                                    mem[_2999 + 414] = 0
                                    mem[_2999 + 446] = address(sha3(0, stor0, _3002, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    require ext_code.size(address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, sha3(address(_2645), address(_2634)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2673, 0, address(sha3(0, stor0, _3002, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        if arg2 <= 0:
            require arg1.length - 1 < arg1.length
            if mem[(32 * arg1.length - 1) + 128] < arg3:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            require 0 < arg1.length
            _31 = mem[128]
            require 0 < arg1.length
            require 1 < arg1.length
            _41 = mem[160]
            if mem[140 len 20] < mem[172 len 20]:
                mem[(32 * arg1.length) + 160] = address(mem[128])
                mem[(32 * arg1.length) + 180] = address(_41)
                mem[(32 * arg1.length) + 128] = 40
                mem[(32 * arg1.length) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 233] = Mask(160, 96, stor0)
                mem[(32 * arg1.length) + 253] = sha3(mem[(32 * arg1.length) + 160 len 20], address(_41))
                mem[(32 * arg1.length) + 285] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[(32 * arg1.length) + 200] = 85
                mem[64] = (32 * arg1.length) + 317
                require 0 < arg1.length
                mem[(32 * arg1.length) + 321] = msg.sender
                mem[(32 * arg1.length) + 353] = address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 20], address(_41)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                mem[(32 * arg1.length) + 385] = mem[128]
                require ext_code.size(address(_31))
                call address(_31).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 20], address(_41)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), mem[128]
                mem[(32 * arg1.length) + 317] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _2636 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2646 = mem[(32 * idx + 1) + 128]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        _2674 = mem[(32 * idx + 1) + 128]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3034 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3035 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3037 = sha3(mem[_3035 + 32 len mem[_3035]])
                                    mem[_3034 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3034 + 105] = Mask(160, 96, stor0)
                                    mem[_3034 + 125] = _3037
                                    mem[_3034 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3034 + 72] = 85
                                    mem[64] = _3034 + 189
                                    mem[_3034 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3034 + 193] = 0
                                    mem[_3034 + 225] = _2674
                                    mem[_3034 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3037, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3037, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2674, msg.sender
                                else:
                                    _3041 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2636)
                                    _3042 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3044 = sha3(mem[_3042 + 32 len mem[_3042]])
                                    mem[_3041 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3041 + 105] = Mask(160, 96, stor0)
                                    mem[_3041 + 125] = _3044
                                    mem[_3041 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3041 + 72] = 85
                                    mem[64] = _3041 + 189
                                    mem[_3041 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3041 + 193] = 0
                                    mem[_3041 + 225] = _2674
                                    mem[_3041 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3044, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3044, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2674, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2756 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3020 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2756)
                                    _3021 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3023 = sha3(mem[_3021 + 32 len mem[_3021]])
                                    mem[_3020 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3020 + 105] = Mask(160, 96, stor0)
                                    mem[_3020 + 125] = _3023
                                    mem[_3020 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3020 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3020 + 221] = address(_2636)
                                        mem[_3020 + 241] = address(_2646)
                                        mem[_3020 + 189] = 40
                                        mem[_3020 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3020 + 294] = Mask(160, 96, stor0)
                                        mem[_3020 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3020 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3020 + 261] = 85
                                        mem[64] = _3020 + 378
                                        mem[_3020 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3020 + 382] = 0
                                        mem[_3020 + 414] = _2674
                                        mem[_3020 + 446] = address(sha3(0, stor0, _3023, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2674, address(sha3(0, stor0, _3023, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3020 + 221] = address(_2646)
                                        mem[_3020 + 241] = address(_2636)
                                        mem[_3020 + 189] = 40
                                        mem[_3020 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3020 + 294] = Mask(160, 96, stor0)
                                        mem[_3020 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3020 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3020 + 261] = 85
                                        mem[64] = _3020 + 378
                                        mem[_3020 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3020 + 382] = 0
                                        mem[_3020 + 414] = _2674
                                        mem[_3020 + 446] = address(sha3(0, stor0, _3023, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2674, address(sha3(0, stor0, _3023, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3027 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3028 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3030 = sha3(mem[_3028 + 32 len mem[_3028]])
                                    mem[_3027 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3027 + 105] = Mask(160, 96, stor0)
                                    mem[_3027 + 125] = _3030
                                    mem[_3027 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3027 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3027 + 221] = address(_2636)
                                        mem[_3027 + 241] = address(_2646)
                                        mem[_3027 + 189] = 40
                                        mem[_3027 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3027 + 294] = Mask(160, 96, stor0)
                                        mem[_3027 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3027 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3027 + 261] = 85
                                        mem[64] = _3027 + 378
                                        mem[_3027 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3027 + 382] = 0
                                        mem[_3027 + 414] = _2674
                                        mem[_3027 + 446] = address(sha3(0, stor0, _3030, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2674, address(sha3(0, stor0, _3030, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3027 + 221] = address(_2646)
                                        mem[_3027 + 241] = address(_2636)
                                        mem[_3027 + 189] = 40
                                        mem[_3027 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3027 + 294] = Mask(160, 96, stor0)
                                        mem[_3027 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3027 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3027 + 261] = 85
                                        mem[64] = _3027 + 378
                                        mem[_3027 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3027 + 382] = 0
                                        mem[_3027 + 414] = _2674
                                        mem[_3027 + 446] = address(sha3(0, stor0, _3030, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2674, address(sha3(0, stor0, _3030, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3062 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3063 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3065 = sha3(mem[_3063 + 32 len mem[_3063]])
                                    mem[_3062 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3062 + 105] = Mask(160, 96, stor0)
                                    mem[_3062 + 125] = _3065
                                    mem[_3062 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3062 + 72] = 85
                                    mem[64] = _3062 + 189
                                    mem[_3062 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3062 + 193] = _2674
                                    mem[_3062 + 225] = 0
                                    mem[_3062 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3065, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3065, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2674, 0, msg.sender
                                else:
                                    _3069 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2636)
                                    _3070 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3072 = sha3(mem[_3070 + 32 len mem[_3070]])
                                    mem[_3069 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3069 + 105] = Mask(160, 96, stor0)
                                    mem[_3069 + 125] = _3072
                                    mem[_3069 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3069 + 72] = 85
                                    mem[64] = _3069 + 189
                                    mem[_3069 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3069 + 193] = _2674
                                    mem[_3069 + 225] = 0
                                    mem[_3069 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3072, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3072, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2674, 0, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2757 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3048 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2757)
                                    _3049 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3051 = sha3(mem[_3049 + 32 len mem[_3049]])
                                    mem[_3048 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3048 + 105] = Mask(160, 96, stor0)
                                    mem[_3048 + 125] = _3051
                                    mem[_3048 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3048 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3048 + 221] = address(_2636)
                                        mem[_3048 + 241] = address(_2646)
                                        mem[_3048 + 189] = 40
                                        mem[_3048 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3048 + 294] = Mask(160, 96, stor0)
                                        mem[_3048 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3048 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3048 + 261] = 85
                                        mem[64] = _3048 + 378
                                        mem[_3048 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3048 + 382] = _2674
                                        mem[_3048 + 414] = 0
                                        mem[_3048 + 446] = address(sha3(0, stor0, _3051, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2674, 0, address(sha3(0, stor0, _3051, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3048 + 221] = address(_2646)
                                        mem[_3048 + 241] = address(_2636)
                                        mem[_3048 + 189] = 40
                                        mem[_3048 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3048 + 294] = Mask(160, 96, stor0)
                                        mem[_3048 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3048 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3048 + 261] = 85
                                        mem[64] = _3048 + 378
                                        mem[_3048 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3048 + 382] = _2674
                                        mem[_3048 + 414] = 0
                                        mem[_3048 + 446] = address(sha3(0, stor0, _3051, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2674, 0, address(sha3(0, stor0, _3051, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3055 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3056 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3058 = sha3(mem[_3056 + 32 len mem[_3056]])
                                    mem[_3055 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3055 + 105] = Mask(160, 96, stor0)
                                    mem[_3055 + 125] = _3058
                                    mem[_3055 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3055 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3055 + 221] = address(_2636)
                                        mem[_3055 + 241] = address(_2646)
                                        mem[_3055 + 189] = 40
                                        mem[_3055 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3055 + 294] = Mask(160, 96, stor0)
                                        mem[_3055 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3055 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3055 + 261] = 85
                                        mem[64] = _3055 + 378
                                        mem[_3055 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3055 + 382] = _2674
                                        mem[_3055 + 414] = 0
                                        mem[_3055 + 446] = address(sha3(0, stor0, _3058, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2674, 0, address(sha3(0, stor0, _3058, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3055 + 221] = address(_2646)
                                        mem[_3055 + 241] = address(_2636)
                                        mem[_3055 + 189] = 40
                                        mem[_3055 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3055 + 294] = Mask(160, 96, stor0)
                                        mem[_3055 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3055 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3055 + 261] = 85
                                        mem[64] = _3055 + 378
                                        mem[_3055 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3055 + 382] = _2674
                                        mem[_3055 + 414] = 0
                                        mem[_3055 + 446] = address(sha3(0, stor0, _3058, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2674, 0, address(sha3(0, stor0, _3058, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        _2675 = mem[(32 * idx + 1) + 128]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3090 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3091 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3093 = sha3(mem[_3091 + 32 len mem[_3091]])
                                    mem[_3090 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3090 + 105] = Mask(160, 96, stor0)
                                    mem[_3090 + 125] = _3093
                                    mem[_3090 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3090 + 72] = 85
                                    mem[64] = _3090 + 189
                                    mem[_3090 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3090 + 193] = 0
                                    mem[_3090 + 225] = _2675
                                    mem[_3090 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3093, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3093, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2675, msg.sender
                                else:
                                    _3097 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2636)
                                    _3098 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3100 = sha3(mem[_3098 + 32 len mem[_3098]])
                                    mem[_3097 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3097 + 105] = Mask(160, 96, stor0)
                                    mem[_3097 + 125] = _3100
                                    mem[_3097 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3097 + 72] = 85
                                    mem[64] = _3097 + 189
                                    mem[_3097 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3097 + 193] = 0
                                    mem[_3097 + 225] = _2675
                                    mem[_3097 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3100, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3100, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2675, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2758 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3076 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2758)
                                    _3077 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3079 = sha3(mem[_3077 + 32 len mem[_3077]])
                                    mem[_3076 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3076 + 105] = Mask(160, 96, stor0)
                                    mem[_3076 + 125] = _3079
                                    mem[_3076 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3076 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3076 + 221] = address(_2636)
                                        mem[_3076 + 241] = address(_2646)
                                        mem[_3076 + 189] = 40
                                        mem[_3076 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3076 + 294] = Mask(160, 96, stor0)
                                        mem[_3076 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3076 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3076 + 261] = 85
                                        mem[64] = _3076 + 378
                                        mem[_3076 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3076 + 382] = 0
                                        mem[_3076 + 414] = _2675
                                        mem[_3076 + 446] = address(sha3(0, stor0, _3079, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2675, address(sha3(0, stor0, _3079, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3076 + 221] = address(_2646)
                                        mem[_3076 + 241] = address(_2636)
                                        mem[_3076 + 189] = 40
                                        mem[_3076 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3076 + 294] = Mask(160, 96, stor0)
                                        mem[_3076 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3076 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3076 + 261] = 85
                                        mem[64] = _3076 + 378
                                        mem[_3076 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3076 + 382] = 0
                                        mem[_3076 + 414] = _2675
                                        mem[_3076 + 446] = address(sha3(0, stor0, _3079, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2675, address(sha3(0, stor0, _3079, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3083 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3084 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3086 = sha3(mem[_3084 + 32 len mem[_3084]])
                                    mem[_3083 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3083 + 105] = Mask(160, 96, stor0)
                                    mem[_3083 + 125] = _3086
                                    mem[_3083 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3083 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3083 + 221] = address(_2636)
                                        mem[_3083 + 241] = address(_2646)
                                        mem[_3083 + 189] = 40
                                        mem[_3083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3083 + 294] = Mask(160, 96, stor0)
                                        mem[_3083 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3083 + 261] = 85
                                        mem[64] = _3083 + 378
                                        mem[_3083 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3083 + 382] = 0
                                        mem[_3083 + 414] = _2675
                                        mem[_3083 + 446] = address(sha3(0, stor0, _3086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2675, address(sha3(0, stor0, _3086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3083 + 221] = address(_2646)
                                        mem[_3083 + 241] = address(_2636)
                                        mem[_3083 + 189] = 40
                                        mem[_3083 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3083 + 294] = Mask(160, 96, stor0)
                                        mem[_3083 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3083 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3083 + 261] = 85
                                        mem[64] = _3083 + 378
                                        mem[_3083 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3083 + 382] = 0
                                        mem[_3083 + 414] = _2675
                                        mem[_3083 + 446] = address(sha3(0, stor0, _3086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2675, address(sha3(0, stor0, _3086, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3118 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3119 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3121 = sha3(mem[_3119 + 32 len mem[_3119]])
                                    mem[_3118 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3118 + 105] = Mask(160, 96, stor0)
                                    mem[_3118 + 125] = _3121
                                    mem[_3118 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3118 + 72] = 85
                                    mem[64] = _3118 + 189
                                    mem[_3118 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3118 + 193] = _2675
                                    mem[_3118 + 225] = 0
                                    mem[_3118 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3121, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3121, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2675, 0, msg.sender
                                else:
                                    _3125 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2636)
                                    _3126 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3128 = sha3(mem[_3126 + 32 len mem[_3126]])
                                    mem[_3125 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3125 + 105] = Mask(160, 96, stor0)
                                    mem[_3125 + 125] = _3128
                                    mem[_3125 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3125 + 72] = 85
                                    mem[64] = _3125 + 189
                                    mem[_3125 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3125 + 193] = _2675
                                    mem[_3125 + 225] = 0
                                    mem[_3125 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3128, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3128, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2675, 0, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2759 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3104 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2759)
                                    _3105 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3107 = sha3(mem[_3105 + 32 len mem[_3105]])
                                    mem[_3104 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3104 + 105] = Mask(160, 96, stor0)
                                    mem[_3104 + 125] = _3107
                                    mem[_3104 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3104 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3104 + 221] = address(_2636)
                                        mem[_3104 + 241] = address(_2646)
                                        mem[_3104 + 189] = 40
                                        mem[_3104 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3104 + 294] = Mask(160, 96, stor0)
                                        mem[_3104 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3104 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3104 + 261] = 85
                                        mem[64] = _3104 + 378
                                        mem[_3104 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3104 + 382] = _2675
                                        mem[_3104 + 414] = 0
                                        mem[_3104 + 446] = address(sha3(0, stor0, _3107, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2675, 0, address(sha3(0, stor0, _3107, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3104 + 221] = address(_2646)
                                        mem[_3104 + 241] = address(_2636)
                                        mem[_3104 + 189] = 40
                                        mem[_3104 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3104 + 294] = Mask(160, 96, stor0)
                                        mem[_3104 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3104 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3104 + 261] = 85
                                        mem[64] = _3104 + 378
                                        mem[_3104 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3104 + 382] = _2675
                                        mem[_3104 + 414] = 0
                                        mem[_3104 + 446] = address(sha3(0, stor0, _3107, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2675, 0, address(sha3(0, stor0, _3107, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3111 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2646)
                                    _3112 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3114 = sha3(mem[_3112 + 32 len mem[_3112]])
                                    mem[_3111 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3111 + 105] = Mask(160, 96, stor0)
                                    mem[_3111 + 125] = _3114
                                    mem[_3111 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3111 + 72] = 85
                                    if address(_2636) < address(_2646):
                                        mem[_3111 + 221] = address(_2636)
                                        mem[_3111 + 241] = address(_2646)
                                        mem[_3111 + 189] = 40
                                        mem[_3111 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3111 + 294] = Mask(160, 96, stor0)
                                        mem[_3111 + 314] = sha3(address(_2636), address(_2646))
                                        mem[_3111 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3111 + 261] = 85
                                        mem[64] = _3111 + 378
                                        mem[_3111 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3111 + 382] = _2675
                                        mem[_3111 + 414] = 0
                                        mem[_3111 + 446] = address(sha3(0, stor0, _3114, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2636), address(_2646)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2675, 0, address(sha3(0, stor0, _3114, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3111 + 221] = address(_2646)
                                        mem[_3111 + 241] = address(_2636)
                                        mem[_3111 + 189] = 40
                                        mem[_3111 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3111 + 294] = Mask(160, 96, stor0)
                                        mem[_3111 + 314] = sha3(address(_2646), address(_2636))
                                        mem[_3111 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3111 + 261] = 85
                                        mem[64] = _3111 + 378
                                        mem[_3111 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3111 + 382] = _2675
                                        mem[_3111 + 414] = 0
                                        mem[_3111 + 446] = address(sha3(0, stor0, _3114, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2646), address(_2636)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2675, 0, address(sha3(0, stor0, _3114, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * arg1.length) + 160] = address(mem[160])
                mem[(32 * arg1.length) + 180] = address(mem[128])
                mem[(32 * arg1.length) + 128] = 40
                mem[(32 * arg1.length) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 233] = Mask(160, 96, stor0)
                mem[(32 * arg1.length) + 253] = sha3(mem[(32 * arg1.length) + 160 len 40])
                mem[(32 * arg1.length) + 285] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                mem[(32 * arg1.length) + 200] = 85
                mem[64] = (32 * arg1.length) + 317
                require 0 < arg1.length
                mem[(32 * arg1.length) + 321] = msg.sender
                mem[(32 * arg1.length) + 353] = address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 40]), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                mem[(32 * arg1.length) + 385] = mem[128]
                require ext_code.size(address(_31))
                call address(_31).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, stor0, sha3(mem[(32 * arg1.length) + 160 len 40]), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), mem[128]
                mem[(32 * arg1.length) + 317] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _2638 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2647 = mem[(32 * idx + 1) + 128]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        _2676 = mem[(32 * idx + 1) + 128]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3146 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3147 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3149 = sha3(mem[_3147 + 32 len mem[_3147]])
                                    mem[_3146 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3146 + 105] = Mask(160, 96, stor0)
                                    mem[_3146 + 125] = _3149
                                    mem[_3146 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3146 + 72] = 85
                                    mem[64] = _3146 + 189
                                    mem[_3146 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3146 + 193] = 0
                                    mem[_3146 + 225] = _2676
                                    mem[_3146 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3149, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3149, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2676, msg.sender
                                else:
                                    _3153 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2638)
                                    _3154 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3156 = sha3(mem[_3154 + 32 len mem[_3154]])
                                    mem[_3153 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3153 + 105] = Mask(160, 96, stor0)
                                    mem[_3153 + 125] = _3156
                                    mem[_3153 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3153 + 72] = 85
                                    mem[64] = _3153 + 189
                                    mem[_3153 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3153 + 193] = 0
                                    mem[_3153 + 225] = _2676
                                    mem[_3153 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3156, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3156, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2676, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2760 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3132 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2760)
                                    _3133 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3135 = sha3(mem[_3133 + 32 len mem[_3133]])
                                    mem[_3132 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3132 + 105] = Mask(160, 96, stor0)
                                    mem[_3132 + 125] = _3135
                                    mem[_3132 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3132 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3132 + 221] = address(_2638)
                                        mem[_3132 + 241] = address(_2647)
                                        mem[_3132 + 189] = 40
                                        mem[_3132 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3132 + 294] = Mask(160, 96, stor0)
                                        mem[_3132 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3132 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3132 + 261] = 85
                                        mem[64] = _3132 + 378
                                        mem[_3132 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3132 + 382] = 0
                                        mem[_3132 + 414] = _2676
                                        mem[_3132 + 446] = address(sha3(0, stor0, _3135, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2676, address(sha3(0, stor0, _3135, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3132 + 221] = address(_2647)
                                        mem[_3132 + 241] = address(_2638)
                                        mem[_3132 + 189] = 40
                                        mem[_3132 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3132 + 294] = Mask(160, 96, stor0)
                                        mem[_3132 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3132 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3132 + 261] = 85
                                        mem[64] = _3132 + 378
                                        mem[_3132 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3132 + 382] = 0
                                        mem[_3132 + 414] = _2676
                                        mem[_3132 + 446] = address(sha3(0, stor0, _3135, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2676, address(sha3(0, stor0, _3135, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3139 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3140 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3142 = sha3(mem[_3140 + 32 len mem[_3140]])
                                    mem[_3139 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3139 + 105] = Mask(160, 96, stor0)
                                    mem[_3139 + 125] = _3142
                                    mem[_3139 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3139 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3139 + 221] = address(_2638)
                                        mem[_3139 + 241] = address(_2647)
                                        mem[_3139 + 189] = 40
                                        mem[_3139 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3139 + 294] = Mask(160, 96, stor0)
                                        mem[_3139 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3139 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3139 + 261] = 85
                                        mem[64] = _3139 + 378
                                        mem[_3139 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3139 + 382] = 0
                                        mem[_3139 + 414] = _2676
                                        mem[_3139 + 446] = address(sha3(0, stor0, _3142, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2676, address(sha3(0, stor0, _3142, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3139 + 221] = address(_2647)
                                        mem[_3139 + 241] = address(_2638)
                                        mem[_3139 + 189] = 40
                                        mem[_3139 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3139 + 294] = Mask(160, 96, stor0)
                                        mem[_3139 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3139 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3139 + 261] = 85
                                        mem[64] = _3139 + 378
                                        mem[_3139 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3139 + 382] = 0
                                        mem[_3139 + 414] = _2676
                                        mem[_3139 + 446] = address(sha3(0, stor0, _3142, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2676, address(sha3(0, stor0, _3142, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3174 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3175 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3177 = sha3(mem[_3175 + 32 len mem[_3175]])
                                    mem[_3174 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3174 + 105] = Mask(160, 96, stor0)
                                    mem[_3174 + 125] = _3177
                                    mem[_3174 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3174 + 72] = 85
                                    mem[64] = _3174 + 189
                                    mem[_3174 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3174 + 193] = _2676
                                    mem[_3174 + 225] = 0
                                    mem[_3174 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3177, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3177, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2676, 0, msg.sender
                                else:
                                    _3181 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2638)
                                    _3182 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3184 = sha3(mem[_3182 + 32 len mem[_3182]])
                                    mem[_3181 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3181 + 105] = Mask(160, 96, stor0)
                                    mem[_3181 + 125] = _3184
                                    mem[_3181 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3181 + 72] = 85
                                    mem[64] = _3181 + 189
                                    mem[_3181 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3181 + 193] = _2676
                                    mem[_3181 + 225] = 0
                                    mem[_3181 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3184, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3184, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2676, 0, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2761 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3160 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2761)
                                    _3161 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3163 = sha3(mem[_3161 + 32 len mem[_3161]])
                                    mem[_3160 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3160 + 105] = Mask(160, 96, stor0)
                                    mem[_3160 + 125] = _3163
                                    mem[_3160 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3160 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3160 + 221] = address(_2638)
                                        mem[_3160 + 241] = address(_2647)
                                        mem[_3160 + 189] = 40
                                        mem[_3160 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3160 + 294] = Mask(160, 96, stor0)
                                        mem[_3160 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3160 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3160 + 261] = 85
                                        mem[64] = _3160 + 378
                                        mem[_3160 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3160 + 382] = _2676
                                        mem[_3160 + 414] = 0
                                        mem[_3160 + 446] = address(sha3(0, stor0, _3163, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2676, 0, address(sha3(0, stor0, _3163, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3160 + 221] = address(_2647)
                                        mem[_3160 + 241] = address(_2638)
                                        mem[_3160 + 189] = 40
                                        mem[_3160 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3160 + 294] = Mask(160, 96, stor0)
                                        mem[_3160 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3160 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3160 + 261] = 85
                                        mem[64] = _3160 + 378
                                        mem[_3160 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3160 + 382] = _2676
                                        mem[_3160 + 414] = 0
                                        mem[_3160 + 446] = address(sha3(0, stor0, _3163, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2676, 0, address(sha3(0, stor0, _3163, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3167 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3168 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3170 = sha3(mem[_3168 + 32 len mem[_3168]])
                                    mem[_3167 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3167 + 105] = Mask(160, 96, stor0)
                                    mem[_3167 + 125] = _3170
                                    mem[_3167 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3167 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3167 + 221] = address(_2638)
                                        mem[_3167 + 241] = address(_2647)
                                        mem[_3167 + 189] = 40
                                        mem[_3167 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3167 + 294] = Mask(160, 96, stor0)
                                        mem[_3167 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3167 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3167 + 261] = 85
                                        mem[64] = _3167 + 378
                                        mem[_3167 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3167 + 382] = _2676
                                        mem[_3167 + 414] = 0
                                        mem[_3167 + 446] = address(sha3(0, stor0, _3170, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2676, 0, address(sha3(0, stor0, _3170, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3167 + 221] = address(_2647)
                                        mem[_3167 + 241] = address(_2638)
                                        mem[_3167 + 189] = 40
                                        mem[_3167 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3167 + 294] = Mask(160, 96, stor0)
                                        mem[_3167 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3167 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3167 + 261] = 85
                                        mem[64] = _3167 + 378
                                        mem[_3167 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3167 + 382] = _2676
                                        mem[_3167 + 414] = 0
                                        mem[_3167 + 446] = address(sha3(0, stor0, _3170, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2676, 0, address(sha3(0, stor0, _3170, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    else:
                        _2677 = mem[(32 * idx + 1) + 128]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3202 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3203 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3205 = sha3(mem[_3203 + 32 len mem[_3203]])
                                    mem[_3202 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3202 + 105] = Mask(160, 96, stor0)
                                    mem[_3202 + 125] = _3205
                                    mem[_3202 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3202 + 72] = 85
                                    mem[64] = _3202 + 189
                                    mem[_3202 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3202 + 193] = 0
                                    mem[_3202 + 225] = _2677
                                    mem[_3202 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3205, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3205, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2677, msg.sender
                                else:
                                    _3209 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2638)
                                    _3210 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3212 = sha3(mem[_3210 + 32 len mem[_3210]])
                                    mem[_3209 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3209 + 105] = Mask(160, 96, stor0)
                                    mem[_3209 + 125] = _3212
                                    mem[_3209 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3209 + 72] = 85
                                    mem[64] = _3209 + 189
                                    mem[_3209 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3209 + 193] = 0
                                    mem[_3209 + 225] = _2677
                                    mem[_3209 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3212, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3212, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _2677, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2762 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3188 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2762)
                                    _3189 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3191 = sha3(mem[_3189 + 32 len mem[_3189]])
                                    mem[_3188 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3188 + 105] = Mask(160, 96, stor0)
                                    mem[_3188 + 125] = _3191
                                    mem[_3188 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3188 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3188 + 221] = address(_2638)
                                        mem[_3188 + 241] = address(_2647)
                                        mem[_3188 + 189] = 40
                                        mem[_3188 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3188 + 294] = Mask(160, 96, stor0)
                                        mem[_3188 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3188 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3188 + 261] = 85
                                        mem[64] = _3188 + 378
                                        mem[_3188 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3188 + 382] = 0
                                        mem[_3188 + 414] = _2677
                                        mem[_3188 + 446] = address(sha3(0, stor0, _3191, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2677, address(sha3(0, stor0, _3191, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3188 + 221] = address(_2647)
                                        mem[_3188 + 241] = address(_2638)
                                        mem[_3188 + 189] = 40
                                        mem[_3188 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3188 + 294] = Mask(160, 96, stor0)
                                        mem[_3188 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3188 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3188 + 261] = 85
                                        mem[64] = _3188 + 378
                                        mem[_3188 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3188 + 382] = 0
                                        mem[_3188 + 414] = _2677
                                        mem[_3188 + 446] = address(sha3(0, stor0, _3191, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2677, address(sha3(0, stor0, _3191, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3195 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3196 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3198 = sha3(mem[_3196 + 32 len mem[_3196]])
                                    mem[_3195 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3195 + 105] = Mask(160, 96, stor0)
                                    mem[_3195 + 125] = _3198
                                    mem[_3195 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3195 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3195 + 221] = address(_2638)
                                        mem[_3195 + 241] = address(_2647)
                                        mem[_3195 + 189] = 40
                                        mem[_3195 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3195 + 294] = Mask(160, 96, stor0)
                                        mem[_3195 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3195 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3195 + 261] = 85
                                        mem[64] = _3195 + 378
                                        mem[_3195 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3195 + 382] = 0
                                        mem[_3195 + 414] = _2677
                                        mem[_3195 + 446] = address(sha3(0, stor0, _3198, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2677, address(sha3(0, stor0, _3198, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3195 + 221] = address(_2647)
                                        mem[_3195 + 241] = address(_2638)
                                        mem[_3195 + 189] = 40
                                        mem[_3195 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3195 + 294] = Mask(160, 96, stor0)
                                        mem[_3195 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3195 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3195 + 261] = 85
                                        mem[64] = _3195 + 378
                                        mem[_3195 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3195 + 382] = 0
                                        mem[_3195 + 414] = _2677
                                        mem[_3195 + 446] = address(sha3(0, stor0, _3198, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _2677, address(sha3(0, stor0, _3198, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            if idx >= mem[96] - 2:
                                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                    _3230 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3231 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3233 = sha3(mem[_3231 + 32 len mem[_3231]])
                                    mem[_3230 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3230 + 105] = Mask(160, 96, stor0)
                                    mem[_3230 + 125] = _3233
                                    mem[_3230 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3230 + 72] = 85
                                    mem[64] = _3230 + 189
                                    mem[_3230 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3230 + 193] = _2677
                                    mem[_3230 + 225] = 0
                                    mem[_3230 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3233, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3233, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2677, 0, msg.sender
                                else:
                                    _3237 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2638)
                                    _3238 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3240 = sha3(mem[_3238 + 32 len mem[_3238]])
                                    mem[_3237 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3237 + 105] = Mask(160, 96, stor0)
                                    mem[_3237 + 125] = _3240
                                    mem[_3237 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3237 + 72] = 85
                                    mem[64] = _3237 + 189
                                    mem[_3237 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_3237 + 193] = _2677
                                    mem[_3237 + 225] = 0
                                    mem[_3237 + 257] = msg.sender
                                    require ext_code.size(address(sha3(0, stor0, _3240, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                    call address(sha3(0, stor0, _3240, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _2677, 0, msg.sender
                            else:
                                require idx + 2 < mem[96]
                                _2763 = mem[(32 * idx + 2) + 128]
                                if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                    _3216 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                    mem[mem[64] + 52] = address(_2763)
                                    _3217 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3219 = sha3(mem[_3217 + 32 len mem[_3217]])
                                    mem[_3216 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3216 + 105] = Mask(160, 96, stor0)
                                    mem[_3216 + 125] = _3219
                                    mem[_3216 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3216 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3216 + 221] = address(_2638)
                                        mem[_3216 + 241] = address(_2647)
                                        mem[_3216 + 189] = 40
                                        mem[_3216 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3216 + 294] = Mask(160, 96, stor0)
                                        mem[_3216 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3216 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3216 + 261] = 85
                                        mem[64] = _3216 + 378
                                        mem[_3216 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3216 + 382] = _2677
                                        mem[_3216 + 414] = 0
                                        mem[_3216 + 446] = address(sha3(0, stor0, _3219, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2677, 0, address(sha3(0, stor0, _3219, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3216 + 221] = address(_2647)
                                        mem[_3216 + 241] = address(_2638)
                                        mem[_3216 + 189] = 40
                                        mem[_3216 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3216 + 294] = Mask(160, 96, stor0)
                                        mem[_3216 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3216 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3216 + 261] = 85
                                        mem[64] = _3216 + 378
                                        mem[_3216 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3216 + 382] = _2677
                                        mem[_3216 + 414] = 0
                                        mem[_3216 + 446] = address(sha3(0, stor0, _3219, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2677, 0, address(sha3(0, stor0, _3219, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                else:
                                    _3223 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                    mem[mem[64] + 52] = address(_2647)
                                    _3224 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _3226 = sha3(mem[_3224 + 32 len mem[_3224]])
                                    mem[_3223 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_3223 + 105] = Mask(160, 96, stor0)
                                    mem[_3223 + 125] = _3226
                                    mem[_3223 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                    mem[_3223 + 72] = 85
                                    if address(_2638) < address(_2647):
                                        mem[_3223 + 221] = address(_2638)
                                        mem[_3223 + 241] = address(_2647)
                                        mem[_3223 + 189] = 40
                                        mem[_3223 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3223 + 294] = Mask(160, 96, stor0)
                                        mem[_3223 + 314] = sha3(address(_2638), address(_2647))
                                        mem[_3223 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3223 + 261] = 85
                                        mem[64] = _3223 + 378
                                        mem[_3223 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3223 + 382] = _2677
                                        mem[_3223 + 414] = 0
                                        mem[_3223 + 446] = address(sha3(0, stor0, _3226, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2638), address(_2647)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2677, 0, address(sha3(0, stor0, _3226, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        mem[_3223 + 221] = address(_2647)
                                        mem[_3223 + 241] = address(_2638)
                                        mem[_3223 + 189] = 40
                                        mem[_3223 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3223 + 294] = Mask(160, 96, stor0)
                                        mem[_3223 + 314] = sha3(address(_2647), address(_2638))
                                        mem[_3223 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_3223 + 261] = 85
                                        mem[64] = _3223 + 378
                                        mem[_3223 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_3223 + 382] = _2677
                                        mem[_3223 + 414] = 0
                                        mem[_3223 + 446] = address(sha3(0, stor0, _3226, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        require ext_code.size(address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, sha3(address(_2647), address(_2638)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _2677, 0, address(sha3(0, stor0, _3226, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * arg1.length) + 128] = arg1.length
            mem[64] = (64 * arg1.length) + 160
            if not arg1.length:
                require 0 < arg1.length
                mem[(32 * arg1.length) + 160] = arg2
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _2640 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2650 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        _2720 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_2650)
                        _2721 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2723 = sha3(mem[_2721 + 32 len mem[_2721]])
                        mem[_2720 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2720 + 105] = Mask(160, 96, stor0)
                        mem[_2720 + 125] = _2723
                        mem[_2720 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2720 + 72] = 85
                        mem[64] = _2720 + 189
                        if not uint32(ext_code.size(sha3(0, stor0, _2723, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2723, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2723, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2720 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if address(_2640) == address(_2640):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[18 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        _2727 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_2640)
                        _2728 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2730 = sha3(mem[_2728 + 32 len mem[_2728]])
                        mem[_2727 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2727 + 105] = Mask(160, 96, stor0)
                        mem[_2727 + 125] = _2730
                        mem[_2727 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2727 + 72] = 85
                        mem[64] = _2727 + 189
                        if not uint32(ext_code.size(sha3(0, stor0, _2730, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2730, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2730, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2727 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if address(_2650) == address(_2640):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[18 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    idx = idx + 1
                    continue 
                require mem[(32 * arg1.length) + 128] - 1 < mem[(32 * arg1.length) + 128]
                if mem[(32 * mem[(32 * arg1.length) + 128] - 1) + (32 * arg1.length) + 160] < arg3:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                require 0 < mem[96]
                _2678 = mem[128]
                require 0 < mem[96]
                _2682 = mem[128]
                require 1 < mem[96]
                _2702 = mem[160]
                if mem[140 len 20] < mem[172 len 20]:
                    _2764 = mem[64]
                    mem[mem[64] + 32] = address(mem[128])
                    mem[mem[64] + 52] = address(_2702)
                    _2765 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2767 = sha3(mem[_2765 + 32 len mem[_2765]])
                    mem[_2764 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2764 + 105] = Mask(160, 96, stor0)
                    mem[_2764 + 125] = _2767
                    mem[_2764 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2764 + 72] = 85
                    mem[64] = _2764 + 189
                    require 0 < mem[(32 * arg1.length) + 128]
                    _3244 = mem[(32 * arg1.length) + 160]
                    mem[_2764 + 193] = msg.sender
                    mem[_2764 + 225] = address(sha3(0, stor0, _2767, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    mem[_2764 + 257] = _3244
                    require ext_code.size(address(_2678))
                    call address(_2678).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(sha3(0, stor0, _2767, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), _3244
                    mem[_2764 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5156 = mem[96]
                    idx = 0
                    while idx < _5156 - 1:
                        require idx < mem[96]
                        _5164 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[96]
                        _5172 = mem[(32 * idx + 1) + 128]
                        require idx + 1 < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            _5184 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5254 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5255 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5257 = sha3(mem[_5255 + 32 len mem[_5255]])
                                        mem[_5254 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5254 + 105] = Mask(160, 96, stor0)
                                        mem[_5254 + 125] = _5257
                                        mem[_5254 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5254 + 72] = 85
                                        mem[64] = _5254 + 189
                                        mem[_5254 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5254 + 193] = 0
                                        mem[_5254 + 225] = _5184
                                        mem[_5254 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5257, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5257, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5184, msg.sender
                                    else:
                                        _5261 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5164)
                                        _5262 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5264 = sha3(mem[_5262 + 32 len mem[_5262]])
                                        mem[_5261 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5261 + 105] = Mask(160, 96, stor0)
                                        mem[_5261 + 125] = _5264
                                        mem[_5261 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5261 + 72] = 85
                                        mem[64] = _5261 + 189
                                        mem[_5261 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5261 + 193] = 0
                                        mem[_5261 + 225] = _5184
                                        mem[_5261 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5264, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5264, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5184, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5224 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5240 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5224)
                                        _5241 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5243 = sha3(mem[_5241 + 32 len mem[_5241]])
                                        mem[_5240 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5240 + 105] = Mask(160, 96, stor0)
                                        mem[_5240 + 125] = _5243
                                        mem[_5240 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5240 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5240 + 221] = address(_5164)
                                            mem[_5240 + 241] = address(_5172)
                                            mem[_5240 + 189] = 40
                                            mem[_5240 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5240 + 294] = Mask(160, 96, stor0)
                                            mem[_5240 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5240 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5240 + 261] = 85
                                            mem[64] = _5240 + 378
                                            mem[_5240 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5240 + 382] = 0
                                            mem[_5240 + 414] = _5184
                                            mem[_5240 + 446] = address(sha3(0, stor0, _5243, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5184, address(sha3(0, stor0, _5243, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5240 + 221] = address(_5172)
                                            mem[_5240 + 241] = address(_5164)
                                            mem[_5240 + 189] = 40
                                            mem[_5240 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5240 + 294] = Mask(160, 96, stor0)
                                            mem[_5240 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5240 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5240 + 261] = 85
                                            mem[64] = _5240 + 378
                                            mem[_5240 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5240 + 382] = 0
                                            mem[_5240 + 414] = _5184
                                            mem[_5240 + 446] = address(sha3(0, stor0, _5243, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5184, address(sha3(0, stor0, _5243, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5247 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5248 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5250 = sha3(mem[_5248 + 32 len mem[_5248]])
                                        mem[_5247 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5247 + 105] = Mask(160, 96, stor0)
                                        mem[_5247 + 125] = _5250
                                        mem[_5247 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5247 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5247 + 221] = address(_5164)
                                            mem[_5247 + 241] = address(_5172)
                                            mem[_5247 + 189] = 40
                                            mem[_5247 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + 294] = Mask(160, 96, stor0)
                                            mem[_5247 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5247 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5247 + 261] = 85
                                            mem[64] = _5247 + 378
                                            mem[_5247 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + 382] = 0
                                            mem[_5247 + 414] = _5184
                                            mem[_5247 + 446] = address(sha3(0, stor0, _5250, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5184, address(sha3(0, stor0, _5250, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5247 + 221] = address(_5172)
                                            mem[_5247 + 241] = address(_5164)
                                            mem[_5247 + 189] = 40
                                            mem[_5247 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + 294] = Mask(160, 96, stor0)
                                            mem[_5247 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5247 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5247 + 261] = 85
                                            mem[64] = _5247 + 378
                                            mem[_5247 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + 382] = 0
                                            mem[_5247 + 414] = _5184
                                            mem[_5247 + 446] = address(sha3(0, stor0, _5250, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5184, address(sha3(0, stor0, _5250, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5282 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5283 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5285 = sha3(mem[_5283 + 32 len mem[_5283]])
                                        mem[_5282 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5282 + 105] = Mask(160, 96, stor0)
                                        mem[_5282 + 125] = _5285
                                        mem[_5282 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5282 + 72] = 85
                                        mem[64] = _5282 + 189
                                        mem[_5282 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5282 + 193] = _5184
                                        mem[_5282 + 225] = 0
                                        mem[_5282 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5285, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5285, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5184, 0, msg.sender
                                    else:
                                        _5289 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5164)
                                        _5290 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5292 = sha3(mem[_5290 + 32 len mem[_5290]])
                                        mem[_5289 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5289 + 105] = Mask(160, 96, stor0)
                                        mem[_5289 + 125] = _5292
                                        mem[_5289 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5289 + 72] = 85
                                        mem[64] = _5289 + 189
                                        mem[_5289 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5289 + 193] = _5184
                                        mem[_5289 + 225] = 0
                                        mem[_5289 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5292, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5292, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5184, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5225 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5268 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5225)
                                        _5269 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5271 = sha3(mem[_5269 + 32 len mem[_5269]])
                                        mem[_5268 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5268 + 105] = Mask(160, 96, stor0)
                                        mem[_5268 + 125] = _5271
                                        mem[_5268 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5268 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5268 + 221] = address(_5164)
                                            mem[_5268 + 241] = address(_5172)
                                            mem[_5268 + 189] = 40
                                            mem[_5268 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5268 + 294] = Mask(160, 96, stor0)
                                            mem[_5268 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5268 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5268 + 261] = 85
                                            mem[64] = _5268 + 378
                                            mem[_5268 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5268 + 382] = _5184
                                            mem[_5268 + 414] = 0
                                            mem[_5268 + 446] = address(sha3(0, stor0, _5271, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5184, 0, address(sha3(0, stor0, _5271, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5268 + 221] = address(_5172)
                                            mem[_5268 + 241] = address(_5164)
                                            mem[_5268 + 189] = 40
                                            mem[_5268 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5268 + 294] = Mask(160, 96, stor0)
                                            mem[_5268 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5268 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5268 + 261] = 85
                                            mem[64] = _5268 + 378
                                            mem[_5268 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5268 + 382] = _5184
                                            mem[_5268 + 414] = 0
                                            mem[_5268 + 446] = address(sha3(0, stor0, _5271, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5184, 0, address(sha3(0, stor0, _5271, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5275 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5276 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5278 = sha3(mem[_5276 + 32 len mem[_5276]])
                                        mem[_5275 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5275 + 105] = Mask(160, 96, stor0)
                                        mem[_5275 + 125] = _5278
                                        mem[_5275 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5275 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5275 + 221] = address(_5164)
                                            mem[_5275 + 241] = address(_5172)
                                            mem[_5275 + 189] = 40
                                            mem[_5275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5275 + 294] = Mask(160, 96, stor0)
                                            mem[_5275 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5275 + 261] = 85
                                            mem[64] = _5275 + 378
                                            mem[_5275 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5275 + 382] = _5184
                                            mem[_5275 + 414] = 0
                                            mem[_5275 + 446] = address(sha3(0, stor0, _5278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5184, 0, address(sha3(0, stor0, _5278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5275 + 221] = address(_5172)
                                            mem[_5275 + 241] = address(_5164)
                                            mem[_5275 + 189] = 40
                                            mem[_5275 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5275 + 294] = Mask(160, 96, stor0)
                                            mem[_5275 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5275 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5275 + 261] = 85
                                            mem[64] = _5275 + 378
                                            mem[_5275 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5275 + 382] = _5184
                                            mem[_5275 + 414] = 0
                                            mem[_5275 + 446] = address(sha3(0, stor0, _5278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5184, 0, address(sha3(0, stor0, _5278, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            _5185 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5310 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5311 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5313 = sha3(mem[_5311 + 32 len mem[_5311]])
                                        mem[_5310 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5310 + 105] = Mask(160, 96, stor0)
                                        mem[_5310 + 125] = _5313
                                        mem[_5310 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5310 + 72] = 85
                                        mem[64] = _5310 + 189
                                        mem[_5310 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5310 + 193] = 0
                                        mem[_5310 + 225] = _5185
                                        mem[_5310 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5313, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5313, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5185, msg.sender
                                    else:
                                        _5317 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5164)
                                        _5318 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5320 = sha3(mem[_5318 + 32 len mem[_5318]])
                                        mem[_5317 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5317 + 105] = Mask(160, 96, stor0)
                                        mem[_5317 + 125] = _5320
                                        mem[_5317 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5317 + 72] = 85
                                        mem[64] = _5317 + 189
                                        mem[_5317 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5317 + 193] = 0
                                        mem[_5317 + 225] = _5185
                                        mem[_5317 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5320, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5320, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5185, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5226 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5296 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5226)
                                        _5297 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5299 = sha3(mem[_5297 + 32 len mem[_5297]])
                                        mem[_5296 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5296 + 105] = Mask(160, 96, stor0)
                                        mem[_5296 + 125] = _5299
                                        mem[_5296 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5296 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5296 + 221] = address(_5164)
                                            mem[_5296 + 241] = address(_5172)
                                            mem[_5296 + 189] = 40
                                            mem[_5296 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5296 + 294] = Mask(160, 96, stor0)
                                            mem[_5296 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5296 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5296 + 261] = 85
                                            mem[64] = _5296 + 378
                                            mem[_5296 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5296 + 382] = 0
                                            mem[_5296 + 414] = _5185
                                            mem[_5296 + 446] = address(sha3(0, stor0, _5299, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5185, address(sha3(0, stor0, _5299, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5296 + 221] = address(_5172)
                                            mem[_5296 + 241] = address(_5164)
                                            mem[_5296 + 189] = 40
                                            mem[_5296 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5296 + 294] = Mask(160, 96, stor0)
                                            mem[_5296 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5296 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5296 + 261] = 85
                                            mem[64] = _5296 + 378
                                            mem[_5296 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5296 + 382] = 0
                                            mem[_5296 + 414] = _5185
                                            mem[_5296 + 446] = address(sha3(0, stor0, _5299, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5185, address(sha3(0, stor0, _5299, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5303 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5304 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5306 = sha3(mem[_5304 + 32 len mem[_5304]])
                                        mem[_5303 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5303 + 105] = Mask(160, 96, stor0)
                                        mem[_5303 + 125] = _5306
                                        mem[_5303 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5303 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5303 + 221] = address(_5164)
                                            mem[_5303 + 241] = address(_5172)
                                            mem[_5303 + 189] = 40
                                            mem[_5303 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5303 + 294] = Mask(160, 96, stor0)
                                            mem[_5303 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5303 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5303 + 261] = 85
                                            mem[64] = _5303 + 378
                                            mem[_5303 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5303 + 382] = 0
                                            mem[_5303 + 414] = _5185
                                            mem[_5303 + 446] = address(sha3(0, stor0, _5306, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5185, address(sha3(0, stor0, _5306, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5303 + 221] = address(_5172)
                                            mem[_5303 + 241] = address(_5164)
                                            mem[_5303 + 189] = 40
                                            mem[_5303 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5303 + 294] = Mask(160, 96, stor0)
                                            mem[_5303 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5303 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5303 + 261] = 85
                                            mem[64] = _5303 + 378
                                            mem[_5303 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5303 + 382] = 0
                                            mem[_5303 + 414] = _5185
                                            mem[_5303 + 446] = address(sha3(0, stor0, _5306, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5185, address(sha3(0, stor0, _5306, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5338 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5339 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5341 = sha3(mem[_5339 + 32 len mem[_5339]])
                                        mem[_5338 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5338 + 105] = Mask(160, 96, stor0)
                                        mem[_5338 + 125] = _5341
                                        mem[_5338 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5338 + 72] = 85
                                        mem[64] = _5338 + 189
                                        mem[_5338 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5338 + 193] = _5185
                                        mem[_5338 + 225] = 0
                                        mem[_5338 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5341, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5341, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5185, 0, msg.sender
                                    else:
                                        _5345 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5164)
                                        _5346 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5348 = sha3(mem[_5346 + 32 len mem[_5346]])
                                        mem[_5345 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5345 + 105] = Mask(160, 96, stor0)
                                        mem[_5345 + 125] = _5348
                                        mem[_5345 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5345 + 72] = 85
                                        mem[64] = _5345 + 189
                                        mem[_5345 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5345 + 193] = _5185
                                        mem[_5345 + 225] = 0
                                        mem[_5345 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5348, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5348, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5185, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5227 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5324 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5227)
                                        _5325 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5327 = sha3(mem[_5325 + 32 len mem[_5325]])
                                        mem[_5324 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5324 + 105] = Mask(160, 96, stor0)
                                        mem[_5324 + 125] = _5327
                                        mem[_5324 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5324 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5324 + 221] = address(_5164)
                                            mem[_5324 + 241] = address(_5172)
                                            mem[_5324 + 189] = 40
                                            mem[_5324 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5324 + 294] = Mask(160, 96, stor0)
                                            mem[_5324 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5324 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5324 + 261] = 85
                                            mem[64] = _5324 + 378
                                            mem[_5324 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5324 + 382] = _5185
                                            mem[_5324 + 414] = 0
                                            mem[_5324 + 446] = address(sha3(0, stor0, _5327, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5185, 0, address(sha3(0, stor0, _5327, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5324 + 221] = address(_5172)
                                            mem[_5324 + 241] = address(_5164)
                                            mem[_5324 + 189] = 40
                                            mem[_5324 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5324 + 294] = Mask(160, 96, stor0)
                                            mem[_5324 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5324 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5324 + 261] = 85
                                            mem[64] = _5324 + 378
                                            mem[_5324 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5324 + 382] = _5185
                                            mem[_5324 + 414] = 0
                                            mem[_5324 + 446] = address(sha3(0, stor0, _5327, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5185, 0, address(sha3(0, stor0, _5327, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5331 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5172)
                                        _5332 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5334 = sha3(mem[_5332 + 32 len mem[_5332]])
                                        mem[_5331 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5331 + 105] = Mask(160, 96, stor0)
                                        mem[_5331 + 125] = _5334
                                        mem[_5331 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5331 + 72] = 85
                                        if address(_5164) < address(_5172):
                                            mem[_5331 + 221] = address(_5164)
                                            mem[_5331 + 241] = address(_5172)
                                            mem[_5331 + 189] = 40
                                            mem[_5331 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5331 + 294] = Mask(160, 96, stor0)
                                            mem[_5331 + 314] = sha3(address(_5164), address(_5172))
                                            mem[_5331 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5331 + 261] = 85
                                            mem[64] = _5331 + 378
                                            mem[_5331 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5331 + 382] = _5185
                                            mem[_5331 + 414] = 0
                                            mem[_5331 + 446] = address(sha3(0, stor0, _5334, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5164), address(_5172)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5185, 0, address(sha3(0, stor0, _5334, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5331 + 221] = address(_5172)
                                            mem[_5331 + 241] = address(_5164)
                                            mem[_5331 + 189] = 40
                                            mem[_5331 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5331 + 294] = Mask(160, 96, stor0)
                                            mem[_5331 + 314] = sha3(address(_5172), address(_5164))
                                            mem[_5331 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5331 + 261] = 85
                                            mem[64] = _5331 + 378
                                            mem[_5331 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5331 + 382] = _5185
                                            mem[_5331 + 414] = 0
                                            mem[_5331 + 446] = address(sha3(0, stor0, _5334, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5172), address(_5164)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5185, 0, address(sha3(0, stor0, _5334, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    _2771 = mem[64]
                    mem[mem[64] + 32] = address(mem[160])
                    mem[mem[64] + 52] = address(_2682)
                    _2772 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2774 = sha3(mem[_2772 + 32 len mem[_2772]])
                    mem[_2771 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2771 + 105] = Mask(160, 96, stor0)
                    mem[_2771 + 125] = _2774
                    mem[_2771 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2771 + 72] = 85
                    mem[64] = _2771 + 189
                    require 0 < mem[(32 * arg1.length) + 128]
                    _3247 = mem[(32 * arg1.length) + 160]
                    mem[_2771 + 193] = msg.sender
                    mem[_2771 + 225] = address(sha3(0, stor0, _2774, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    mem[_2771 + 257] = _3247
                    require ext_code.size(address(_2678))
                    call address(_2678).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(sha3(0, stor0, _2774, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), _3247
                    mem[_2771 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5157 = mem[96]
                    idx = 0
                    while idx < _5157 - 1:
                        require idx < mem[96]
                        _5166 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[96]
                        _5173 = mem[(32 * idx + 1) + 128]
                        require idx + 1 < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            _5186 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5366 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5367 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5369 = sha3(mem[_5367 + 32 len mem[_5367]])
                                        mem[_5366 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5366 + 105] = Mask(160, 96, stor0)
                                        mem[_5366 + 125] = _5369
                                        mem[_5366 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5366 + 72] = 85
                                        mem[64] = _5366 + 189
                                        mem[_5366 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5366 + 193] = 0
                                        mem[_5366 + 225] = _5186
                                        mem[_5366 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5369, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5369, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5186, msg.sender
                                    else:
                                        _5373 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5166)
                                        _5374 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5376 = sha3(mem[_5374 + 32 len mem[_5374]])
                                        mem[_5373 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5373 + 105] = Mask(160, 96, stor0)
                                        mem[_5373 + 125] = _5376
                                        mem[_5373 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5373 + 72] = 85
                                        mem[64] = _5373 + 189
                                        mem[_5373 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5373 + 193] = 0
                                        mem[_5373 + 225] = _5186
                                        mem[_5373 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5376, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5376, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5186, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5228 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5352 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5228)
                                        _5353 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5355 = sha3(mem[_5353 + 32 len mem[_5353]])
                                        mem[_5352 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5352 + 105] = Mask(160, 96, stor0)
                                        mem[_5352 + 125] = _5355
                                        mem[_5352 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5352 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5352 + 221] = address(_5166)
                                            mem[_5352 + 241] = address(_5173)
                                            mem[_5352 + 189] = 40
                                            mem[_5352 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5352 + 294] = Mask(160, 96, stor0)
                                            mem[_5352 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5352 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5352 + 261] = 85
                                            mem[64] = _5352 + 378
                                            mem[_5352 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5352 + 382] = 0
                                            mem[_5352 + 414] = _5186
                                            mem[_5352 + 446] = address(sha3(0, stor0, _5355, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5186, address(sha3(0, stor0, _5355, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5352 + 221] = address(_5173)
                                            mem[_5352 + 241] = address(_5166)
                                            mem[_5352 + 189] = 40
                                            mem[_5352 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5352 + 294] = Mask(160, 96, stor0)
                                            mem[_5352 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5352 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5352 + 261] = 85
                                            mem[64] = _5352 + 378
                                            mem[_5352 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5352 + 382] = 0
                                            mem[_5352 + 414] = _5186
                                            mem[_5352 + 446] = address(sha3(0, stor0, _5355, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5186, address(sha3(0, stor0, _5355, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5359 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5360 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5362 = sha3(mem[_5360 + 32 len mem[_5360]])
                                        mem[_5359 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5359 + 105] = Mask(160, 96, stor0)
                                        mem[_5359 + 125] = _5362
                                        mem[_5359 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5359 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5359 + 221] = address(_5166)
                                            mem[_5359 + 241] = address(_5173)
                                            mem[_5359 + 189] = 40
                                            mem[_5359 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5359 + 294] = Mask(160, 96, stor0)
                                            mem[_5359 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5359 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5359 + 261] = 85
                                            mem[64] = _5359 + 378
                                            mem[_5359 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5359 + 382] = 0
                                            mem[_5359 + 414] = _5186
                                            mem[_5359 + 446] = address(sha3(0, stor0, _5362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5186, address(sha3(0, stor0, _5362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5359 + 221] = address(_5173)
                                            mem[_5359 + 241] = address(_5166)
                                            mem[_5359 + 189] = 40
                                            mem[_5359 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5359 + 294] = Mask(160, 96, stor0)
                                            mem[_5359 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5359 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5359 + 261] = 85
                                            mem[64] = _5359 + 378
                                            mem[_5359 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5359 + 382] = 0
                                            mem[_5359 + 414] = _5186
                                            mem[_5359 + 446] = address(sha3(0, stor0, _5362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5186, address(sha3(0, stor0, _5362, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5394 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5395 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5397 = sha3(mem[_5395 + 32 len mem[_5395]])
                                        mem[_5394 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5394 + 105] = Mask(160, 96, stor0)
                                        mem[_5394 + 125] = _5397
                                        mem[_5394 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5394 + 72] = 85
                                        mem[64] = _5394 + 189
                                        mem[_5394 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5394 + 193] = _5186
                                        mem[_5394 + 225] = 0
                                        mem[_5394 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5397, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5397, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5186, 0, msg.sender
                                    else:
                                        _5401 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5166)
                                        _5402 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5404 = sha3(mem[_5402 + 32 len mem[_5402]])
                                        mem[_5401 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5401 + 105] = Mask(160, 96, stor0)
                                        mem[_5401 + 125] = _5404
                                        mem[_5401 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5401 + 72] = 85
                                        mem[64] = _5401 + 189
                                        mem[_5401 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5401 + 193] = _5186
                                        mem[_5401 + 225] = 0
                                        mem[_5401 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5404, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5404, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5186, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5229 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5380 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5229)
                                        _5381 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5383 = sha3(mem[_5381 + 32 len mem[_5381]])
                                        mem[_5380 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5380 + 105] = Mask(160, 96, stor0)
                                        mem[_5380 + 125] = _5383
                                        mem[_5380 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5380 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5380 + 221] = address(_5166)
                                            mem[_5380 + 241] = address(_5173)
                                            mem[_5380 + 189] = 40
                                            mem[_5380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5380 + 294] = Mask(160, 96, stor0)
                                            mem[_5380 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5380 + 261] = 85
                                            mem[64] = _5380 + 378
                                            mem[_5380 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5380 + 382] = _5186
                                            mem[_5380 + 414] = 0
                                            mem[_5380 + 446] = address(sha3(0, stor0, _5383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5186, 0, address(sha3(0, stor0, _5383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5380 + 221] = address(_5173)
                                            mem[_5380 + 241] = address(_5166)
                                            mem[_5380 + 189] = 40
                                            mem[_5380 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5380 + 294] = Mask(160, 96, stor0)
                                            mem[_5380 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5380 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5380 + 261] = 85
                                            mem[64] = _5380 + 378
                                            mem[_5380 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5380 + 382] = _5186
                                            mem[_5380 + 414] = 0
                                            mem[_5380 + 446] = address(sha3(0, stor0, _5383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5186, 0, address(sha3(0, stor0, _5383, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5387 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5388 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5390 = sha3(mem[_5388 + 32 len mem[_5388]])
                                        mem[_5387 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5387 + 105] = Mask(160, 96, stor0)
                                        mem[_5387 + 125] = _5390
                                        mem[_5387 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5387 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5387 + 221] = address(_5166)
                                            mem[_5387 + 241] = address(_5173)
                                            mem[_5387 + 189] = 40
                                            mem[_5387 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5387 + 294] = Mask(160, 96, stor0)
                                            mem[_5387 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5387 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5387 + 261] = 85
                                            mem[64] = _5387 + 378
                                            mem[_5387 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5387 + 382] = _5186
                                            mem[_5387 + 414] = 0
                                            mem[_5387 + 446] = address(sha3(0, stor0, _5390, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5186, 0, address(sha3(0, stor0, _5390, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5387 + 221] = address(_5173)
                                            mem[_5387 + 241] = address(_5166)
                                            mem[_5387 + 189] = 40
                                            mem[_5387 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5387 + 294] = Mask(160, 96, stor0)
                                            mem[_5387 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5387 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5387 + 261] = 85
                                            mem[64] = _5387 + 378
                                            mem[_5387 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5387 + 382] = _5186
                                            mem[_5387 + 414] = 0
                                            mem[_5387 + 446] = address(sha3(0, stor0, _5390, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5186, 0, address(sha3(0, stor0, _5390, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            _5187 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5422 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5423 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5425 = sha3(mem[_5423 + 32 len mem[_5423]])
                                        mem[_5422 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5422 + 105] = Mask(160, 96, stor0)
                                        mem[_5422 + 125] = _5425
                                        mem[_5422 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5422 + 72] = 85
                                        mem[64] = _5422 + 189
                                        mem[_5422 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5422 + 193] = 0
                                        mem[_5422 + 225] = _5187
                                        mem[_5422 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5425, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5425, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5187, msg.sender
                                    else:
                                        _5429 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5166)
                                        _5430 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5432 = sha3(mem[_5430 + 32 len mem[_5430]])
                                        mem[_5429 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5429 + 105] = Mask(160, 96, stor0)
                                        mem[_5429 + 125] = _5432
                                        mem[_5429 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5429 + 72] = 85
                                        mem[64] = _5429 + 189
                                        mem[_5429 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5429 + 193] = 0
                                        mem[_5429 + 225] = _5187
                                        mem[_5429 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5432, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5432, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5187, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5230 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5408 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5230)
                                        _5409 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5411 = sha3(mem[_5409 + 32 len mem[_5409]])
                                        mem[_5408 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5408 + 105] = Mask(160, 96, stor0)
                                        mem[_5408 + 125] = _5411
                                        mem[_5408 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5408 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5408 + 221] = address(_5166)
                                            mem[_5408 + 241] = address(_5173)
                                            mem[_5408 + 189] = 40
                                            mem[_5408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5408 + 294] = Mask(160, 96, stor0)
                                            mem[_5408 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5408 + 261] = 85
                                            mem[64] = _5408 + 378
                                            mem[_5408 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5408 + 382] = 0
                                            mem[_5408 + 414] = _5187
                                            mem[_5408 + 446] = address(sha3(0, stor0, _5411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5187, address(sha3(0, stor0, _5411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5408 + 221] = address(_5173)
                                            mem[_5408 + 241] = address(_5166)
                                            mem[_5408 + 189] = 40
                                            mem[_5408 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5408 + 294] = Mask(160, 96, stor0)
                                            mem[_5408 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5408 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5408 + 261] = 85
                                            mem[64] = _5408 + 378
                                            mem[_5408 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5408 + 382] = 0
                                            mem[_5408 + 414] = _5187
                                            mem[_5408 + 446] = address(sha3(0, stor0, _5411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5187, address(sha3(0, stor0, _5411, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5415 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5416 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5418 = sha3(mem[_5416 + 32 len mem[_5416]])
                                        mem[_5415 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5415 + 105] = Mask(160, 96, stor0)
                                        mem[_5415 + 125] = _5418
                                        mem[_5415 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5415 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5415 + 221] = address(_5166)
                                            mem[_5415 + 241] = address(_5173)
                                            mem[_5415 + 189] = 40
                                            mem[_5415 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5415 + 294] = Mask(160, 96, stor0)
                                            mem[_5415 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5415 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5415 + 261] = 85
                                            mem[64] = _5415 + 378
                                            mem[_5415 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5415 + 382] = 0
                                            mem[_5415 + 414] = _5187
                                            mem[_5415 + 446] = address(sha3(0, stor0, _5418, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5187, address(sha3(0, stor0, _5418, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5415 + 221] = address(_5173)
                                            mem[_5415 + 241] = address(_5166)
                                            mem[_5415 + 189] = 40
                                            mem[_5415 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5415 + 294] = Mask(160, 96, stor0)
                                            mem[_5415 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5415 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5415 + 261] = 85
                                            mem[64] = _5415 + 378
                                            mem[_5415 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5415 + 382] = 0
                                            mem[_5415 + 414] = _5187
                                            mem[_5415 + 446] = address(sha3(0, stor0, _5418, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5187, address(sha3(0, stor0, _5418, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5450 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5451 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5453 = sha3(mem[_5451 + 32 len mem[_5451]])
                                        mem[_5450 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5450 + 105] = Mask(160, 96, stor0)
                                        mem[_5450 + 125] = _5453
                                        mem[_5450 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5450 + 72] = 85
                                        mem[64] = _5450 + 189
                                        mem[_5450 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5450 + 193] = _5187
                                        mem[_5450 + 225] = 0
                                        mem[_5450 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5453, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5187, 0, msg.sender
                                    else:
                                        _5457 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5166)
                                        _5458 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5460 = sha3(mem[_5458 + 32 len mem[_5458]])
                                        mem[_5457 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5457 + 105] = Mask(160, 96, stor0)
                                        mem[_5457 + 125] = _5460
                                        mem[_5457 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5457 + 72] = 85
                                        mem[64] = _5457 + 189
                                        mem[_5457 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5457 + 193] = _5187
                                        mem[_5457 + 225] = 0
                                        mem[_5457 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5460, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5460, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5187, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5231 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5436 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5231)
                                        _5437 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5439 = sha3(mem[_5437 + 32 len mem[_5437]])
                                        mem[_5436 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5436 + 105] = Mask(160, 96, stor0)
                                        mem[_5436 + 125] = _5439
                                        mem[_5436 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5436 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5436 + 221] = address(_5166)
                                            mem[_5436 + 241] = address(_5173)
                                            mem[_5436 + 189] = 40
                                            mem[_5436 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5436 + 294] = Mask(160, 96, stor0)
                                            mem[_5436 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5436 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5436 + 261] = 85
                                            mem[64] = _5436 + 378
                                            mem[_5436 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5436 + 382] = _5187
                                            mem[_5436 + 414] = 0
                                            mem[_5436 + 446] = address(sha3(0, stor0, _5439, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5187, 0, address(sha3(0, stor0, _5439, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5436 + 221] = address(_5173)
                                            mem[_5436 + 241] = address(_5166)
                                            mem[_5436 + 189] = 40
                                            mem[_5436 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5436 + 294] = Mask(160, 96, stor0)
                                            mem[_5436 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5436 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5436 + 261] = 85
                                            mem[64] = _5436 + 378
                                            mem[_5436 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5436 + 382] = _5187
                                            mem[_5436 + 414] = 0
                                            mem[_5436 + 446] = address(sha3(0, stor0, _5439, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5187, 0, address(sha3(0, stor0, _5439, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5443 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5173)
                                        _5444 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5446 = sha3(mem[_5444 + 32 len mem[_5444]])
                                        mem[_5443 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5443 + 105] = Mask(160, 96, stor0)
                                        mem[_5443 + 125] = _5446
                                        mem[_5443 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5443 + 72] = 85
                                        if address(_5166) < address(_5173):
                                            mem[_5443 + 221] = address(_5166)
                                            mem[_5443 + 241] = address(_5173)
                                            mem[_5443 + 189] = 40
                                            mem[_5443 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5443 + 294] = Mask(160, 96, stor0)
                                            mem[_5443 + 314] = sha3(address(_5166), address(_5173))
                                            mem[_5443 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5443 + 261] = 85
                                            mem[64] = _5443 + 378
                                            mem[_5443 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5443 + 382] = _5187
                                            mem[_5443 + 414] = 0
                                            mem[_5443 + 446] = address(sha3(0, stor0, _5446, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5166), address(_5173)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5187, 0, address(sha3(0, stor0, _5446, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5443 + 221] = address(_5173)
                                            mem[_5443 + 241] = address(_5166)
                                            mem[_5443 + 189] = 40
                                            mem[_5443 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5443 + 294] = Mask(160, 96, stor0)
                                            mem[_5443 + 314] = sha3(address(_5173), address(_5166))
                                            mem[_5443 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5443 + 261] = 85
                                            mem[64] = _5443 + 378
                                            mem[_5443 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5443 + 382] = _5187
                                            mem[_5443 + 414] = 0
                                            mem[_5443 + 446] = address(sha3(0, stor0, _5446, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5173), address(_5166)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5187, 0, address(sha3(0, stor0, _5446, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[4693 len 32 * arg1.length]
                require 0 < arg1.length
                mem[(32 * arg1.length) + 160] = arg2
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _2642 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2653 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        _2734 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_2653)
                        _2735 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2737 = sha3(mem[_2735 + 32 len mem[_2735]])
                        mem[_2734 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2734 + 105] = Mask(160, 96, stor0)
                        mem[_2734 + 125] = _2737
                        mem[_2734 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2734 + 72] = 85
                        mem[64] = _2734 + 189
                        if not uint32(ext_code.size(sha3(0, stor0, _2737, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2737, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2737, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2734 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if address(_2642) == address(_2642):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[18 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        _2741 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_2642)
                        _2742 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2744 = sha3(mem[_2742 + 32 len mem[_2742]])
                        mem[_2741 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2741 + 105] = Mask(160, 96, stor0)
                        mem[_2741 + 125] = _2744
                        mem[_2741 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                        mem[_2741 + 72] = 85
                        mem[64] = _2741 + 189
                        if not uint32(ext_code.size(sha3(0, stor0, _2744, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))):
                            require idx < mem[(32 * arg1.length) + 128]
                            require idx + 1 < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                        else:
                            require ext_code.size(address(sha3(0, stor0, _2744, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                            staticcall address(sha3(0, stor0, _2744, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2741 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * arg1.length) + 128]
                            if address(_2653) == address(_2642):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[18 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[50 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[50 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                                    require idx + 1 < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        require idx + 1 < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if ext_call.return_data[18 len 14] <= 0:
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 0
                                        else:
                                            require (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg1.length) + 160] = 997 * mem[(32 * idx) + (32 * arg1.length) + 160] * ext_call.return_data[18 len 14] / (997 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    idx = idx + 1
                    continue 
                require mem[(32 * arg1.length) + 128] - 1 < mem[(32 * arg1.length) + 128]
                if mem[(32 * mem[(32 * arg1.length) + 128] - 1) + (32 * arg1.length) + 160] < arg3:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                require 0 < mem[96]
                _2680 = mem[128]
                require 0 < mem[96]
                _2684 = mem[128]
                require 1 < mem[96]
                _2703 = mem[160]
                if mem[140 len 20] < mem[172 len 20]:
                    _2778 = mem[64]
                    mem[mem[64] + 32] = address(mem[128])
                    mem[mem[64] + 52] = address(_2703)
                    _2779 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2781 = sha3(mem[_2779 + 32 len mem[_2779]])
                    mem[_2778 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2778 + 105] = Mask(160, 96, stor0)
                    mem[_2778 + 125] = _2781
                    mem[_2778 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2778 + 72] = 85
                    mem[64] = _2778 + 189
                    require 0 < mem[(32 * arg1.length) + 128]
                    _3254 = mem[(32 * arg1.length) + 160]
                    mem[_2778 + 193] = msg.sender
                    mem[_2778 + 225] = address(sha3(0, stor0, _2781, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    mem[_2778 + 257] = _3254
                    require ext_code.size(address(_2680))
                    call address(_2680).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(sha3(0, stor0, _2781, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), _3254
                    mem[_2778 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5158 = mem[96]
                    idx = 0
                    while idx < _5158 - 1:
                        require idx < mem[96]
                        _5168 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[96]
                        _5174 = mem[(32 * idx + 1) + 128]
                        require idx + 1 < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            _5188 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5478 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5479 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5481 = sha3(mem[_5479 + 32 len mem[_5479]])
                                        mem[_5478 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5478 + 105] = Mask(160, 96, stor0)
                                        mem[_5478 + 125] = _5481
                                        mem[_5478 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5478 + 72] = 85
                                        mem[64] = _5478 + 189
                                        mem[_5478 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5478 + 193] = 0
                                        mem[_5478 + 225] = _5188
                                        mem[_5478 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5481, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5481, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5188, msg.sender
                                    else:
                                        _5485 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5168)
                                        _5486 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5488 = sha3(mem[_5486 + 32 len mem[_5486]])
                                        mem[_5485 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5485 + 105] = Mask(160, 96, stor0)
                                        mem[_5485 + 125] = _5488
                                        mem[_5485 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5485 + 72] = 85
                                        mem[64] = _5485 + 189
                                        mem[_5485 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5485 + 193] = 0
                                        mem[_5485 + 225] = _5188
                                        mem[_5485 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5488, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5488, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5188, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5232 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5464 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5232)
                                        _5465 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5467 = sha3(mem[_5465 + 32 len mem[_5465]])
                                        mem[_5464 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5464 + 105] = Mask(160, 96, stor0)
                                        mem[_5464 + 125] = _5467
                                        mem[_5464 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5464 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5464 + 221] = address(_5168)
                                            mem[_5464 + 241] = address(_5174)
                                            mem[_5464 + 189] = 40
                                            mem[_5464 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5464 + 294] = Mask(160, 96, stor0)
                                            mem[_5464 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5464 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5464 + 261] = 85
                                            mem[64] = _5464 + 378
                                            mem[_5464 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5464 + 382] = 0
                                            mem[_5464 + 414] = _5188
                                            mem[_5464 + 446] = address(sha3(0, stor0, _5467, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5188, address(sha3(0, stor0, _5467, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5464 + 221] = address(_5174)
                                            mem[_5464 + 241] = address(_5168)
                                            mem[_5464 + 189] = 40
                                            mem[_5464 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5464 + 294] = Mask(160, 96, stor0)
                                            mem[_5464 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5464 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5464 + 261] = 85
                                            mem[64] = _5464 + 378
                                            mem[_5464 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5464 + 382] = 0
                                            mem[_5464 + 414] = _5188
                                            mem[_5464 + 446] = address(sha3(0, stor0, _5467, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5188, address(sha3(0, stor0, _5467, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5471 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5472 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5474 = sha3(mem[_5472 + 32 len mem[_5472]])
                                        mem[_5471 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5471 + 105] = Mask(160, 96, stor0)
                                        mem[_5471 + 125] = _5474
                                        mem[_5471 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5471 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5471 + 221] = address(_5168)
                                            mem[_5471 + 241] = address(_5174)
                                            mem[_5471 + 189] = 40
                                            mem[_5471 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5471 + 294] = Mask(160, 96, stor0)
                                            mem[_5471 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5471 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5471 + 261] = 85
                                            mem[64] = _5471 + 378
                                            mem[_5471 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5471 + 382] = 0
                                            mem[_5471 + 414] = _5188
                                            mem[_5471 + 446] = address(sha3(0, stor0, _5474, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5188, address(sha3(0, stor0, _5474, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5471 + 221] = address(_5174)
                                            mem[_5471 + 241] = address(_5168)
                                            mem[_5471 + 189] = 40
                                            mem[_5471 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5471 + 294] = Mask(160, 96, stor0)
                                            mem[_5471 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5471 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5471 + 261] = 85
                                            mem[64] = _5471 + 378
                                            mem[_5471 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5471 + 382] = 0
                                            mem[_5471 + 414] = _5188
                                            mem[_5471 + 446] = address(sha3(0, stor0, _5474, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5188, address(sha3(0, stor0, _5474, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5506 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5507 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5509 = sha3(mem[_5507 + 32 len mem[_5507]])
                                        mem[_5506 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5506 + 105] = Mask(160, 96, stor0)
                                        mem[_5506 + 125] = _5509
                                        mem[_5506 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5506 + 72] = 85
                                        mem[64] = _5506 + 189
                                        mem[_5506 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5506 + 193] = _5188
                                        mem[_5506 + 225] = 0
                                        mem[_5506 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5509, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5509, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5188, 0, msg.sender
                                    else:
                                        _5513 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5168)
                                        _5514 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5516 = sha3(mem[_5514 + 32 len mem[_5514]])
                                        mem[_5513 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5513 + 105] = Mask(160, 96, stor0)
                                        mem[_5513 + 125] = _5516
                                        mem[_5513 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5513 + 72] = 85
                                        mem[64] = _5513 + 189
                                        mem[_5513 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5513 + 193] = _5188
                                        mem[_5513 + 225] = 0
                                        mem[_5513 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5516, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5516, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5188, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5233 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5492 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5233)
                                        _5493 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5495 = sha3(mem[_5493 + 32 len mem[_5493]])
                                        mem[_5492 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5492 + 105] = Mask(160, 96, stor0)
                                        mem[_5492 + 125] = _5495
                                        mem[_5492 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5492 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5492 + 221] = address(_5168)
                                            mem[_5492 + 241] = address(_5174)
                                            mem[_5492 + 189] = 40
                                            mem[_5492 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5492 + 294] = Mask(160, 96, stor0)
                                            mem[_5492 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5492 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5492 + 261] = 85
                                            mem[64] = _5492 + 378
                                            mem[_5492 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5492 + 382] = _5188
                                            mem[_5492 + 414] = 0
                                            mem[_5492 + 446] = address(sha3(0, stor0, _5495, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5188, 0, address(sha3(0, stor0, _5495, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5492 + 221] = address(_5174)
                                            mem[_5492 + 241] = address(_5168)
                                            mem[_5492 + 189] = 40
                                            mem[_5492 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5492 + 294] = Mask(160, 96, stor0)
                                            mem[_5492 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5492 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5492 + 261] = 85
                                            mem[64] = _5492 + 378
                                            mem[_5492 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5492 + 382] = _5188
                                            mem[_5492 + 414] = 0
                                            mem[_5492 + 446] = address(sha3(0, stor0, _5495, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5188, 0, address(sha3(0, stor0, _5495, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5499 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5500 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5502 = sha3(mem[_5500 + 32 len mem[_5500]])
                                        mem[_5499 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5499 + 105] = Mask(160, 96, stor0)
                                        mem[_5499 + 125] = _5502
                                        mem[_5499 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5499 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5499 + 221] = address(_5168)
                                            mem[_5499 + 241] = address(_5174)
                                            mem[_5499 + 189] = 40
                                            mem[_5499 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5499 + 294] = Mask(160, 96, stor0)
                                            mem[_5499 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5499 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5499 + 261] = 85
                                            mem[64] = _5499 + 378
                                            mem[_5499 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5499 + 382] = _5188
                                            mem[_5499 + 414] = 0
                                            mem[_5499 + 446] = address(sha3(0, stor0, _5502, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5188, 0, address(sha3(0, stor0, _5502, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5499 + 221] = address(_5174)
                                            mem[_5499 + 241] = address(_5168)
                                            mem[_5499 + 189] = 40
                                            mem[_5499 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5499 + 294] = Mask(160, 96, stor0)
                                            mem[_5499 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5499 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5499 + 261] = 85
                                            mem[64] = _5499 + 378
                                            mem[_5499 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5499 + 382] = _5188
                                            mem[_5499 + 414] = 0
                                            mem[_5499 + 446] = address(sha3(0, stor0, _5502, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5188, 0, address(sha3(0, stor0, _5502, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            _5189 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5534 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5535 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5537 = sha3(mem[_5535 + 32 len mem[_5535]])
                                        mem[_5534 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5534 + 105] = Mask(160, 96, stor0)
                                        mem[_5534 + 125] = _5537
                                        mem[_5534 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5534 + 72] = 85
                                        mem[64] = _5534 + 189
                                        mem[_5534 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5534 + 193] = 0
                                        mem[_5534 + 225] = _5189
                                        mem[_5534 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5537, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5537, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5189, msg.sender
                                    else:
                                        _5541 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5168)
                                        _5542 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5544 = sha3(mem[_5542 + 32 len mem[_5542]])
                                        mem[_5541 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5541 + 105] = Mask(160, 96, stor0)
                                        mem[_5541 + 125] = _5544
                                        mem[_5541 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5541 + 72] = 85
                                        mem[64] = _5541 + 189
                                        mem[_5541 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5541 + 193] = 0
                                        mem[_5541 + 225] = _5189
                                        mem[_5541 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5544, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5544, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5189, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5234 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5520 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5234)
                                        _5521 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5523 = sha3(mem[_5521 + 32 len mem[_5521]])
                                        mem[_5520 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5520 + 105] = Mask(160, 96, stor0)
                                        mem[_5520 + 125] = _5523
                                        mem[_5520 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5520 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5520 + 221] = address(_5168)
                                            mem[_5520 + 241] = address(_5174)
                                            mem[_5520 + 189] = 40
                                            mem[_5520 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5520 + 294] = Mask(160, 96, stor0)
                                            mem[_5520 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5520 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5520 + 261] = 85
                                            mem[64] = _5520 + 378
                                            mem[_5520 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5520 + 382] = 0
                                            mem[_5520 + 414] = _5189
                                            mem[_5520 + 446] = address(sha3(0, stor0, _5523, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5189, address(sha3(0, stor0, _5523, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5520 + 221] = address(_5174)
                                            mem[_5520 + 241] = address(_5168)
                                            mem[_5520 + 189] = 40
                                            mem[_5520 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5520 + 294] = Mask(160, 96, stor0)
                                            mem[_5520 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5520 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5520 + 261] = 85
                                            mem[64] = _5520 + 378
                                            mem[_5520 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5520 + 382] = 0
                                            mem[_5520 + 414] = _5189
                                            mem[_5520 + 446] = address(sha3(0, stor0, _5523, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5189, address(sha3(0, stor0, _5523, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5527 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5528 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5530 = sha3(mem[_5528 + 32 len mem[_5528]])
                                        mem[_5527 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5527 + 105] = Mask(160, 96, stor0)
                                        mem[_5527 + 125] = _5530
                                        mem[_5527 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5527 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5527 + 221] = address(_5168)
                                            mem[_5527 + 241] = address(_5174)
                                            mem[_5527 + 189] = 40
                                            mem[_5527 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5527 + 294] = Mask(160, 96, stor0)
                                            mem[_5527 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5527 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5527 + 261] = 85
                                            mem[64] = _5527 + 378
                                            mem[_5527 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5527 + 382] = 0
                                            mem[_5527 + 414] = _5189
                                            mem[_5527 + 446] = address(sha3(0, stor0, _5530, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5189, address(sha3(0, stor0, _5530, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5527 + 221] = address(_5174)
                                            mem[_5527 + 241] = address(_5168)
                                            mem[_5527 + 189] = 40
                                            mem[_5527 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5527 + 294] = Mask(160, 96, stor0)
                                            mem[_5527 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5527 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5527 + 261] = 85
                                            mem[64] = _5527 + 378
                                            mem[_5527 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5527 + 382] = 0
                                            mem[_5527 + 414] = _5189
                                            mem[_5527 + 446] = address(sha3(0, stor0, _5530, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5189, address(sha3(0, stor0, _5530, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5562 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5563 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5565 = sha3(mem[_5563 + 32 len mem[_5563]])
                                        mem[_5562 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5562 + 105] = Mask(160, 96, stor0)
                                        mem[_5562 + 125] = _5565
                                        mem[_5562 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5562 + 72] = 85
                                        mem[64] = _5562 + 189
                                        mem[_5562 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5562 + 193] = _5189
                                        mem[_5562 + 225] = 0
                                        mem[_5562 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5565, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5565, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5189, 0, msg.sender
                                    else:
                                        _5569 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5168)
                                        _5570 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5572 = sha3(mem[_5570 + 32 len mem[_5570]])
                                        mem[_5569 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5569 + 105] = Mask(160, 96, stor0)
                                        mem[_5569 + 125] = _5572
                                        mem[_5569 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5569 + 72] = 85
                                        mem[64] = _5569 + 189
                                        mem[_5569 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5569 + 193] = _5189
                                        mem[_5569 + 225] = 0
                                        mem[_5569 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5572, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5572, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5189, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5235 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5548 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5235)
                                        _5549 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5551 = sha3(mem[_5549 + 32 len mem[_5549]])
                                        mem[_5548 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5548 + 105] = Mask(160, 96, stor0)
                                        mem[_5548 + 125] = _5551
                                        mem[_5548 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5548 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5548 + 221] = address(_5168)
                                            mem[_5548 + 241] = address(_5174)
                                            mem[_5548 + 189] = 40
                                            mem[_5548 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5548 + 294] = Mask(160, 96, stor0)
                                            mem[_5548 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5548 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5548 + 261] = 85
                                            mem[64] = _5548 + 378
                                            mem[_5548 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5548 + 382] = _5189
                                            mem[_5548 + 414] = 0
                                            mem[_5548 + 446] = address(sha3(0, stor0, _5551, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5189, 0, address(sha3(0, stor0, _5551, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5548 + 221] = address(_5174)
                                            mem[_5548 + 241] = address(_5168)
                                            mem[_5548 + 189] = 40
                                            mem[_5548 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5548 + 294] = Mask(160, 96, stor0)
                                            mem[_5548 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5548 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5548 + 261] = 85
                                            mem[64] = _5548 + 378
                                            mem[_5548 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5548 + 382] = _5189
                                            mem[_5548 + 414] = 0
                                            mem[_5548 + 446] = address(sha3(0, stor0, _5551, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5189, 0, address(sha3(0, stor0, _5551, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5555 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5174)
                                        _5556 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5558 = sha3(mem[_5556 + 32 len mem[_5556]])
                                        mem[_5555 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5555 + 105] = Mask(160, 96, stor0)
                                        mem[_5555 + 125] = _5558
                                        mem[_5555 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5555 + 72] = 85
                                        if address(_5168) < address(_5174):
                                            mem[_5555 + 221] = address(_5168)
                                            mem[_5555 + 241] = address(_5174)
                                            mem[_5555 + 189] = 40
                                            mem[_5555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5555 + 294] = Mask(160, 96, stor0)
                                            mem[_5555 + 314] = sha3(address(_5168), address(_5174))
                                            mem[_5555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5555 + 261] = 85
                                            mem[64] = _5555 + 378
                                            mem[_5555 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5555 + 382] = _5189
                                            mem[_5555 + 414] = 0
                                            mem[_5555 + 446] = address(sha3(0, stor0, _5558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5168), address(_5174)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5189, 0, address(sha3(0, stor0, _5558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5555 + 221] = address(_5174)
                                            mem[_5555 + 241] = address(_5168)
                                            mem[_5555 + 189] = 40
                                            mem[_5555 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5555 + 294] = Mask(160, 96, stor0)
                                            mem[_5555 + 314] = sha3(address(_5174), address(_5168))
                                            mem[_5555 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5555 + 261] = 85
                                            mem[64] = _5555 + 378
                                            mem[_5555 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5555 + 382] = _5189
                                            mem[_5555 + 414] = 0
                                            mem[_5555 + 446] = address(sha3(0, stor0, _5558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5174), address(_5168)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5189, 0, address(sha3(0, stor0, _5558, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    _2785 = mem[64]
                    mem[mem[64] + 32] = address(mem[160])
                    mem[mem[64] + 52] = address(_2684)
                    _2786 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2788 = sha3(mem[_2786 + 32 len mem[_2786]])
                    mem[_2785 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2785 + 105] = Mask(160, 96, stor0)
                    mem[_2785 + 125] = _2788
                    mem[_2785 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                    mem[_2785 + 72] = 85
                    mem[64] = _2785 + 189
                    require 0 < mem[(32 * arg1.length) + 128]
                    _3257 = mem[(32 * arg1.length) + 160]
                    mem[_2785 + 193] = msg.sender
                    mem[_2785 + 225] = address(sha3(0, stor0, _2788, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                    mem[_2785 + 257] = _3257
                    require ext_code.size(address(_2680))
                    call address(_2680).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(sha3(0, stor0, _2788, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)), _3257
                    mem[_2785 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5159 = mem[96]
                    idx = 0
                    while idx < _5159 - 1:
                        require idx < mem[96]
                        _5170 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[96]
                        _5175 = mem[(32 * idx + 1) + 128]
                        require idx + 1 < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            _5190 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5590 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5591 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5593 = sha3(mem[_5591 + 32 len mem[_5591]])
                                        mem[_5590 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5590 + 105] = Mask(160, 96, stor0)
                                        mem[_5590 + 125] = _5593
                                        mem[_5590 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5590 + 72] = 85
                                        mem[64] = _5590 + 189
                                        mem[_5590 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5590 + 193] = 0
                                        mem[_5590 + 225] = _5190
                                        mem[_5590 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5593, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5593, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5190, msg.sender
                                    else:
                                        _5597 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5170)
                                        _5598 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5600 = sha3(mem[_5598 + 32 len mem[_5598]])
                                        mem[_5597 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5597 + 105] = Mask(160, 96, stor0)
                                        mem[_5597 + 125] = _5600
                                        mem[_5597 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5597 + 72] = 85
                                        mem[64] = _5597 + 189
                                        mem[_5597 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5597 + 193] = 0
                                        mem[_5597 + 225] = _5190
                                        mem[_5597 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5600, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5600, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5190, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5236 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5576 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5236)
                                        _5577 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5579 = sha3(mem[_5577 + 32 len mem[_5577]])
                                        mem[_5576 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5576 + 105] = Mask(160, 96, stor0)
                                        mem[_5576 + 125] = _5579
                                        mem[_5576 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5576 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5576 + 221] = address(_5170)
                                            mem[_5576 + 241] = address(_5175)
                                            mem[_5576 + 189] = 40
                                            mem[_5576 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5576 + 294] = Mask(160, 96, stor0)
                                            mem[_5576 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5576 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5576 + 261] = 85
                                            mem[64] = _5576 + 378
                                            mem[_5576 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5576 + 382] = 0
                                            mem[_5576 + 414] = _5190
                                            mem[_5576 + 446] = address(sha3(0, stor0, _5579, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5190, address(sha3(0, stor0, _5579, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5576 + 221] = address(_5175)
                                            mem[_5576 + 241] = address(_5170)
                                            mem[_5576 + 189] = 40
                                            mem[_5576 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5576 + 294] = Mask(160, 96, stor0)
                                            mem[_5576 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5576 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5576 + 261] = 85
                                            mem[64] = _5576 + 378
                                            mem[_5576 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5576 + 382] = 0
                                            mem[_5576 + 414] = _5190
                                            mem[_5576 + 446] = address(sha3(0, stor0, _5579, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5190, address(sha3(0, stor0, _5579, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5583 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5584 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5586 = sha3(mem[_5584 + 32 len mem[_5584]])
                                        mem[_5583 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5583 + 105] = Mask(160, 96, stor0)
                                        mem[_5583 + 125] = _5586
                                        mem[_5583 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5583 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5583 + 221] = address(_5170)
                                            mem[_5583 + 241] = address(_5175)
                                            mem[_5583 + 189] = 40
                                            mem[_5583 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5583 + 294] = Mask(160, 96, stor0)
                                            mem[_5583 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5583 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5583 + 261] = 85
                                            mem[64] = _5583 + 378
                                            mem[_5583 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5583 + 382] = 0
                                            mem[_5583 + 414] = _5190
                                            mem[_5583 + 446] = address(sha3(0, stor0, _5586, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5190, address(sha3(0, stor0, _5586, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5583 + 221] = address(_5175)
                                            mem[_5583 + 241] = address(_5170)
                                            mem[_5583 + 189] = 40
                                            mem[_5583 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5583 + 294] = Mask(160, 96, stor0)
                                            mem[_5583 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5583 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5583 + 261] = 85
                                            mem[64] = _5583 + 378
                                            mem[_5583 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5583 + 382] = 0
                                            mem[_5583 + 414] = _5190
                                            mem[_5583 + 446] = address(sha3(0, stor0, _5586, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5190, address(sha3(0, stor0, _5586, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5618 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5619 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5621 = sha3(mem[_5619 + 32 len mem[_5619]])
                                        mem[_5618 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5618 + 105] = Mask(160, 96, stor0)
                                        mem[_5618 + 125] = _5621
                                        mem[_5618 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5618 + 72] = 85
                                        mem[64] = _5618 + 189
                                        mem[_5618 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5618 + 193] = _5190
                                        mem[_5618 + 225] = 0
                                        mem[_5618 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5621, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5621, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5190, 0, msg.sender
                                    else:
                                        _5625 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5170)
                                        _5626 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5628 = sha3(mem[_5626 + 32 len mem[_5626]])
                                        mem[_5625 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5625 + 105] = Mask(160, 96, stor0)
                                        mem[_5625 + 125] = _5628
                                        mem[_5625 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5625 + 72] = 85
                                        mem[64] = _5625 + 189
                                        mem[_5625 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5625 + 193] = _5190
                                        mem[_5625 + 225] = 0
                                        mem[_5625 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5628, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5628, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5190, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5237 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5604 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5237)
                                        _5605 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5607 = sha3(mem[_5605 + 32 len mem[_5605]])
                                        mem[_5604 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5604 + 105] = Mask(160, 96, stor0)
                                        mem[_5604 + 125] = _5607
                                        mem[_5604 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5604 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5604 + 221] = address(_5170)
                                            mem[_5604 + 241] = address(_5175)
                                            mem[_5604 + 189] = 40
                                            mem[_5604 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5604 + 294] = Mask(160, 96, stor0)
                                            mem[_5604 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5604 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5604 + 261] = 85
                                            mem[64] = _5604 + 378
                                            mem[_5604 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5604 + 382] = _5190
                                            mem[_5604 + 414] = 0
                                            mem[_5604 + 446] = address(sha3(0, stor0, _5607, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5190, 0, address(sha3(0, stor0, _5607, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5604 + 221] = address(_5175)
                                            mem[_5604 + 241] = address(_5170)
                                            mem[_5604 + 189] = 40
                                            mem[_5604 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5604 + 294] = Mask(160, 96, stor0)
                                            mem[_5604 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5604 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5604 + 261] = 85
                                            mem[64] = _5604 + 378
                                            mem[_5604 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5604 + 382] = _5190
                                            mem[_5604 + 414] = 0
                                            mem[_5604 + 446] = address(sha3(0, stor0, _5607, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5190, 0, address(sha3(0, stor0, _5607, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5611 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5612 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5614 = sha3(mem[_5612 + 32 len mem[_5612]])
                                        mem[_5611 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5611 + 105] = Mask(160, 96, stor0)
                                        mem[_5611 + 125] = _5614
                                        mem[_5611 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5611 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5611 + 221] = address(_5170)
                                            mem[_5611 + 241] = address(_5175)
                                            mem[_5611 + 189] = 40
                                            mem[_5611 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5611 + 294] = Mask(160, 96, stor0)
                                            mem[_5611 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5611 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5611 + 261] = 85
                                            mem[64] = _5611 + 378
                                            mem[_5611 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5611 + 382] = _5190
                                            mem[_5611 + 414] = 0
                                            mem[_5611 + 446] = address(sha3(0, stor0, _5614, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5190, 0, address(sha3(0, stor0, _5614, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5611 + 221] = address(_5175)
                                            mem[_5611 + 241] = address(_5170)
                                            mem[_5611 + 189] = 40
                                            mem[_5611 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5611 + 294] = Mask(160, 96, stor0)
                                            mem[_5611 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5611 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5611 + 261] = 85
                                            mem[64] = _5611 + 378
                                            mem[_5611 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5611 + 382] = _5190
                                            mem[_5611 + 414] = 0
                                            mem[_5611 + 446] = address(sha3(0, stor0, _5614, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5190, 0, address(sha3(0, stor0, _5614, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        else:
                            _5191 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5646 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5647 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5649 = sha3(mem[_5647 + 32 len mem[_5647]])
                                        mem[_5646 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5646 + 105] = Mask(160, 96, stor0)
                                        mem[_5646 + 125] = _5649
                                        mem[_5646 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5646 + 72] = 85
                                        mem[64] = _5646 + 189
                                        mem[_5646 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5646 + 193] = 0
                                        mem[_5646 + 225] = _5191
                                        mem[_5646 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5649, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5649, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5191, msg.sender
                                    else:
                                        _5653 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5170)
                                        _5654 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5656 = sha3(mem[_5654 + 32 len mem[_5654]])
                                        mem[_5653 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5653 + 105] = Mask(160, 96, stor0)
                                        mem[_5653 + 125] = _5656
                                        mem[_5653 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5653 + 72] = 85
                                        mem[64] = _5653 + 189
                                        mem[_5653 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5653 + 193] = 0
                                        mem[_5653 + 225] = _5191
                                        mem[_5653 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5656, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5656, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _5191, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5238 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5632 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5238)
                                        _5633 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5635 = sha3(mem[_5633 + 32 len mem[_5633]])
                                        mem[_5632 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5632 + 105] = Mask(160, 96, stor0)
                                        mem[_5632 + 125] = _5635
                                        mem[_5632 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5632 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5632 + 221] = address(_5170)
                                            mem[_5632 + 241] = address(_5175)
                                            mem[_5632 + 189] = 40
                                            mem[_5632 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5632 + 294] = Mask(160, 96, stor0)
                                            mem[_5632 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5632 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5632 + 261] = 85
                                            mem[64] = _5632 + 378
                                            mem[_5632 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5632 + 382] = 0
                                            mem[_5632 + 414] = _5191
                                            mem[_5632 + 446] = address(sha3(0, stor0, _5635, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5191, address(sha3(0, stor0, _5635, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5632 + 221] = address(_5175)
                                            mem[_5632 + 241] = address(_5170)
                                            mem[_5632 + 189] = 40
                                            mem[_5632 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5632 + 294] = Mask(160, 96, stor0)
                                            mem[_5632 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5632 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5632 + 261] = 85
                                            mem[64] = _5632 + 378
                                            mem[_5632 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5632 + 382] = 0
                                            mem[_5632 + 414] = _5191
                                            mem[_5632 + 446] = address(sha3(0, stor0, _5635, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5191, address(sha3(0, stor0, _5635, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5639 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5640 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5642 = sha3(mem[_5640 + 32 len mem[_5640]])
                                        mem[_5639 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5639 + 105] = Mask(160, 96, stor0)
                                        mem[_5639 + 125] = _5642
                                        mem[_5639 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5639 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5639 + 221] = address(_5170)
                                            mem[_5639 + 241] = address(_5175)
                                            mem[_5639 + 189] = 40
                                            mem[_5639 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5639 + 294] = Mask(160, 96, stor0)
                                            mem[_5639 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5639 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5639 + 261] = 85
                                            mem[64] = _5639 + 378
                                            mem[_5639 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5639 + 382] = 0
                                            mem[_5639 + 414] = _5191
                                            mem[_5639 + 446] = address(sha3(0, stor0, _5642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5191, address(sha3(0, stor0, _5642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5639 + 221] = address(_5175)
                                            mem[_5639 + 241] = address(_5170)
                                            mem[_5639 + 189] = 40
                                            mem[_5639 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5639 + 294] = Mask(160, 96, stor0)
                                            mem[_5639 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5639 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5639 + 261] = 85
                                            mem[64] = _5639 + 378
                                            mem[_5639 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5639 + 382] = 0
                                            mem[_5639 + 414] = _5191
                                            mem[_5639 + 446] = address(sha3(0, stor0, _5642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _5191, address(sha3(0, stor0, _5642, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                            else:
                                if idx >= mem[96] - 2:
                                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                        _5674 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5675 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5677 = sha3(mem[_5675 + 32 len mem[_5675]])
                                        mem[_5674 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5674 + 105] = Mask(160, 96, stor0)
                                        mem[_5674 + 125] = _5677
                                        mem[_5674 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5674 + 72] = 85
                                        mem[64] = _5674 + 189
                                        mem[_5674 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5674 + 193] = _5191
                                        mem[_5674 + 225] = 0
                                        mem[_5674 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5677, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5677, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5191, 0, msg.sender
                                    else:
                                        _5681 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5170)
                                        _5682 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5684 = sha3(mem[_5682 + 32 len mem[_5682]])
                                        mem[_5681 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5681 + 105] = Mask(160, 96, stor0)
                                        mem[_5681 + 125] = _5684
                                        mem[_5681 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5681 + 72] = 85
                                        mem[64] = _5681 + 189
                                        mem[_5681 + 189] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[_5681 + 193] = _5191
                                        mem[_5681 + 225] = 0
                                        mem[_5681 + 257] = msg.sender
                                        require ext_code.size(address(sha3(0, stor0, _5684, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                        call address(sha3(0, stor0, _5684, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _5191, 0, msg.sender
                                else:
                                    require idx + 2 < mem[96]
                                    _5239 = mem[(32 * idx + 2) + 128]
                                    if mem[(32 * idx + 1) + 140 len 20] < mem[(32 * idx + 2) + 140 len 20]:
                                        _5660 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                                        mem[mem[64] + 52] = address(_5239)
                                        _5661 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5663 = sha3(mem[_5661 + 32 len mem[_5661]])
                                        mem[_5660 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5660 + 105] = Mask(160, 96, stor0)
                                        mem[_5660 + 125] = _5663
                                        mem[_5660 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5660 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5660 + 221] = address(_5170)
                                            mem[_5660 + 241] = address(_5175)
                                            mem[_5660 + 189] = 40
                                            mem[_5660 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5660 + 294] = Mask(160, 96, stor0)
                                            mem[_5660 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5660 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5660 + 261] = 85
                                            mem[64] = _5660 + 378
                                            mem[_5660 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5660 + 382] = _5191
                                            mem[_5660 + 414] = 0
                                            mem[_5660 + 446] = address(sha3(0, stor0, _5663, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5191, 0, address(sha3(0, stor0, _5663, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5660 + 221] = address(_5175)
                                            mem[_5660 + 241] = address(_5170)
                                            mem[_5660 + 189] = 40
                                            mem[_5660 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5660 + 294] = Mask(160, 96, stor0)
                                            mem[_5660 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5660 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5660 + 261] = 85
                                            mem[64] = _5660 + 378
                                            mem[_5660 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5660 + 382] = _5191
                                            mem[_5660 + 414] = 0
                                            mem[_5660 + 446] = address(sha3(0, stor0, _5663, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5191, 0, address(sha3(0, stor0, _5663, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                    else:
                                        _5667 = mem[64]
                                        mem[mem[64] + 32] = address(mem[(32 * idx + 2) + 128])
                                        mem[mem[64] + 52] = address(_5175)
                                        _5668 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _5670 = sha3(mem[_5668 + 32 len mem[_5668]])
                                        mem[_5667 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_5667 + 105] = Mask(160, 96, stor0)
                                        mem[_5667 + 125] = _5670
                                        mem[_5667 + 157] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                        mem[_5667 + 72] = 85
                                        if address(_5170) < address(_5175):
                                            mem[_5667 + 221] = address(_5170)
                                            mem[_5667 + 241] = address(_5175)
                                            mem[_5667 + 189] = 40
                                            mem[_5667 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5667 + 294] = Mask(160, 96, stor0)
                                            mem[_5667 + 314] = sha3(address(_5170), address(_5175))
                                            mem[_5667 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5667 + 261] = 85
                                            mem[64] = _5667 + 378
                                            mem[_5667 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5667 + 382] = _5191
                                            mem[_5667 + 414] = 0
                                            mem[_5667 + 446] = address(sha3(0, stor0, _5670, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5170), address(_5175)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5191, 0, address(sha3(0, stor0, _5670, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                        else:
                                            mem[_5667 + 221] = address(_5175)
                                            mem[_5667 + 241] = address(_5170)
                                            mem[_5667 + 189] = 40
                                            mem[_5667 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_5667 + 294] = Mask(160, 96, stor0)
                                            mem[_5667 + 314] = sha3(address(_5175), address(_5170))
                                            mem[_5667 + 346] = 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3
                                            mem[_5667 + 261] = 85
                                            mem[64] = _5667 + 378
                                            mem[_5667 + 378] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[_5667 + 382] = _5191
                                            mem[_5667 + 414] = 0
                                            mem[_5667 + 446] = address(sha3(0, stor0, _5670, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                                            require ext_code.size(address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)))
                                            call address(sha3(0, stor0, sha3(address(_5175), address(_5170)), 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3)).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _5191, 0, address(sha3(0, stor0, _5670, 0xe2e87433120e32c4738a7d8f3271f3d872cbe16241d67537139158d90bac61d3))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
}



}
