contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_11897c9a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor0)
    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg2, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        if not arg1.length:
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
        else:
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1848 len 32 * arg1.length]
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = code.data[1848 len floor32(arg1.length)]
        return memory
          from (64 * arg1.length) + 160
           len (161 * arg1.length) + 64
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _35 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]
    _41 = mem[_35 + (32 * arg1.length) + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_35 + (32 * arg1.length) + 128])] = mem[_35 + (32 * arg1.length) + 160 len floor32(mem[_35 + (32 * arg1.length) + 128])]
    mem[(32 * _41) + (32 * arg1.length) + ceil32(return_data.size) + 160] = 32
    mem[(32 * _41) + (32 * arg1.length) + ceil32(return_data.size) + 192] = mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _41) + (32 * arg1.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])]
    return 32, mem[(32 * _41) + (32 * arg1.length) + ceil32(return_data.size) + 192 len (32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128]) + 32], 
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
    s = 0
    t = 96
    u = 96
    while idx <= arg1.length:
        if idx == mem[96]:
            _124 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_124 + 32 len 64] = code.data[1848 len 64]
            require 0 < mem[_124]
            mem[_124 + 32] = arg2
            if idx == mem[96]:
                require 1 < mem[_124]
                mem[_124 + 64] = arg3
                mem[_124 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_124 + 100] = arg4
                mem[_124 + 132] = 64
                mem[_124 + 164] = mem[_124]
                v = 0
                while v < 32 * mem[_124]:
                    mem[_124 + v + 196] = mem[_124 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args arg4, 64, mem[_124 + 164 len (32 * mem[_124]) + 32]
                if not ext_call.success:
                    _263 = mem[_124]
                    mem[_124 + 96] = mem[_124]
                    mem[64] = _124 + (32 * mem[_124]) + 128
                    if _263:
                        mem[_124 + 128 len 32 * _263] = code.data[1848 len 32 * _263]
                    require mem[_124 + 96] - 1 < mem[_124 + 96]
                    if mem[(32 * mem[_124 + 96] - 1) + _124 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_124 + 96] - 1) + _124 + 128]
                    t = _124 + 96
                    u = _124
                    continue 
                mem[_124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _124 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _265 = mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96] <= 4294967296 and mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96]) + 32 <= return_data.size
                mem[_124 + ceil32(return_data.size) + 96] = mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96]
                _282 = mem[_265 + _124 + 96]
                v = 0
                while v < 32 * _282:
                    mem[_124 + ceil32(return_data.size) + v + 128] = mem[_265 + _124 + v + 128]
                    v = v + 32
                    continue 
                mem[64] = (32 * _282) + _124 + ceil32(return_data.size) + 128
            else:
                require idx < mem[96]
                require 1 < mem[_124]
                mem[_124 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_124]
                mem[_124 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_124 + 100] = arg4
                mem[_124 + 132] = 64
                mem[_124 + 164] = mem[_124]
                v = 0
                while v < 32 * mem[_124]:
                    mem[_124 + v + 196] = mem[_124 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args arg4, 64, mem[_124 + 164 len (32 * mem[_124]) + 32]
                if not ext_call.success:
                    _259 = mem[_124]
                    mem[_124 + 96] = mem[_124]
                    mem[64] = _124 + (32 * mem[_124]) + 128
                    if _259:
                        mem[_124 + 128 len 32 * _259] = code.data[1848 len 32 * _259]
                    require mem[_124 + 96] - 1 < mem[_124 + 96]
                    if mem[(32 * mem[_124 + 96] - 1) + _124 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_124 + 96] - 1) + _124 + 128]
                    t = _124 + 96
                    u = _124
                    continue 
                mem[_124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _124 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _261 = mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96] <= 4294967296 and mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96]) + 32 <= return_data.size
                mem[_124 + ceil32(return_data.size) + 96] = mem[mem[_124 + 96 len 4], Mask(224, 32, arg4) >> 32 + _124 + 96]
                _279 = mem[_261 + _124 + 96]
                v = 0
                while v < 32 * _279:
                    mem[_124 + ceil32(return_data.size) + v + 128] = mem[_261 + _124 + v + 128]
                    v = v + 32
                    continue 
                mem[64] = (32 * _279) + _124 + ceil32(return_data.size) + 128
            require mem[_124 + ceil32(return_data.size) + 96] - 1 < mem[_124 + ceil32(return_data.size) + 96]
            if mem[(32 * mem[_124 + ceil32(return_data.size) + 96] - 1) + _124 + ceil32(return_data.size) + 128] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_124 + ceil32(return_data.size) + 96] - 1) + _124 + ceil32(return_data.size) + 128]
            t = _124 + ceil32(return_data.size) + 96
            u = _124
            continue 
        _123 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_123 + 32 len 96] = code.data[1848 len 96]
        require 0 < mem[_123]
        mem[_123 + 32] = arg2
        if idx == mem[96]:
            require 1 < mem[_123]
            mem[_123 + 64] = arg3
            mem[_123 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_123 + 132] = arg4
            mem[_123 + 164] = 64
            mem[_123 + 196] = mem[_123]
            v = 0
            while v < 32 * mem[_123]:
                mem[_123 + v + 228] = mem[_123 + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args arg4, 64, mem[_123 + 196 len (32 * mem[_123]) + 32]
            if not ext_call.success:
                _255 = mem[_123]
                mem[_123 + 128] = mem[_123]
                mem[64] = _123 + (32 * mem[_123]) + 160
                if _255:
                    mem[_123 + 160 len 32 * _255] = code.data[1848 len 32 * _255]
                require mem[_123 + 128] - 1 < mem[_123 + 128]
                if mem[(32 * mem[_123 + 128] - 1) + _123 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_123 + 128] - 1) + _123 + 160]
                t = _123 + 128
                u = _123
                continue 
            mem[_123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _123 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _257 = mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32
            require mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128] <= 4294967296 and mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128]) + 32 <= return_data.size
            mem[_123 + ceil32(return_data.size) + 128] = mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128]
            _276 = mem[_257 + _123 + 128]
            v = 0
            while v < 32 * _276:
                mem[_123 + ceil32(return_data.size) + v + 160] = mem[_257 + _123 + v + 160]
                v = v + 32
                continue 
            mem[64] = (32 * _276) + _123 + ceil32(return_data.size) + 160
        else:
            require idx < mem[96]
            require 1 < mem[_123]
            mem[_123 + 64] = mem[(32 * idx) + 140 len 20]
            require 2 < mem[_123]
            mem[_123 + 96] = arg3
            mem[_123 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_123 + 132] = arg4
            mem[_123 + 164] = 64
            mem[_123 + 196] = mem[_123]
            v = 0
            while v < 32 * mem[_123]:
                mem[_123 + v + 228] = mem[_123 + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args arg4, 64, mem[_123 + 196 len (32 * mem[_123]) + 32]
            if not ext_call.success:
                _251 = mem[_123]
                mem[_123 + 128] = mem[_123]
                mem[64] = _123 + (32 * mem[_123]) + 160
                if _251:
                    mem[_123 + 160 len 32 * _251] = code.data[1848 len 32 * _251]
                require mem[_123 + 128] - 1 < mem[_123 + 128]
                if mem[(32 * mem[_123 + 128] - 1) + _123 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_123 + 128] - 1) + _123 + 160]
                t = _123 + 128
                u = _123
                continue 
            mem[_123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _123 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _253 = mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32
            require mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128] <= 4294967296 and mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128]) + 32 <= return_data.size
            mem[_123 + ceil32(return_data.size) + 128] = mem[mem[_123 + 128 len 4], Mask(224, 32, arg4) >> 32 + _123 + 128]
            _273 = mem[_253 + _123 + 128]
            v = 0
            while v < 32 * _273:
                mem[_123 + ceil32(return_data.size) + v + 160] = mem[_253 + _123 + v + 160]
                v = v + 32
                continue 
            mem[64] = (32 * _273) + _123 + ceil32(return_data.size) + 160
        require mem[_123 + ceil32(return_data.size) + 128] - 1 < mem[_123 + ceil32(return_data.size) + 128]
        if mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160] <= s:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        idx = idx + 1
        s = mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160]
        t = _123 + ceil32(return_data.size) + 128
        u = _123
        continue 
    _120 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[u]
    _122 = mem[u]
    mem[mem[64] + 96 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    mem[mem[64] + 32] = (32 * _122) + 96
    mem[(32 * _122) + _120 + 96] = mem[t]
    _235 = mem[t]
    mem[(32 * _122) + _120 + 128 len floor32(mem[t])] = mem[t + 32 len floor32(mem[t])]
    return memory
      from mem[64]
       len (32 * _235) + (32 * _122) + _120 + -mem[64] + 128
}



}
