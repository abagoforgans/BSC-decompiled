contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
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
    while idx < ('cd', 4).length:
        require 0 < mem[96]
        mem[128] = address(cd[36])
        require idx < mem[96]
        require 1 < mem[96]
        mem[160] = mem[(32 * idx) + 140 len 20]
        require 2 < mem[96]
        mem[192] = address(cd[68])
        _118 = mem[64]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 64
        _120 = mem[96]
        mem[mem[64] + 100] = mem[96]
        t = 0
        u = 128
        v = mem[64] + 132
        while t < mem[96]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        _167 = mem[64]
        mem[mem[64]] = (32 * mem[96]) + 100
        mem[64] = mem[64] + (32 * _120) + 132
        mem[_167 + 32] = mem[_167 + 36 len 28] or 0x4178da4400000000000000000000000000000000000000000000000000000000
        _170 = mem[_167]
        t = 0
        while t < _170:
            mem[_118 + (32 * _120) + t + 132] = mem[_167 + t + 32]
            t = t + 32
            continue 
        if ceil32(_170) <= _170:
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _118 + (32 * _120) + _170 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _213 = mem[96]
                require mem[96] >= 32
                _217 = mem[128]
                require mem[128] <= test266151307()
                require mem[128] + 159 < mem[96] + 128
                _221 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                _225 = mem[64]
                require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
                mem[_225] = mem[mem[128] + 128]
                require _217 + (32 * _221) + 160 <= _213 + 128
                t = 0
                u = _217 + 160
                v = _225 + 32
                while t < _221:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require mem[_225] - 1 < mem[_225]
                if mem[(32 * mem[_225] - 1) + _225 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_225] - 1) + _225 + 32]
                continue 
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_210] = return_data.size
            mem[_210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require return_data.size >= 32
            _218 = mem[_210 + 32]
            require mem[_210 + 32] <= test266151307()
            require _210 + mem[_210 + 32] + 63 < _210 + return_data.size + 32
            _222 = mem[_210 + mem[_210 + 32] + 32]
            require mem[_210 + mem[_210 + 32] + 32] <= test266151307()
            _226 = mem[64]
            require mem[64] + (32 * mem[_210 + mem[_210 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_210 + mem[_210 + 32] + 32]) + 32 >= mem[64]
            mem[64] = mem[64] + (32 * mem[_210 + mem[_210 + 32] + 32]) + 32
            mem[_226] = _222
            require _218 + (32 * _222) + 64 <= return_data.size + 32
            t = 0
            u = _210 + _218 + 64
            v = _226 + 32
            while t < _222:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require _222 - 1 < _222
            if mem[(32 * _222 - 1) + _226 + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * _222 - 1) + _226 + 32]
            continue 
        mem[_118 + (32 * _120) + _170 + 132] = 0
        call stor0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _118 + (32 * _120) + _170 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            _215 = mem[96]
            require mem[96] >= 32
            _219 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < mem[96] + 128
            _223 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            _227 = mem[64]
            require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
            mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
            mem[_227] = mem[mem[128] + 128]
            require _219 + (32 * _223) + 160 <= _215 + 128
            t = 0
            u = _219 + 160
            v = _227 + 32
            while t < _223:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require mem[_227] - 1 < mem[_227]
            if mem[(32 * mem[_227] - 1) + _227 + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_227] - 1) + _227 + 32]
            continue 
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_212] = return_data.size
        mem[_212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            idx = idx + 1
            s = s
            continue 
        require return_data.size >= 32
        _220 = mem[_212 + 32]
        require mem[_212 + 32] <= test266151307()
        require _212 + mem[_212 + 32] + 63 < _212 + return_data.size + 32
        _224 = mem[_212 + mem[_212 + 32] + 32]
        require mem[_212 + mem[_212 + 32] + 32] <= test266151307()
        _228 = mem[64]
        require mem[64] + (32 * mem[_212 + mem[_212 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_212 + mem[_212 + 32] + 32]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_212 + mem[_212 + 32] + 32]) + 32
        mem[_228] = _224
        require _220 + (32 * _224) + 64 <= return_data.size + 32
        t = 0
        u = _212 + _220 + 64
        v = _228 + 32
        while t < _224:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require _224 - 1 < _224
        if mem[(32 * _224 - 1) + _228 + 32] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * _224 - 1) + _228 + 32]
        continue 
    _112 = mem[64]
    mem[mem[64]] = 32
    _117 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _117:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _112 + (32 * _117) + -mem[64] + 64
}



}
