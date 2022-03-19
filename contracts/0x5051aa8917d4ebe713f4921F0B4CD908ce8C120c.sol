contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_11897c9a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    mem[(32 * ('cd', 4).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + 132] = cd[36]
    mem[(32 * ('cd', 4).length) + 164] = 64
    mem[(32 * ('cd', 4).length) + 196] = ('cd', 4).length
    idx = 0
    s = 128
    t = (32 * ('cd', 4).length) + 228
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + 132 len (96 * ('cd', 4).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _31 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _32 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 4).length) + _31 + 160
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function sub_8db8bc90(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    idx = 0
    s = 0
    t = 96
    while idx <= ('cd', 4).length:
        if idx == mem[96]:
            _154 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_154 + 32 len 64] = code.data[2318 len 64]
            require 0 < mem[_154]
            mem[_154 + 32] = address(cd[36])
            if idx == mem[96]:
                require 1 < mem[_154]
                mem[_154 + 64] = address(cd[68])
                mem[_154 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_154 + 100] = cd[100]
                mem[_154 + 132] = 64
                mem[_154 + 164] = mem[_154]
                u = 0
                v = _154 + 32
                w = _154 + 196
                while u < mem[_154]:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _154 + (32 * mem[_154]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _235 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _239 = mem[_235]
                require mem[_235] <= test266151307()
                require _235 + mem[_235] + 31 < _235 + return_data.size
                _243 = mem[_235 + mem[_235]]
                require mem[_235 + mem[_235]] <= test266151307()
                require _235 + ceil32(return_data.size) + (32 * mem[_235 + mem[_235]]) + 32 <= test266151307() and (32 * mem[_235 + mem[_235]]) + 32 >= 0
                mem[64] = _235 + ceil32(return_data.size) + (32 * mem[_235 + mem[_235]]) + 32
                mem[_235 + ceil32(return_data.size)] = _243
                require _239 + (32 * _243) + 32 <= return_data.size
                u = 0
                v = _235 + _239 + 32
                w = _235 + ceil32(return_data.size) + 32
                while u < _243:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require _243 - 1 < _243
                if mem[(32 * _243 - 1) + _235 + ceil32(return_data.size) + 32] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = mem[(32 * _243 - 1) + _235 + ceil32(return_data.size) + 32]
                t = _154
                continue 
            require idx < mem[96]
            require 1 < mem[_154]
            mem[_154 + 64] = mem[(32 * idx) + 140 len 20]
            require 2 < mem[_154]
            mem[_154 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_154 + 100] = cd[100]
            mem[_154 + 132] = 64
            mem[_154 + 164] = mem[_154]
            u = 0
            v = _154 + 32
            w = _154 + 196
            while u < mem[_154]:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _154 + (32 * mem[_154]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _238 = mem[_234]
            require mem[_234] <= test266151307()
            require _234 + mem[_234] + 31 < _234 + return_data.size
            _242 = mem[_234 + mem[_234]]
            require mem[_234 + mem[_234]] <= test266151307()
            require _234 + ceil32(return_data.size) + (32 * mem[_234 + mem[_234]]) + 32 <= test266151307() and (32 * mem[_234 + mem[_234]]) + 32 >= 0
            mem[64] = _234 + ceil32(return_data.size) + (32 * mem[_234 + mem[_234]]) + 32
            mem[_234 + ceil32(return_data.size)] = _242
            require _238 + (32 * _242) + 32 <= return_data.size
            u = 0
            v = _234 + _238 + 32
            w = _234 + ceil32(return_data.size) + 32
            while u < _242:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _242 - 1 < _242
            if mem[(32 * _242 - 1) + _234 + ceil32(return_data.size) + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = mem[(32 * _242 - 1) + _234 + ceil32(return_data.size) + 32]
            t = _154
            continue 
        _153 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_153 + 32 len 96] = code.data[2318 len 96]
        require 0 < mem[_153]
        mem[_153 + 32] = address(cd[36])
        if idx == mem[96]:
            require 1 < mem[_153]
            mem[_153 + 64] = address(cd[68])
            mem[_153 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_153 + 132] = cd[100]
            mem[_153 + 164] = 64
            mem[_153 + 196] = mem[_153]
            u = 0
            v = _153 + 32
            w = _153 + 228
            while u < mem[_153]:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _153 + (32 * mem[_153]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _237 = mem[_233]
            require mem[_233] <= test266151307()
            require _233 + mem[_233] + 31 < _233 + return_data.size
            _241 = mem[_233 + mem[_233]]
            require mem[_233 + mem[_233]] <= test266151307()
            require _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32 <= test266151307() and (32 * mem[_233 + mem[_233]]) + 32 >= 0
            mem[64] = _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32
            mem[_233 + ceil32(return_data.size)] = _241
            require _237 + (32 * _241) + 32 <= return_data.size
            u = 0
            v = _233 + _237 + 32
            w = _233 + ceil32(return_data.size) + 32
            while u < _241:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _241 - 1 < _241
            if mem[(32 * _241 - 1) + _233 + ceil32(return_data.size) + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = mem[(32 * _241 - 1) + _233 + ceil32(return_data.size) + 32]
            t = _153
            continue 
        require idx < mem[96]
        require 1 < mem[_153]
        mem[_153 + 64] = mem[(32 * idx) + 140 len 20]
        require 2 < mem[_153]
        mem[_153 + 96] = address(cd[68])
        mem[_153 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_153 + 132] = cd[100]
        mem[_153 + 164] = 64
        mem[_153 + 196] = mem[_153]
        u = 0
        v = _153 + 32
        w = _153 + 228
        while u < mem[_153]:
            mem[w] = mem[v + 12 len 20]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require ext_code.size(stor0)
        call stor0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _153 + (32 * mem[_153]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_232]
        require mem[_232] <= test266151307()
        require _232 + mem[_232] + 31 < _232 + return_data.size
        _240 = mem[_232 + mem[_232]]
        require mem[_232 + mem[_232]] <= test266151307()
        require _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32 <= test266151307() and (32 * mem[_232 + mem[_232]]) + 32 >= 0
        mem[64] = _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32
        mem[_232 + ceil32(return_data.size)] = _240
        require _236 + (32 * _240) + 32 <= return_data.size
        u = 0
        v = _232 + _236 + 32
        w = _232 + ceil32(return_data.size) + 32
        while u < _240:
            require mem[v] == mem[v]
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require _240 - 1 < _240
        if mem[(32 * _240 - 1) + _232 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = mem[(32 * _240 - 1) + _232 + ceil32(return_data.size) + 32]
        t = _153
        continue 
    _152 = mem[64]
    mem[mem[64]] = 32
    _155 = mem[t]
    mem[mem[64] + 32] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 64
    while idx < _155:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len _152 + (32 * _155) + -mem[64] + 64
}



}
