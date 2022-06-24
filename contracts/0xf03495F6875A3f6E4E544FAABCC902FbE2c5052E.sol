contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_beffb0f5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (64 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size - s >= 64
        _71 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_71] = cd[s]
        mem[_71 + 32] = cd[(s + 32)]
        mem[t] = _71
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    if address(cd[4]):
        _140 = mem[96]
        idx = 0
        while idx < _140:
            if idx >= mem[96]:
                revert with 0, 50
            _145 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _151 = mem[mem[(32 * idx) + 128] + 32]
            _154 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_145)
            mem[mem[64] + 100] = _151
            _155 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_155 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_155 + 36 len 28]
            _160 = mem[_155]
            s = 0
            while s < _160:
                mem[s + _154 + 132] = mem[_155 + s + 32]
                _140 = mem[96]
                s = s + 32
                continue 
            if ceil32(_160) <= _160:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _160 + _154 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransferFrom'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, '!safeTransferFrom'
                else:
                    _212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_212] = return_data.size
                    mem[_212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeTransferFrom'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_212 + 32] == bool(mem[_212 + 32])
                        if not mem[_212 + 32]:
                            revert with 0, '!safeTransferFrom'
            else:
                mem[_154 + _160 + 132] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _160 + _154 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransferFrom'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, '!safeTransferFrom'
                else:
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_216] = return_data.size
                    mem[_216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeTransferFrom'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_216 + 32] == bool(mem[_216 + 32])
                        if not mem[_216 + 32]:
                            revert with 0, '!safeTransferFrom'
            if idx == -1:
                revert with 0, 17
            _140 = mem[96]
            idx = idx + 1
            continue 
    else:
        _141 = mem[96]
        idx = 0
        while idx < _141:
            if idx >= mem[96]:
                revert with 0, 50
            _148 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _153 = mem[mem[(32 * idx) + 128] + 32]
            _158 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            s = 0
            while s < mem[_158]:
                mem[s + _158 + 32] = mem[_158 + s + 32]
                _141 = mem[96]
                s = s + 32
                continue 
            if ceil32(mem[_158]) <= mem[_158]:
                call address(_148).mem[mem[64] len 4] with:
                   value _153 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_158] + _158 + -mem[64] + 28]
                if return_data.size:
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_214] = return_data.size
                    mem[_214 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_158 + mem[_158] + 32] = 0
                call address(_148).mem[mem[64] len 4] with:
                   value _153 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_158] + _158 + -mem[64] + 28]
                if return_data.size:
                    _217 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_217] = return_data.size
                    mem[_217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransferETH'
            if idx == -1:
                revert with 0, 17
            _141 = mem[96]
            idx = idx + 1
            continue 
}



}
