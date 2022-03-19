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
        if not ('cd', 4).length:
            mem[(64 * ('cd', 4).length) + 160] = 32
            mem[(64 * ('cd', 4).length) + 192] = 0, Mask(224, 32, cd[36]) >> 32
            mem[(64 * ('cd', 4).length) + 224 len 32 * 0, Mask(224, 32, cd[36]) >> 32] = mem[(32 * ('cd', 4).length) + 160 len 32 * 0, Mask(224, 32, cd[36]) >> 32]
            return memory
              from (64 * ('cd', 4).length) + 160
               len (32 * 0, Mask(224, 32, cd[36]) >> 32) + 64
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = code.data[2361 len 32 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 160] = 32
        mem[(64 * ('cd', 4).length) + 192] = 0, Mask(224, 32, cd[36]) >> 32
        mem[(64 * ('cd', 4).length) + 224 len 32 * 0, Mask(224, 32, cd[36]) >> 32] = mem[(32 * ('cd', 4).length) + 160 len 32 * 0, Mask(224, 32, cd[36]) >> 32]
        return memory
          from (64 * ('cd', 4).length) + 160
           len (97 * ('cd', 4).length) + (32 * 0, Mask(224, 32, cd[36]) >> 32) + 64
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _53 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _56 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = _56
    require _53 + (32 * _56) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 4).length) + _53 + 160
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
    while idx < _56:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _56
    mem[mem[64] + 64 len 32 * _56] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _56]
    return Array(len=_56, data=mem[mem[64] + 64 len 32 * _56])
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
            _218 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_218 + 32 len 64] = code.data[2361 len 64]
            require 0 < mem[_218]
            mem[_218 + 32] = address(cd[36])
            if idx == mem[96]:
                require 1 < mem[_218]
                mem[_218 + 64] = address(cd[68])
                mem[_218 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_218 + 100] = cd[100]
                mem[_218 + 132] = 64
                mem[_218 + 164] = mem[_218]
                u = 0
                v = _218 + 32
                w = _218 + 196
                while u < mem[_218]:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _218 + (32 * mem[_218]) + -mem[64] + 192]
                if not ext_call.success:
                    _338 = mem[_218]
                    _339 = mem[64]
                    mem[mem[64]] = mem[_218]
                    mem[64] = mem[64] + (32 * _338) + 32
                    if _338:
                        mem[_339 + 32 len 32 * _338] = code.data[2361 len 32 * _338]
                    require mem[_339] - 1 < mem[_339]
                    if mem[(32 * mem[_339] - 1) + _339 + 32] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_339] - 1) + _339 + 32]
                    t = _218
                    continue 
                _331 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _343 = mem[_331]
                require mem[_331] <= test266151307()
                require _331 + mem[_331] + 31 < _331 + return_data.size
                _367 = mem[_331 + mem[_331]]
                require mem[_331 + mem[_331]] <= test266151307()
                require _331 + ceil32(return_data.size) + (32 * mem[_331 + mem[_331]]) + 32 <= test266151307() and (32 * mem[_331 + mem[_331]]) + 32 >= 0
                mem[64] = _331 + ceil32(return_data.size) + (32 * mem[_331 + mem[_331]]) + 32
                mem[_331 + ceil32(return_data.size)] = _367
                require _343 + (32 * _367) + 32 <= return_data.size
                u = 0
                v = _331 + _343 + 32
                w = _331 + ceil32(return_data.size) + 32
                while u < _367:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require _367 - 1 < _367
                if mem[(32 * _367 - 1) + _331 + ceil32(return_data.size) + 32] <= _331 + _343 + (32 * _367) + 32:
                    u = _367 + 1
                    v = _331 + _343 + (32 * _367) + 32
                    w = _331 + ceil32(return_data.size) + (32 * _367) + 32
                    continue 
                u = _367 + 1
                v = mem[(32 * _367 - 1) + _331 + ceil32(return_data.size) + 32]
                w = _218
                continue 
            require idx < mem[96]
            require 1 < mem[_218]
            mem[_218 + 64] = mem[(32 * idx) + 140 len 20]
            require 2 < mem[_218]
            mem[_218 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_218 + 100] = cd[100]
            mem[_218 + 132] = 64
            mem[_218 + 164] = mem[_218]
            u = 0
            v = _218 + 32
            w = _218 + 196
            while u < mem[_218]:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _218 + (32 * mem[_218]) + -mem[64] + 192]
            if not ext_call.success:
                _336 = mem[_218]
                _337 = mem[64]
                mem[mem[64]] = mem[_218]
                mem[64] = mem[64] + (32 * _336) + 32
                if _336:
                    mem[_337 + 32 len 32 * _336] = code.data[2361 len 32 * _336]
                require mem[_337] - 1 < mem[_337]
                if mem[(32 * mem[_337] - 1) + _337 + 32] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_337] - 1) + _337 + 32]
                t = _218
                continue 
            _330 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _342 = mem[_330]
            require mem[_330] <= test266151307()
            require _330 + mem[_330] + 31 < _330 + return_data.size
            _363 = mem[_330 + mem[_330]]
            require mem[_330 + mem[_330]] <= test266151307()
            require _330 + ceil32(return_data.size) + (32 * mem[_330 + mem[_330]]) + 32 <= test266151307() and (32 * mem[_330 + mem[_330]]) + 32 >= 0
            mem[64] = _330 + ceil32(return_data.size) + (32 * mem[_330 + mem[_330]]) + 32
            mem[_330 + ceil32(return_data.size)] = _363
            require _342 + (32 * _363) + 32 <= return_data.size
            u = 0
            v = _330 + _342 + 32
            w = _330 + ceil32(return_data.size) + 32
            while u < _363:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _363 - 1 < _363
            if mem[(32 * _363 - 1) + _330 + ceil32(return_data.size) + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = mem[(32 * _363 - 1) + _330 + ceil32(return_data.size) + 32]
            t = _218
            continue 
        _217 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_217 + 32 len 96] = code.data[2361 len 96]
        require 0 < mem[_217]
        mem[_217 + 32] = address(cd[36])
        if idx == mem[96]:
            require 1 < mem[_217]
            mem[_217 + 64] = address(cd[68])
            mem[_217 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_217 + 132] = cd[100]
            mem[_217 + 164] = 64
            mem[_217 + 196] = mem[_217]
            u = 0
            v = _217 + 32
            w = _217 + 228
            while u < mem[_217]:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _217 + (32 * mem[_217]) + -mem[64] + 224]
            if not ext_call.success:
                _334 = mem[_217]
                _335 = mem[64]
                mem[mem[64]] = mem[_217]
                mem[64] = mem[64] + (32 * _334) + 32
                if _334:
                    mem[_335 + 32 len 32 * _334] = code.data[2361 len 32 * _334]
                require mem[_335] - 1 < mem[_335]
                if mem[(32 * mem[_335] - 1) + _335 + 32] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_335] - 1) + _335 + 32]
                t = _217
                continue 
            _329 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _341 = mem[_329]
            require mem[_329] <= test266151307()
            require _329 + mem[_329] + 31 < _329 + return_data.size
            _359 = mem[_329 + mem[_329]]
            require mem[_329 + mem[_329]] <= test266151307()
            require _329 + ceil32(return_data.size) + (32 * mem[_329 + mem[_329]]) + 32 <= test266151307() and (32 * mem[_329 + mem[_329]]) + 32 >= 0
            mem[64] = _329 + ceil32(return_data.size) + (32 * mem[_329 + mem[_329]]) + 32
            mem[_329 + ceil32(return_data.size)] = _359
            require _341 + (32 * _359) + 32 <= return_data.size
            u = 0
            v = _329 + _341 + 32
            w = _329 + ceil32(return_data.size) + 32
            while u < _359:
                require mem[v] == mem[v]
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            require _359 - 1 < _359
            if mem[(32 * _359 - 1) + _329 + ceil32(return_data.size) + 32] <= _329 + _341 + (32 * _359) + 32:
                u = _359 + 1
                v = _329 + _341 + (32 * _359) + 32
                w = _329 + ceil32(return_data.size) + (32 * _359) + 32
                continue 
            u = _359 + 1
            v = mem[(32 * _359 - 1) + _329 + ceil32(return_data.size) + 32]
            w = _217
            continue 
        require idx < mem[96]
        require 1 < mem[_217]
        mem[_217 + 64] = mem[(32 * idx) + 140 len 20]
        require 2 < mem[_217]
        mem[_217 + 96] = address(cd[68])
        mem[_217 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_217 + 132] = cd[100]
        mem[_217 + 164] = 64
        mem[_217 + 196] = mem[_217]
        u = 0
        v = _217 + 32
        w = _217 + 228
        while u < mem[_217]:
            mem[w] = mem[v + 12 len 20]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require ext_code.size(stor0)
        call stor0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _217 + (32 * mem[_217]) + -mem[64] + 224]
        if not ext_call.success:
            _332 = mem[_217]
            _333 = mem[64]
            mem[mem[64]] = mem[_217]
            mem[64] = mem[64] + (32 * _332) + 32
            if _332:
                mem[_333 + 32 len 32 * _332] = code.data[2361 len 32 * _332]
            require mem[_333] - 1 < mem[_333]
            if mem[(32 * mem[_333] - 1) + _333 + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_333] - 1) + _333 + 32]
            t = _217
            continue 
        _328 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _340 = mem[_328]
        require mem[_328] <= test266151307()
        require _328 + mem[_328] + 31 < _328 + return_data.size
        _355 = mem[_328 + mem[_328]]
        require mem[_328 + mem[_328]] <= test266151307()
        require _328 + ceil32(return_data.size) + (32 * mem[_328 + mem[_328]]) + 32 <= test266151307() and (32 * mem[_328 + mem[_328]]) + 32 >= 0
        mem[64] = _328 + ceil32(return_data.size) + (32 * mem[_328 + mem[_328]]) + 32
        mem[_328 + ceil32(return_data.size)] = _355
        require _340 + (32 * _355) + 32 <= return_data.size
        u = 0
        v = _328 + _340 + 32
        w = _328 + ceil32(return_data.size) + 32
        while u < _355:
            require mem[v] == mem[v]
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require _355 - 1 < _355
        if mem[(32 * _355 - 1) + _328 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = mem[(32 * _355 - 1) + _328 + ceil32(return_data.size) + 32]
        t = _217
        continue 
    _216 = mem[64]
    mem[mem[64]] = 32
    _219 = mem[t]
    mem[mem[64] + 32] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 64
    while idx < _219:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len _216 + (32 * _219) + -mem[64] + 64
}



}
