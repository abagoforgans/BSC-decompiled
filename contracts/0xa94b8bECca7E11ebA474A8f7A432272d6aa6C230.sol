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
    mem[(32 * ('cd', 4).length) + 164] = cd[36]
    mem[(32 * ('cd', 4).length) + 196] = 64
    mem[(32 * ('cd', 4).length) + 228] = ('cd', 4).length
    idx = 0
    s = 128
    t = (32 * ('cd', 4).length) + 260
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 128] = (32 * ('cd', 4).length) + 100
    mem[(32 * ('cd', 4).length) + 160 len 4] = 1098439236
    mem[(64 * ('cd', 4).length) + 260 len floor32((32 * ('cd', 4).length) + 131)] = 0, cd[36], 64, ('cd', 4).length, mem[(32 * ('cd', 4).length) + 260 len floor32((32 * ('cd', 4).length) + 131) - 100]
    if floor32((32 * ('cd', 4).length) + 131) <= (32 * ('cd', 4).length) + 100:
        call stor0.mem[(64 * ('cd', 4).length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 4).length) + 264 len (162 * ('cd', 4).length) + 96]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * ('cd', 4).length) + 260] = 32
                mem[(64 * ('cd', 4).length) + 292] = ('cd', 4).length
                if 0 >= ('cd', 4).length:
                    return 32, ('cd', 4).length
                mem[(64 * ('cd', 4).length) + 324] = mem[128]
                mem[(64 * ('cd', 4).length) + 356 len 32 * ('cd', 4).length - 1] = mem[160 len 32 * ('cd', 4).length - 1]
                return Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + 324 len (32 * ('cd', 4).length - 1) + 32])
            require ('cd', 4).length >= 32
            require mem[128] <= test266151307()
            require mem[128] + 159 < ('cd', 4).length + 128
            _235 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (64 * ('cd', 4).length) + (32 * mem[mem[128] + 128]) + 292 <= test266151307() and (32 * mem[mem[128] + 128]) + 292 >= 260
            mem[64] = (64 * ('cd', 4).length) + (32 * mem[mem[128] + 128]) + 292
            mem[(64 * ('cd', 4).length) + 260] = mem[mem[128] + 128]
            require mem[128] + (32 * _235) + 160 <= ('cd', 4).length + 128
            idx = 0
            s = mem[128] + 160
            t = (64 * ('cd', 4).length) + 292
            while idx < _235:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 32
            _297 = mem[(64 * ('cd', 4).length) + 260]
            mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + 260]
            mem[mem[64] + 64 len 32 * _297] = mem[(64 * ('cd', 4).length) + 292 len 32 * _297]
            return 32, mem[mem[64] + 32 len (32 * _297) + 32]
        mem[(64 * ('cd', 4).length) + 260] = return_data.size
        mem[(64 * ('cd', 4).length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 261] = 32
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
            if 0 >= ('cd', 4).length:
                return 32, ('cd', 4).length
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = mem[128]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length - 1] = mem[160 len 32 * ('cd', 4).length - 1]
            return Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 325 len (32 * ('cd', 4).length - 1) + 32]), 
        require return_data.size >= 32
        _228 = mem[(64 * ('cd', 4).length) + 292]
        require mem[(64 * ('cd', 4).length) + 292] <= test266151307()
        require (64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 323 < (64 * ('cd', 4).length) + return_data.size + 292
        _236 = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]
        require mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292] <= test266151307()
        require (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293 <= test266151307() and (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293 >= 261
        mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293
        mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 261] = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]
        require _228 + (32 * _236) + 64 <= return_data.size + 32
        idx = 0
        s = (64 * ('cd', 4).length) + _228 + 324
        t = (64 * ('cd', 4).length) + ceil32(return_data.size) + 293
        while idx < _236:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _236
        mem[mem[64] + 64 len 32 * _236] = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 293 len 32 * _236]
        return Array(len=_236, data=mem[mem[64] + 64 len 32 * _236])
    mem[(98 * ('cd', 4).length) + 360] = 0
    call stor0.mem[(64 * ('cd', 4).length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 4).length) + 264 len (162 * ('cd', 4).length) + 96]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * ('cd', 4).length) + 260] = 32
            mem[(64 * ('cd', 4).length) + 292] = ('cd', 4).length
            if 0 >= ('cd', 4).length:
                return 32, ('cd', 4).length
            mem[(64 * ('cd', 4).length) + 324] = mem[128]
            mem[(64 * ('cd', 4).length) + 356 len 32 * ('cd', 4).length - 1] = mem[160 len 32 * ('cd', 4).length - 1]
            return Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + 324 len (32 * ('cd', 4).length - 1) + 32])
        require ('cd', 4).length >= 32
        require mem[128] <= test266151307()
        require mem[128] + 159 < ('cd', 4).length + 128
        _239 = mem[mem[128] + 128]
        require mem[mem[128] + 128] <= test266151307()
        require (64 * ('cd', 4).length) + (32 * mem[mem[128] + 128]) + 292 <= test266151307() and (32 * mem[mem[128] + 128]) + 292 >= 260
        mem[64] = (64 * ('cd', 4).length) + (32 * mem[mem[128] + 128]) + 292
        mem[(64 * ('cd', 4).length) + 260] = mem[mem[128] + 128]
        require mem[128] + (32 * _239) + 160 <= ('cd', 4).length + 128
        idx = 0
        s = mem[128] + 160
        t = (64 * ('cd', 4).length) + 292
        while idx < _239:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64]] = 32
        _299 = mem[(64 * ('cd', 4).length) + 260]
        mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + 260]
        mem[mem[64] + 64 len 32 * _299] = mem[(64 * ('cd', 4).length) + 292 len 32 * _299]
        return 32, mem[mem[64] + 32 len (32 * _299) + 32]
    mem[(64 * ('cd', 4).length) + 260] = return_data.size
    mem[(64 * ('cd', 4).length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 261] = 32
        mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
        if 0 >= ('cd', 4).length:
            return 32, ('cd', 4).length
        mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = mem[128]
        mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length - 1] = mem[160 len 32 * ('cd', 4).length - 1]
        return Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 325 len (32 * ('cd', 4).length - 1) + 32]), 
    require return_data.size >= 32
    _232 = mem[(64 * ('cd', 4).length) + 292]
    require mem[(64 * ('cd', 4).length) + 292] <= test266151307()
    require (64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 323 < (64 * ('cd', 4).length) + return_data.size + 292
    _240 = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]
    require mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292] <= test266151307()
    require (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293 <= test266151307() and (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293 >= 261
    mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]) + 293
    mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 261] = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 292] + 292]
    require _232 + (32 * _240) + 64 <= return_data.size + 32
    idx = 0
    s = (64 * ('cd', 4).length) + _232 + 324
    t = (64 * ('cd', 4).length) + ceil32(return_data.size) + 293
    while idx < _240:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _240
    mem[mem[64] + 64 len 32 * _240] = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 293 len 32 * _240]
    return Array(len=_240, data=mem[mem[64] + 64 len 32 * _240])
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
        _206 = mem[64]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 64
        _208 = mem[96]
        mem[mem[64] + 100] = mem[96]
        if 0 >= mem[96]:
            _211 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_211 + 32] = mem[_211 + 36 len 28] or 0x4178da4400000000000000000000000000000000000000000000000000000000
            _215 = mem[_211]
            t = 0
            while t < _215:
                mem[_206 + t + 132] = mem[_211 + t + 32]
                t = t + 32
                continue 
            if ceil32(_215) <= _215:
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _206 + _215 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    _308 = mem[96]
                    require mem[96] >= 32
                    _312 = mem[128]
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < mem[96] + 128
                    _317 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    _322 = mem[64]
                    require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
                    mem[_322] = mem[mem[128] + 128]
                    require _312 + (32 * _317) + 160 <= _308 + 128
                    t = 0
                    u = _312 + 160
                    v = _322 + 32
                    while t < _317:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require mem[_322] - 1 < mem[_322]
                    if mem[(32 * mem[_322] - 1) + _322 + 32] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_322] - 1) + _322 + 32]
                    continue 
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_304] = return_data.size
                mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                require return_data.size >= 32
                _313 = mem[_304 + 32]
                require mem[_304 + 32] <= test266151307()
                require _304 + mem[_304 + 32] + 63 < _304 + return_data.size + 32
                _318 = mem[_304 + mem[_304 + 32] + 32]
                require mem[_304 + mem[_304 + 32] + 32] <= test266151307()
                _323 = mem[64]
                require mem[64] + (32 * mem[_304 + mem[_304 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_304 + mem[_304 + 32] + 32]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[_304 + mem[_304 + 32] + 32]) + 32
                mem[_323] = _318
                require _313 + (32 * _318) + 64 <= return_data.size + 32
                t = 0
                u = _304 + _313 + 64
                v = _323 + 32
                while t < _318:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require _318 - 1 < _318
                if mem[(32 * _318 - 1) + _323 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * _318 - 1) + _323 + 32]
                continue 
            mem[_206 + _215 + 132] = 0
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _206 + _215 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _310 = mem[96]
                require mem[96] >= 32
                _314 = mem[128]
                require mem[128] <= test266151307()
                require mem[128] + 159 < mem[96] + 128
                _319 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                _326 = mem[64]
                require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
                mem[_326] = mem[mem[128] + 128]
                require _314 + (32 * _319) + 160 <= _310 + 128
                t = 0
                u = _314 + 160
                v = _326 + 32
                while t < _319:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require mem[_326] - 1 < mem[_326]
                if mem[(32 * mem[_326] - 1) + _326 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_326] - 1) + _326 + 32]
                continue 
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_307] = return_data.size
            mem[_307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require return_data.size >= 32
            _315 = mem[_307 + 32]
            require mem[_307 + 32] <= test266151307()
            require _307 + mem[_307 + 32] + 63 < _307 + return_data.size + 32
            _320 = mem[_307 + mem[_307 + 32] + 32]
            require mem[_307 + mem[_307 + 32] + 32] <= test266151307()
            _327 = mem[64]
            require mem[64] + (32 * mem[_307 + mem[_307 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_307 + mem[_307 + 32] + 32]) + 32 >= mem[64]
            mem[64] = mem[64] + (32 * mem[_307 + mem[_307 + 32] + 32]) + 32
            mem[_327] = _320
            require _315 + (32 * _320) + 64 <= return_data.size + 32
            t = 0
            u = _307 + _315 + 64
            v = _327 + 32
            while t < _320:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require _320 - 1 < _320
            if mem[(32 * _320 - 1) + _327 + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * _320 - 1) + _327 + 32]
            continue 
        mem[mem[64] + 132] = address(cd[36])
        t = 1
        u = 160
        v = mem[64] + 164
        while t < _208:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        _300 = mem[64]
        mem[mem[64]] = _206 + (32 * _208 - 1) + -mem[64] + 132
        mem[64] = _206 + (32 * _208 - 1) + 164
        mem[_300 + 32] = mem[_300 + 36 len 28] or 0x4178da4400000000000000000000000000000000000000000000000000000000
        _306 = mem[_300]
        t = 0
        while t < _306:
            mem[_206 + (32 * _208 - 1) + t + 164] = mem[_300 + t + 32]
            t = t + 32
            continue 
        if ceil32(_306) <= _306:
            call stor0.mem[_206 + (32 * _208 - 1) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_206 + (32 * _208 - 1) + 168 len _306 - 4]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                require mem[96] >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < mem[96] + 128
                require mem[mem[128] + 128] <= test266151307()
                require _206 + (32 * _208 - 1) + (32 * mem[mem[128] + 128]) + 196 <= test266151307() and (32 * mem[mem[128] + 128]) + 196 >= 164
                mem[64] = _206 + (32 * _208 - 1) + (32 * mem[mem[128] + 128]) + 196
                mem[_206 + (32 * _208 - 1) + 164] = mem[mem[128] + 128]
                require mem[128] + (32 * mem[mem[128] + 128]) + 160 <= mem[96] + 128
                t = 0
                u = mem[128] + 160
                v = _206 + (32 * _208 - 1) + 196
                while t < mem[mem[128] + 128]:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require mem[_206 + (32 * _208 - 1) + 164] - 1 < mem[_206 + (32 * _208 - 1) + 164]
                if mem[(32 * mem[_206 + (32 * _208 - 1) + 164] - 1) + _206 + (32 * _208 - 1) + 196] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_206 + (32 * _208 - 1) + 164] - 1) + _206 + (32 * _208 - 1) + 196]
                continue 
            mem[64] = _206 + (32 * _208 - 1) + ceil32(return_data.size) + 165
            mem[_206 + (32 * _208 - 1) + 164] = return_data.size
            mem[_206 + (32 * _208 - 1) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require return_data.size >= 32
            _403 = mem[_206 + (32 * _208 - 1) + 196]
            require mem[_206 + (32 * _208 - 1) + 196] <= test266151307()
            require _206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 227 < _206 + (32 * _208 - 1) + return_data.size + 196
            _407 = mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]
            require mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196] <= test266151307()
            require _206 + (32 * _208 - 1) + ceil32(return_data.size) + (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197 <= test266151307() and (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197 >= 165
            mem[64] = _206 + (32 * _208 - 1) + ceil32(return_data.size) + (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197
            mem[_206 + (32 * _208 - 1) + ceil32(return_data.size) + 165] = mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]
            require _403 + (32 * _407) + 64 <= return_data.size + 32
            t = 0
            u = _206 + (32 * _208 - 1) + _403 + 228
            v = _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197
            while t < _407:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require _407 - 1 < _407
            if mem[(32 * _407 - 1) + _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * _407 - 1) + _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197]
            continue 
        mem[_206 + (32 * _208 - 1) + _306 + 164] = 0
        call stor0.mem[_206 + (32 * _208 - 1) + 164 len 4] with:
             gas gas_remaining wei
            args mem[_206 + (32 * _208 - 1) + 168 len _306 - 4]
        if not return_data.size:
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require mem[96] >= 32
            require mem[128] <= test266151307()
            require mem[128] + 159 < mem[96] + 128
            require mem[mem[128] + 128] <= test266151307()
            require _206 + (32 * _208 - 1) + (32 * mem[mem[128] + 128]) + 196 <= test266151307() and (32 * mem[mem[128] + 128]) + 196 >= 164
            mem[64] = _206 + (32 * _208 - 1) + (32 * mem[mem[128] + 128]) + 196
            mem[_206 + (32 * _208 - 1) + 164] = mem[mem[128] + 128]
            require mem[128] + (32 * mem[mem[128] + 128]) + 160 <= mem[96] + 128
            t = 0
            u = mem[128] + 160
            v = _206 + (32 * _208 - 1) + 196
            while t < mem[mem[128] + 128]:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require mem[_206 + (32 * _208 - 1) + 164] - 1 < mem[_206 + (32 * _208 - 1) + 164]
            if mem[(32 * mem[_206 + (32 * _208 - 1) + 164] - 1) + _206 + (32 * _208 - 1) + 196] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_206 + (32 * _208 - 1) + 164] - 1) + _206 + (32 * _208 - 1) + 196]
            continue 
        mem[64] = _206 + (32 * _208 - 1) + ceil32(return_data.size) + 165
        mem[_206 + (32 * _208 - 1) + 164] = return_data.size
        mem[_206 + (32 * _208 - 1) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            idx = idx + 1
            s = s
            continue 
        require return_data.size >= 32
        _405 = mem[_206 + (32 * _208 - 1) + 196]
        require mem[_206 + (32 * _208 - 1) + 196] <= test266151307()
        require _206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 227 < _206 + (32 * _208 - 1) + return_data.size + 196
        _409 = mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]
        require mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196] <= test266151307()
        require _206 + (32 * _208 - 1) + ceil32(return_data.size) + (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197 <= test266151307() and (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197 >= 165
        mem[64] = _206 + (32 * _208 - 1) + ceil32(return_data.size) + (32 * mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]) + 197
        mem[_206 + (32 * _208 - 1) + ceil32(return_data.size) + 165] = mem[_206 + (32 * _208 - 1) + mem[_206 + (32 * _208 - 1) + 196] + 196]
        require _405 + (32 * _409) + 64 <= return_data.size + 32
        t = 0
        u = _206 + (32 * _208 - 1) + _405 + 228
        v = _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197
        while t < _409:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require _409 - 1 < _409
        if mem[(32 * _409 - 1) + _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * _409 - 1) + _206 + (32 * _208 - 1) + ceil32(return_data.size) + 197]
        continue 
    _200 = mem[64]
    mem[mem[64]] = 32
    _205 = mem[96]
    mem[mem[64] + 32] = mem[96]
    if 0 >= mem[96]:
        return 32, mem[96]
    mem[mem[64] + 64] = mem[140 len 20]
    idx = 1
    s = 160
    t = mem[64] + 96
    while idx < _205:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _200 + (32 * _205 - 1) + -mem[64] + 96
}



}
