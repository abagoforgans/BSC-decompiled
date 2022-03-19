contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return ext_call.return_data[0]
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
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2921 len 32 * arg1.length]
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = code.data[2921 len floor32(arg1.length)]
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
            mem[_124 + 32 len 64] = code.data[2921 len 64]
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
                        mem[_124 + 128 len 32 * _263] = code.data[2921 len 32 * _263]
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
                        mem[_124 + 128 len 32 * _259] = code.data[2921 len 32 * _259]
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
        mem[_123 + 32 len 96] = code.data[2921 len 96]
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
                    mem[_123 + 160 len 32 * _255] = code.data[2921 len 32 * _255]
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
                    mem[_123 + 160 len 32 * _251] = code.data[2921 len 32 * _251]
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

function sub_41292edb(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        idx = 0
        s = 0
        t = 96
        u = 96
        while idx <= arg2.length:
            if idx == mem[96]:
                _716 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_716 + 32 len 64] = code.data[2921 len 64]
                require 0 < mem[_716]
                mem[_716 + 32] = arg3
                if idx == mem[96]:
                    require 1 < mem[_716]
                    mem[_716 + 64] = arg4
                    mem[_716 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_716 + 100] = eth.balance(arg1)
                    mem[_716 + 132] = 64
                    mem[_716 + 164] = mem[_716]
                    v = 0
                    while v < 32 * mem[_716]:
                        mem[_716 + v + 196] = mem[_716 + v + 32]
                        v = v + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args eth.balance(arg1), 64, mem[_716 + 164 len (32 * mem[_716]) + 32]
                    if not ext_call.success:
                        _1496 = mem[_716]
                        mem[_716 + 96] = mem[_716]
                        mem[64] = _716 + (32 * mem[_716]) + 128
                        if _1496:
                            mem[_716 + 128 len 32 * _1496] = code.data[2921 len 32 * _1496]
                        require mem[_716 + 96] - 1 < mem[_716 + 96]
                        if mem[(32 * mem[_716 + 96] - 1) + _716 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            u = u
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_716 + 96] - 1) + _716 + 128]
                        t = _716 + 96
                        u = _716
                        continue 
                    mem[_716 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _716 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1498 = mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32
                    require mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 <= 4294967296
                    require mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + 32 <= return_data.size
                    require mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96] <= 4294967296 and mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + (32 * mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96]) + 32 <= return_data.size
                    mem[_716 + ceil32(return_data.size) + 96] = mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96]
                    _1586 = mem[_1498 + _716 + 96]
                    v = 0
                    while v < 32 * _1586:
                        mem[_716 + ceil32(return_data.size) + v + 128] = mem[_1498 + _716 + v + 128]
                        v = v + 32
                        continue 
                    mem[64] = (32 * _1586) + _716 + ceil32(return_data.size) + 128
                else:
                    require idx < mem[96]
                    require 1 < mem[_716]
                    mem[_716 + 64] = mem[(32 * idx) + 140 len 20]
                    require 2 < mem[_716]
                    mem[_716 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_716 + 100] = eth.balance(arg1)
                    mem[_716 + 132] = 64
                    mem[_716 + 164] = mem[_716]
                    v = 0
                    while v < 32 * mem[_716]:
                        mem[_716 + v + 196] = mem[_716 + v + 32]
                        v = v + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args eth.balance(arg1), 64, mem[_716 + 164 len (32 * mem[_716]) + 32]
                    if not ext_call.success:
                        _1492 = mem[_716]
                        mem[_716 + 96] = mem[_716]
                        mem[64] = _716 + (32 * mem[_716]) + 128
                        if _1492:
                            mem[_716 + 128 len 32 * _1492] = code.data[2921 len 32 * _1492]
                        require mem[_716 + 96] - 1 < mem[_716 + 96]
                        if mem[(32 * mem[_716 + 96] - 1) + _716 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            u = u
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_716 + 96] - 1) + _716 + 128]
                        t = _716 + 96
                        u = _716
                        continue 
                    mem[_716 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _716 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1494 = mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32
                    require mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 <= 4294967296
                    require mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + 32 <= return_data.size
                    require mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96] <= 4294967296 and mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + (32 * mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96]) + 32 <= return_data.size
                    mem[_716 + ceil32(return_data.size) + 96] = mem[mem[_716 + 96 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _716 + 96]
                    _1583 = mem[_1494 + _716 + 96]
                    v = 0
                    while v < 32 * _1583:
                        mem[_716 + ceil32(return_data.size) + v + 128] = mem[_1494 + _716 + v + 128]
                        v = v + 32
                        continue 
                    mem[64] = (32 * _1583) + _716 + ceil32(return_data.size) + 128
                require mem[_716 + ceil32(return_data.size) + 96] - 1 < mem[_716 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_716 + ceil32(return_data.size) + 96] - 1) + _716 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_716 + ceil32(return_data.size) + 96] - 1) + _716 + ceil32(return_data.size) + 128]
                t = _716 + ceil32(return_data.size) + 96
                u = _716
                continue 
            _715 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_715 + 32 len 96] = code.data[2921 len 96]
            require 0 < mem[_715]
            mem[_715 + 32] = arg3
            if idx == mem[96]:
                require 1 < mem[_715]
                mem[_715 + 64] = arg4
                mem[_715 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_715 + 132] = eth.balance(arg1)
                mem[_715 + 164] = 64
                mem[_715 + 196] = mem[_715]
                v = 0
                while v < 32 * mem[_715]:
                    mem[_715 + v + 228] = mem[_715 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args eth.balance(arg1), 64, mem[_715 + 196 len (32 * mem[_715]) + 32]
                if not ext_call.success:
                    _1488 = mem[_715]
                    mem[_715 + 128] = mem[_715]
                    mem[64] = _715 + (32 * mem[_715]) + 160
                    if _1488:
                        mem[_715 + 160 len 32 * _1488] = code.data[2921 len 32 * _1488]
                    require mem[_715 + 128] - 1 < mem[_715 + 128]
                    if mem[(32 * mem[_715 + 128] - 1) + _715 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_715 + 128] - 1) + _715 + 160]
                    t = _715 + 128
                    u = _715
                    continue 
                mem[_715 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _715 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1490 = mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32
                require mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 <= 4294967296
                require mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + 32 <= return_data.size
                require mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128] <= 4294967296 and mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + (32 * mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128]) + 32 <= return_data.size
                mem[_715 + ceil32(return_data.size) + 128] = mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128]
                _1580 = mem[_1490 + _715 + 128]
                v = 0
                while v < 32 * _1580:
                    mem[_715 + ceil32(return_data.size) + v + 160] = mem[_1490 + _715 + v + 160]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1580) + _715 + ceil32(return_data.size) + 160
            else:
                require idx < mem[96]
                require 1 < mem[_715]
                mem[_715 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_715]
                mem[_715 + 96] = arg4
                mem[_715 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_715 + 132] = eth.balance(arg1)
                mem[_715 + 164] = 64
                mem[_715 + 196] = mem[_715]
                v = 0
                while v < 32 * mem[_715]:
                    mem[_715 + v + 228] = mem[_715 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args eth.balance(arg1), 64, mem[_715 + 196 len (32 * mem[_715]) + 32]
                if not ext_call.success:
                    _1484 = mem[_715]
                    mem[_715 + 128] = mem[_715]
                    mem[64] = _715 + (32 * mem[_715]) + 160
                    if _1484:
                        mem[_715 + 160 len 32 * _1484] = code.data[2921 len 32 * _1484]
                    require mem[_715 + 128] - 1 < mem[_715 + 128]
                    if mem[(32 * mem[_715 + 128] - 1) + _715 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_715 + 128] - 1) + _715 + 160]
                    t = _715 + 128
                    u = _715
                    continue 
                mem[_715 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _715 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1486 = mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32
                require mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 <= 4294967296
                require mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + 32 <= return_data.size
                require mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128] <= 4294967296 and mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + (32 * mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128]) + 32 <= return_data.size
                mem[_715 + ceil32(return_data.size) + 128] = mem[mem[_715 + 128 len 4], Mask(224, 32, eth.balance(arg1)) >> 32 + _715 + 128]
                _1577 = mem[_1486 + _715 + 128]
                v = 0
                while v < 32 * _1577:
                    mem[_715 + ceil32(return_data.size) + v + 160] = mem[_1486 + _715 + v + 160]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1577) + _715 + ceil32(return_data.size) + 160
            require mem[_715 + ceil32(return_data.size) + 128] - 1 < mem[_715 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_715 + ceil32(return_data.size) + 128] - 1) + _715 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_715 + ceil32(return_data.size) + 128] - 1) + _715 + ceil32(return_data.size) + 160]
            t = _715 + ceil32(return_data.size) + 128
            u = _715
            continue 
        require mem[t] - 1 < mem[t]
        _714 = mem[(32 * mem[t] - 1) + t + 32]
        _1388 = mem[96]
        idx = 0
        s = 0
        t = 96
        v = 96
        while idx <= _1388:
            if idx == mem[96]:
                _1438 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1438 + 32 len 64] = code.data[2921 len 64]
                require 0 < mem[_1438]
                mem[_1438 + 32] = arg4
                if idx == mem[96]:
                    require 1 < mem[_1438]
                    mem[_1438 + 64] = arg3
                    mem[_1438 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1438 + 100] = _714
                    mem[_1438 + 132] = 64
                    mem[_1438 + 164] = mem[_1438]
                    u = 0
                    while u < 32 * mem[_1438]:
                        mem[_1438 + u + 196] = mem[_1438 + u + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args _714, 64, mem[_1438 + 164 len (32 * mem[_1438]) + 32]
                    if not ext_call.success:
                        _2078 = mem[_1438]
                        mem[_1438 + 96] = mem[_1438]
                        mem[64] = _1438 + (32 * mem[_1438]) + 128
                        if _2078:
                            mem[_1438 + 128 len 32 * _2078] = code.data[2921 len 32 * _2078]
                        require mem[_1438 + 96] - 1 < mem[_1438 + 96]
                        if mem[(32 * mem[_1438 + 96] - 1) + _1438 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            v = v
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_1438 + 96] - 1) + _1438 + 128]
                        t = _1438 + 96
                        v = _1438
                        continue 
                    mem[_1438 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1438 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2080 = mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32
                    require mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 <= 4294967296
                    require mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + 32 <= return_data.size
                    require mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96] <= 4294967296 and mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + (32 * mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96]) + 32 <= return_data.size
                    mem[_1438 + ceil32(return_data.size) + 96] = mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96]
                    _2165 = mem[_2080 + _1438 + 96]
                    u = 0
                    while u < 32 * _2165:
                        mem[_1438 + ceil32(return_data.size) + u + 128] = mem[_2080 + _1438 + u + 128]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _2165) + _1438 + ceil32(return_data.size) + 128
                else:
                    require idx < mem[96]
                    require 1 < mem[_1438]
                    mem[_1438 + 64] = mem[(32 * idx) + 140 len 20]
                    require 2 < mem[_1438]
                    mem[_1438 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1438 + 100] = _714
                    mem[_1438 + 132] = 64
                    mem[_1438 + 164] = mem[_1438]
                    u = 0
                    while u < 32 * mem[_1438]:
                        mem[_1438 + u + 196] = mem[_1438 + u + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args _714, 64, mem[_1438 + 164 len (32 * mem[_1438]) + 32]
                    if not ext_call.success:
                        _2074 = mem[_1438]
                        mem[_1438 + 96] = mem[_1438]
                        mem[64] = _1438 + (32 * mem[_1438]) + 128
                        if _2074:
                            mem[_1438 + 128 len 32 * _2074] = code.data[2921 len 32 * _2074]
                        require mem[_1438 + 96] - 1 < mem[_1438 + 96]
                        if mem[(32 * mem[_1438 + 96] - 1) + _1438 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            v = v
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_1438 + 96] - 1) + _1438 + 128]
                        t = _1438 + 96
                        v = _1438
                        continue 
                    mem[_1438 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1438 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2076 = mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32
                    require mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 <= 4294967296
                    require mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + 32 <= return_data.size
                    require mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96] <= 4294967296 and mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + (32 * mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96]) + 32 <= return_data.size
                    mem[_1438 + ceil32(return_data.size) + 96] = mem[mem[_1438 + 96 len 4], Mask(224, 32, _714) >> 32 + _1438 + 96]
                    _2162 = mem[_2076 + _1438 + 96]
                    u = 0
                    while u < 32 * _2162:
                        mem[_1438 + ceil32(return_data.size) + u + 128] = mem[_2076 + _1438 + u + 128]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _2162) + _1438 + ceil32(return_data.size) + 128
                require mem[_1438 + ceil32(return_data.size) + 96] - 1 < mem[_1438 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1438 + ceil32(return_data.size) + 96] - 1) + _1438 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    v = v
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1438 + ceil32(return_data.size) + 96] - 1) + _1438 + ceil32(return_data.size) + 128]
                t = _1438 + ceil32(return_data.size) + 96
                v = _1438
                continue 
            _1437 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_1437 + 32 len 96] = code.data[2921 len 96]
            require 0 < mem[_1437]
            mem[_1437 + 32] = arg4
            if idx == mem[96]:
                require 1 < mem[_1437]
                mem[_1437 + 64] = arg3
                mem[_1437 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1437 + 132] = _714
                mem[_1437 + 164] = 64
                mem[_1437 + 196] = mem[_1437]
                u = 0
                while u < 32 * mem[_1437]:
                    mem[_1437 + u + 228] = mem[_1437 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _714, 64, mem[_1437 + 196 len (32 * mem[_1437]) + 32]
                if not ext_call.success:
                    _2070 = mem[_1437]
                    mem[_1437 + 128] = mem[_1437]
                    mem[64] = _1437 + (32 * mem[_1437]) + 160
                    if _2070:
                        mem[_1437 + 160 len 32 * _2070] = code.data[2921 len 32 * _2070]
                    require mem[_1437 + 128] - 1 < mem[_1437 + 128]
                    if mem[(32 * mem[_1437 + 128] - 1) + _1437 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1437 + 128] - 1) + _1437 + 160]
                    t = _1437 + 128
                    v = _1437
                    continue 
                mem[_1437 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1437 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2072 = mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32
                require mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 <= 4294967296
                require mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + 32 <= return_data.size
                require mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128] <= 4294967296 and mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + (32 * mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128]) + 32 <= return_data.size
                mem[_1437 + ceil32(return_data.size) + 128] = mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128]
                _2159 = mem[_2072 + _1437 + 128]
                u = 0
                while u < 32 * _2159:
                    mem[_1437 + ceil32(return_data.size) + u + 160] = mem[_2072 + _1437 + u + 160]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2159) + _1437 + ceil32(return_data.size) + 160
            else:
                require idx < mem[96]
                require 1 < mem[_1437]
                mem[_1437 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_1437]
                mem[_1437 + 96] = arg3
                mem[_1437 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1437 + 132] = _714
                mem[_1437 + 164] = 64
                mem[_1437 + 196] = mem[_1437]
                u = 0
                while u < 32 * mem[_1437]:
                    mem[_1437 + u + 228] = mem[_1437 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _714, 64, mem[_1437 + 196 len (32 * mem[_1437]) + 32]
                if not ext_call.success:
                    _2066 = mem[_1437]
                    mem[_1437 + 128] = mem[_1437]
                    mem[64] = _1437 + (32 * mem[_1437]) + 160
                    if _2066:
                        mem[_1437 + 160 len 32 * _2066] = code.data[2921 len 32 * _2066]
                    require mem[_1437 + 128] - 1 < mem[_1437 + 128]
                    if mem[(32 * mem[_1437 + 128] - 1) + _1437 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1437 + 128] - 1) + _1437 + 160]
                    t = _1437 + 128
                    v = _1437
                    continue 
                mem[_1437 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1437 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2068 = mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32
                require mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 <= 4294967296
                require mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + 32 <= return_data.size
                require mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128] <= 4294967296 and mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + (32 * mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128]) + 32 <= return_data.size
                mem[_1437 + ceil32(return_data.size) + 128] = mem[mem[_1437 + 128 len 4], Mask(224, 32, _714) >> 32 + _1437 + 128]
                _2156 = mem[_2068 + _1437 + 128]
                u = 0
                while u < 32 * _2156:
                    mem[_1437 + ceil32(return_data.size) + u + 160] = mem[_2068 + _1437 + u + 160]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2156) + _1437 + ceil32(return_data.size) + 160
            require mem[_1437 + ceil32(return_data.size) + 128] - 1 < mem[_1437 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_1437 + ceil32(return_data.size) + 128] - 1) + _1437 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                t = t
                v = v
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_1437 + ceil32(return_data.size) + 128] - 1) + _1437 + ceil32(return_data.size) + 160]
            t = _1437 + ceil32(return_data.size) + 128
            v = _1437
            continue 
        require mem[t] - 1 < mem[t]
        _1436 = mem[(32 * mem[t] - 1) + t + 32]
        _1481 = mem[64]
        mem[mem[64] + 64] = eth.balance(arg1)
        mem[mem[64] + 96] = eth.balance(arg1)
        mem[mem[64] + 128] = _1436
        mem[mem[64]] = 160
        mem[_1481 + 160] = mem[u]
        _1483 = mem[u]
        mem[_1481 + 192 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
        mem[_1481 + 32] = (32 * _1483) + 192
        mem[(32 * _1483) + _1481 + 192] = mem[v]
        _2002 = mem[v]
        mem[(32 * _1483) + _1481 + 224 len floor32(mem[v])] = mem[v + 32 len floor32(mem[v])]
        return memory
          from mem[64]
           len (32 * _2002) + (32 * _1483) + _1481 + -mem[64] + 224
    mem[(32 * arg2.length) + 132] = arg1
    require ext_code.size(arg3)
    call arg3.balanceOf(address rg1) with:
         gas gas_remaining wei
        args arg1
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        idx = 0
        s = 0
        t = 96
        u = 96
        while idx <= arg2.length:
            if idx == mem[96]:
                _710 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_710 + 32 len 64] = code.data[2921 len 64]
                require 0 < mem[_710]
                mem[_710 + 32] = arg3
                if idx == mem[96]:
                    require 1 < mem[_710]
                    mem[_710 + 64] = arg4
                    mem[_710 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_710 + 100] = 0
                    mem[_710 + 132] = 64
                    mem[_710 + 164] = mem[_710]
                    v = 0
                    while v < 32 * mem[_710]:
                        mem[_710 + v + 196] = mem[_710 + v + 32]
                        v = v + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args 0, 64, mem[_710 + 164 len (32 * mem[_710]) + 32]
                    if not ext_call.success:
                        _1458 = mem[_710]
                        mem[_710 + 96] = mem[_710]
                        mem[64] = _710 + (32 * mem[_710]) + 128
                        if _1458:
                            mem[_710 + 128 len 32 * _1458] = code.data[2921 len 32 * _1458]
                        require mem[_710 + 96] - 1 < mem[_710 + 96]
                        if mem[(32 * mem[_710 + 96] - 1) + _710 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            u = u
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_710 + 96] - 1) + _710 + 128]
                        t = _710 + 96
                        u = _710
                        continue 
                    mem[_710 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _710 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1460 = mem[_710 + 96 len 4], 0
                    require mem[_710 + 96 len 4], 0 <= 4294967296
                    require mem[_710 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[_710 + 96 len 4], 0 + _710 + 96] <= 4294967296 and mem[_710 + 96 len 4], 0 + (32 * mem[mem[_710 + 96 len 4], 0 + _710 + 96]) + 32 <= return_data.size
                    mem[_710 + ceil32(return_data.size) + 96] = mem[mem[_710 + 96 len 4], 0 + _710 + 96]
                    _1554 = mem[_1460 + _710 + 96]
                    v = 0
                    while v < 32 * _1554:
                        mem[_710 + ceil32(return_data.size) + v + 128] = mem[_1460 + _710 + v + 128]
                        v = v + 32
                        continue 
                    mem[64] = (32 * _1554) + _710 + ceil32(return_data.size) + 128
                else:
                    require idx < mem[96]
                    require 1 < mem[_710]
                    mem[_710 + 64] = mem[(32 * idx) + 140 len 20]
                    require 2 < mem[_710]
                    mem[_710 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_710 + 100] = 0
                    mem[_710 + 132] = 64
                    mem[_710 + 164] = mem[_710]
                    v = 0
                    while v < 32 * mem[_710]:
                        mem[_710 + v + 196] = mem[_710 + v + 32]
                        v = v + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args 0, 64, mem[_710 + 164 len (32 * mem[_710]) + 32]
                    if not ext_call.success:
                        _1454 = mem[_710]
                        mem[_710 + 96] = mem[_710]
                        mem[64] = _710 + (32 * mem[_710]) + 128
                        if _1454:
                            mem[_710 + 128 len 32 * _1454] = code.data[2921 len 32 * _1454]
                        require mem[_710 + 96] - 1 < mem[_710 + 96]
                        if mem[(32 * mem[_710 + 96] - 1) + _710 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            u = u
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_710 + 96] - 1) + _710 + 128]
                        t = _710 + 96
                        u = _710
                        continue 
                    mem[_710 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _710 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1456 = mem[_710 + 96 len 4], 0
                    require mem[_710 + 96 len 4], 0 <= 4294967296
                    require mem[_710 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[_710 + 96 len 4], 0 + _710 + 96] <= 4294967296 and mem[_710 + 96 len 4], 0 + (32 * mem[mem[_710 + 96 len 4], 0 + _710 + 96]) + 32 <= return_data.size
                    mem[_710 + ceil32(return_data.size) + 96] = mem[mem[_710 + 96 len 4], 0 + _710 + 96]
                    _1551 = mem[_1456 + _710 + 96]
                    v = 0
                    while v < 32 * _1551:
                        mem[_710 + ceil32(return_data.size) + v + 128] = mem[_1456 + _710 + v + 128]
                        v = v + 32
                        continue 
                    mem[64] = (32 * _1551) + _710 + ceil32(return_data.size) + 128
                require mem[_710 + ceil32(return_data.size) + 96] - 1 < mem[_710 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_710 + ceil32(return_data.size) + 96] - 1) + _710 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_710 + ceil32(return_data.size) + 96] - 1) + _710 + ceil32(return_data.size) + 128]
                t = _710 + ceil32(return_data.size) + 96
                u = _710
                continue 
            _709 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_709 + 32 len 96] = code.data[2921 len 96]
            require 0 < mem[_709]
            mem[_709 + 32] = arg3
            if idx == mem[96]:
                require 1 < mem[_709]
                mem[_709 + 64] = arg4
                mem[_709 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_709 + 132] = 0
                mem[_709 + 164] = 64
                mem[_709 + 196] = mem[_709]
                v = 0
                while v < 32 * mem[_709]:
                    mem[_709 + v + 228] = mem[_709 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args 0, 64, mem[_709 + 196 len (32 * mem[_709]) + 32]
                if not ext_call.success:
                    _1450 = mem[_709]
                    mem[_709 + 128] = mem[_709]
                    mem[64] = _709 + (32 * mem[_709]) + 160
                    if _1450:
                        mem[_709 + 160 len 32 * _1450] = code.data[2921 len 32 * _1450]
                    require mem[_709 + 128] - 1 < mem[_709 + 128]
                    if mem[(32 * mem[_709 + 128] - 1) + _709 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_709 + 128] - 1) + _709 + 160]
                    t = _709 + 128
                    u = _709
                    continue 
                mem[_709 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _709 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1452 = mem[_709 + 128 len 4], 0
                require mem[_709 + 128 len 4], 0 <= 4294967296
                require mem[_709 + 128 len 4], 0 + 32 <= return_data.size
                require mem[mem[_709 + 128 len 4], 0 + _709 + 128] <= 4294967296 and mem[_709 + 128 len 4], 0 + (32 * mem[mem[_709 + 128 len 4], 0 + _709 + 128]) + 32 <= return_data.size
                mem[_709 + ceil32(return_data.size) + 128] = mem[mem[_709 + 128 len 4], 0 + _709 + 128]
                _1548 = mem[_1452 + _709 + 128]
                v = 0
                while v < 32 * _1548:
                    mem[_709 + ceil32(return_data.size) + v + 160] = mem[_1452 + _709 + v + 160]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1548) + _709 + ceil32(return_data.size) + 160
            else:
                require idx < mem[96]
                require 1 < mem[_709]
                mem[_709 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_709]
                mem[_709 + 96] = arg4
                mem[_709 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_709 + 132] = 0
                mem[_709 + 164] = 64
                mem[_709 + 196] = mem[_709]
                v = 0
                while v < 32 * mem[_709]:
                    mem[_709 + v + 228] = mem[_709 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args 0, 64, mem[_709 + 196 len (32 * mem[_709]) + 32]
                if not ext_call.success:
                    _1446 = mem[_709]
                    mem[_709 + 128] = mem[_709]
                    mem[64] = _709 + (32 * mem[_709]) + 160
                    if _1446:
                        mem[_709 + 160 len 32 * _1446] = code.data[2921 len 32 * _1446]
                    require mem[_709 + 128] - 1 < mem[_709 + 128]
                    if mem[(32 * mem[_709 + 128] - 1) + _709 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_709 + 128] - 1) + _709 + 160]
                    t = _709 + 128
                    u = _709
                    continue 
                mem[_709 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _709 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1448 = mem[_709 + 128 len 4], 0
                require mem[_709 + 128 len 4], 0 <= 4294967296
                require mem[_709 + 128 len 4], 0 + 32 <= return_data.size
                require mem[mem[_709 + 128 len 4], 0 + _709 + 128] <= 4294967296 and mem[_709 + 128 len 4], 0 + (32 * mem[mem[_709 + 128 len 4], 0 + _709 + 128]) + 32 <= return_data.size
                mem[_709 + ceil32(return_data.size) + 128] = mem[mem[_709 + 128 len 4], 0 + _709 + 128]
                _1545 = mem[_1448 + _709 + 128]
                v = 0
                while v < 32 * _1545:
                    mem[_709 + ceil32(return_data.size) + v + 160] = mem[_1448 + _709 + v + 160]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1545) + _709 + ceil32(return_data.size) + 160
            require mem[_709 + ceil32(return_data.size) + 128] - 1 < mem[_709 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_709 + ceil32(return_data.size) + 128] - 1) + _709 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_709 + ceil32(return_data.size) + 128] - 1) + _709 + ceil32(return_data.size) + 160]
            t = _709 + ceil32(return_data.size) + 128
            u = _709
            continue 
        require mem[t] - 1 < mem[t]
        _708 = mem[(32 * mem[t] - 1) + t + 32]
        _1386 = mem[96]
        idx = 0
        s = 0
        t = 96
        v = 96
        while idx <= _1386:
            if idx == mem[96]:
                _1424 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1424 + 32 len 64] = code.data[2921 len 64]
                require 0 < mem[_1424]
                mem[_1424 + 32] = arg4
                if idx == mem[96]:
                    require 1 < mem[_1424]
                    mem[_1424 + 64] = arg3
                    mem[_1424 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1424 + 100] = _708
                    mem[_1424 + 132] = 64
                    mem[_1424 + 164] = mem[_1424]
                    u = 0
                    while u < 32 * mem[_1424]:
                        mem[_1424 + u + 196] = mem[_1424 + u + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args _708, 64, mem[_1424 + 164 len (32 * mem[_1424]) + 32]
                    if not ext_call.success:
                        _2046 = mem[_1424]
                        mem[_1424 + 96] = mem[_1424]
                        mem[64] = _1424 + (32 * mem[_1424]) + 128
                        if _2046:
                            mem[_1424 + 128 len 32 * _2046] = code.data[2921 len 32 * _2046]
                        require mem[_1424 + 96] - 1 < mem[_1424 + 96]
                        if mem[(32 * mem[_1424 + 96] - 1) + _1424 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            v = v
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_1424 + 96] - 1) + _1424 + 128]
                        t = _1424 + 96
                        v = _1424
                        continue 
                    mem[_1424 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1424 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2048 = mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32
                    require mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 <= 4294967296
                    require mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + 32 <= return_data.size
                    require mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96] <= 4294967296 and mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + (32 * mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96]) + 32 <= return_data.size
                    mem[_1424 + ceil32(return_data.size) + 96] = mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96]
                    _2141 = mem[_2048 + _1424 + 96]
                    u = 0
                    while u < 32 * _2141:
                        mem[_1424 + ceil32(return_data.size) + u + 128] = mem[_2048 + _1424 + u + 128]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _2141) + _1424 + ceil32(return_data.size) + 128
                else:
                    require idx < mem[96]
                    require 1 < mem[_1424]
                    mem[_1424 + 64] = mem[(32 * idx) + 140 len 20]
                    require 2 < mem[_1424]
                    mem[_1424 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1424 + 100] = _708
                    mem[_1424 + 132] = 64
                    mem[_1424 + 164] = mem[_1424]
                    u = 0
                    while u < 32 * mem[_1424]:
                        mem[_1424 + u + 196] = mem[_1424 + u + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args _708, 64, mem[_1424 + 164 len (32 * mem[_1424]) + 32]
                    if not ext_call.success:
                        _2042 = mem[_1424]
                        mem[_1424 + 96] = mem[_1424]
                        mem[64] = _1424 + (32 * mem[_1424]) + 128
                        if _2042:
                            mem[_1424 + 128 len 32 * _2042] = code.data[2921 len 32 * _2042]
                        require mem[_1424 + 96] - 1 < mem[_1424 + 96]
                        if mem[(32 * mem[_1424 + 96] - 1) + _1424 + 128] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            v = v
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_1424 + 96] - 1) + _1424 + 128]
                        t = _1424 + 96
                        v = _1424
                        continue 
                    mem[_1424 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1424 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2044 = mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32
                    require mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 <= 4294967296
                    require mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + 32 <= return_data.size
                    require mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96] <= 4294967296 and mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + (32 * mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96]) + 32 <= return_data.size
                    mem[_1424 + ceil32(return_data.size) + 96] = mem[mem[_1424 + 96 len 4], Mask(224, 32, _708) >> 32 + _1424 + 96]
                    _2138 = mem[_2044 + _1424 + 96]
                    u = 0
                    while u < 32 * _2138:
                        mem[_1424 + ceil32(return_data.size) + u + 128] = mem[_2044 + _1424 + u + 128]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _2138) + _1424 + ceil32(return_data.size) + 128
                require mem[_1424 + ceil32(return_data.size) + 96] - 1 < mem[_1424 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1424 + ceil32(return_data.size) + 96] - 1) + _1424 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    v = v
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1424 + ceil32(return_data.size) + 96] - 1) + _1424 + ceil32(return_data.size) + 128]
                t = _1424 + ceil32(return_data.size) + 96
                v = _1424
                continue 
            _1423 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_1423 + 32 len 96] = code.data[2921 len 96]
            require 0 < mem[_1423]
            mem[_1423 + 32] = arg4
            if idx == mem[96]:
                require 1 < mem[_1423]
                mem[_1423 + 64] = arg3
                mem[_1423 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1423 + 132] = _708
                mem[_1423 + 164] = 64
                mem[_1423 + 196] = mem[_1423]
                u = 0
                while u < 32 * mem[_1423]:
                    mem[_1423 + u + 228] = mem[_1423 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _708, 64, mem[_1423 + 196 len (32 * mem[_1423]) + 32]
                if not ext_call.success:
                    _2038 = mem[_1423]
                    mem[_1423 + 128] = mem[_1423]
                    mem[64] = _1423 + (32 * mem[_1423]) + 160
                    if _2038:
                        mem[_1423 + 160 len 32 * _2038] = code.data[2921 len 32 * _2038]
                    require mem[_1423 + 128] - 1 < mem[_1423 + 128]
                    if mem[(32 * mem[_1423 + 128] - 1) + _1423 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1423 + 128] - 1) + _1423 + 160]
                    t = _1423 + 128
                    v = _1423
                    continue 
                mem[_1423 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1423 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2040 = mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32
                require mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 <= 4294967296
                require mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + 32 <= return_data.size
                require mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128] <= 4294967296 and mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + (32 * mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128]) + 32 <= return_data.size
                mem[_1423 + ceil32(return_data.size) + 128] = mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128]
                _2135 = mem[_2040 + _1423 + 128]
                u = 0
                while u < 32 * _2135:
                    mem[_1423 + ceil32(return_data.size) + u + 160] = mem[_2040 + _1423 + u + 160]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2135) + _1423 + ceil32(return_data.size) + 160
            else:
                require idx < mem[96]
                require 1 < mem[_1423]
                mem[_1423 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_1423]
                mem[_1423 + 96] = arg3
                mem[_1423 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1423 + 132] = _708
                mem[_1423 + 164] = 64
                mem[_1423 + 196] = mem[_1423]
                u = 0
                while u < 32 * mem[_1423]:
                    mem[_1423 + u + 228] = mem[_1423 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _708, 64, mem[_1423 + 196 len (32 * mem[_1423]) + 32]
                if not ext_call.success:
                    _2034 = mem[_1423]
                    mem[_1423 + 128] = mem[_1423]
                    mem[64] = _1423 + (32 * mem[_1423]) + 160
                    if _2034:
                        mem[_1423 + 160 len 32 * _2034] = code.data[2921 len 32 * _2034]
                    require mem[_1423 + 128] - 1 < mem[_1423 + 128]
                    if mem[(32 * mem[_1423 + 128] - 1) + _1423 + 160] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1423 + 128] - 1) + _1423 + 160]
                    t = _1423 + 128
                    v = _1423
                    continue 
                mem[_1423 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1423 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2036 = mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32
                require mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 <= 4294967296
                require mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + 32 <= return_data.size
                require mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128] <= 4294967296 and mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + (32 * mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128]) + 32 <= return_data.size
                mem[_1423 + ceil32(return_data.size) + 128] = mem[mem[_1423 + 128 len 4], Mask(224, 32, _708) >> 32 + _1423 + 128]
                _2132 = mem[_2036 + _1423 + 128]
                u = 0
                while u < 32 * _2132:
                    mem[_1423 + ceil32(return_data.size) + u + 160] = mem[_2036 + _1423 + u + 160]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2132) + _1423 + ceil32(return_data.size) + 160
            require mem[_1423 + ceil32(return_data.size) + 128] - 1 < mem[_1423 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_1423 + ceil32(return_data.size) + 128] - 1) + _1423 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                t = t
                v = v
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_1423 + ceil32(return_data.size) + 128] - 1) + _1423 + ceil32(return_data.size) + 160]
            t = _1423 + ceil32(return_data.size) + 128
            v = _1423
            continue 
        require mem[t] - 1 < mem[t]
        _1422 = mem[(32 * mem[t] - 1) + t + 32]
        _1443 = mem[64]
        mem[mem[64] + 64] = eth.balance(arg1)
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = _1422
        mem[mem[64]] = 160
        mem[_1443 + 160] = mem[u]
        _1445 = mem[u]
        mem[_1443 + 192 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
        mem[_1443 + 32] = (32 * _1445) + 192
        mem[(32 * _1445) + _1443 + 192] = mem[v]
        _1972 = mem[v]
        mem[(32 * _1445) + _1443 + 224 len floor32(mem[v])] = mem[v + 32 len floor32(mem[v])]
        return memory
          from mem[64]
           len (32 * _1972) + (32 * _1445) + _1443 + -mem[64] + 224
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 96
    u = 96
    while idx <= arg2.length:
        if idx == mem[96]:
            _713 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_713 + 32 len 64] = code.data[2921 len 64]
            require 0 < mem[_713]
            mem[_713 + 32] = arg3
            if idx == mem[96]:
                require 1 < mem[_713]
                mem[_713 + 64] = arg4
                mem[_713 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_713 + 100] = ext_call.return_data[0]
                mem[_713 + 132] = 64
                mem[_713 + 164] = mem[_713]
                v = 0
                while v < 32 * mem[_713]:
                    mem[_713 + v + 196] = mem[_713 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 64, mem[_713 + 164 len (32 * mem[_713]) + 32]
                if not ext_call.success:
                    _1477 = mem[_713]
                    mem[_713 + 96] = mem[_713]
                    mem[64] = _713 + (32 * mem[_713]) + 128
                    if _1477:
                        mem[_713 + 128 len 32 * _1477] = code.data[2921 len 32 * _1477]
                    require mem[_713 + 96] - 1 < mem[_713 + 96]
                    if mem[(32 * mem[_713 + 96] - 1) + _713 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_713 + 96] - 1) + _713 + 128]
                    t = _713 + 96
                    u = _713
                    continue 
                mem[_713 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _713 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1479 = mem[_713 + 96 len 4], ext_call.return_data[0 len 28]
                require mem[_713 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96] <= 4294967296 and mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96]) + 32 <= return_data.size
                mem[_713 + ceil32(return_data.size) + 96] = mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96]
                _1570 = mem[_1479 + _713 + 96]
                v = 0
                while v < 32 * _1570:
                    mem[_713 + ceil32(return_data.size) + v + 128] = mem[_1479 + _713 + v + 128]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1570) + _713 + ceil32(return_data.size) + 128
            else:
                require idx < mem[96]
                require 1 < mem[_713]
                mem[_713 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_713]
                mem[_713 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_713 + 100] = ext_call.return_data[0]
                mem[_713 + 132] = 64
                mem[_713 + 164] = mem[_713]
                v = 0
                while v < 32 * mem[_713]:
                    mem[_713 + v + 196] = mem[_713 + v + 32]
                    v = v + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 64, mem[_713 + 164 len (32 * mem[_713]) + 32]
                if not ext_call.success:
                    _1473 = mem[_713]
                    mem[_713 + 96] = mem[_713]
                    mem[64] = _713 + (32 * mem[_713]) + 128
                    if _1473:
                        mem[_713 + 128 len 32 * _1473] = code.data[2921 len 32 * _1473]
                    require mem[_713 + 96] - 1 < mem[_713 + 96]
                    if mem[(32 * mem[_713 + 96] - 1) + _713 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_713 + 96] - 1) + _713 + 128]
                    t = _713 + 96
                    u = _713
                    continue 
                mem[_713 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _713 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1475 = mem[_713 + 96 len 4], ext_call.return_data[0 len 28]
                require mem[_713 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96] <= 4294967296 and mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96]) + 32 <= return_data.size
                mem[_713 + ceil32(return_data.size) + 96] = mem[mem[_713 + 96 len 4], ext_call.return_data[0 len 28] + _713 + 96]
                _1567 = mem[_1475 + _713 + 96]
                v = 0
                while v < 32 * _1567:
                    mem[_713 + ceil32(return_data.size) + v + 128] = mem[_1475 + _713 + v + 128]
                    v = v + 32
                    continue 
                mem[64] = (32 * _1567) + _713 + ceil32(return_data.size) + 128
            require mem[_713 + ceil32(return_data.size) + 96] - 1 < mem[_713 + ceil32(return_data.size) + 96]
            if mem[(32 * mem[_713 + ceil32(return_data.size) + 96] - 1) + _713 + ceil32(return_data.size) + 128] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_713 + ceil32(return_data.size) + 96] - 1) + _713 + ceil32(return_data.size) + 128]
            t = _713 + ceil32(return_data.size) + 96
            u = _713
            continue 
        _712 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_712 + 32 len 96] = code.data[2921 len 96]
        require 0 < mem[_712]
        mem[_712 + 32] = arg3
        if idx == mem[96]:
            require 1 < mem[_712]
            mem[_712 + 64] = arg4
            mem[_712 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_712 + 132] = ext_call.return_data[0]
            mem[_712 + 164] = 64
            mem[_712 + 196] = mem[_712]
            v = 0
            while v < 32 * mem[_712]:
                mem[_712 + v + 228] = mem[_712 + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 64, mem[_712 + 196 len (32 * mem[_712]) + 32]
            if not ext_call.success:
                _1469 = mem[_712]
                mem[_712 + 128] = mem[_712]
                mem[64] = _712 + (32 * mem[_712]) + 160
                if _1469:
                    mem[_712 + 160 len 32 * _1469] = code.data[2921 len 32 * _1469]
                require mem[_712 + 128] - 1 < mem[_712 + 128]
                if mem[(32 * mem[_712 + 128] - 1) + _712 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_712 + 128] - 1) + _712 + 160]
                t = _712 + 128
                u = _712
                continue 
            mem[_712 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _712 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1471 = mem[_712 + 128 len 4], ext_call.return_data[0 len 28]
            require mem[_712 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128] <= 4294967296 and mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128]) + 32 <= return_data.size
            mem[_712 + ceil32(return_data.size) + 128] = mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128]
            _1564 = mem[_1471 + _712 + 128]
            v = 0
            while v < 32 * _1564:
                mem[_712 + ceil32(return_data.size) + v + 160] = mem[_1471 + _712 + v + 160]
                v = v + 32
                continue 
            mem[64] = (32 * _1564) + _712 + ceil32(return_data.size) + 160
        else:
            require idx < mem[96]
            require 1 < mem[_712]
            mem[_712 + 64] = mem[(32 * idx) + 140 len 20]
            require 2 < mem[_712]
            mem[_712 + 96] = arg4
            mem[_712 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_712 + 132] = ext_call.return_data[0]
            mem[_712 + 164] = 64
            mem[_712 + 196] = mem[_712]
            v = 0
            while v < 32 * mem[_712]:
                mem[_712 + v + 228] = mem[_712 + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 64, mem[_712 + 196 len (32 * mem[_712]) + 32]
            if not ext_call.success:
                _1465 = mem[_712]
                mem[_712 + 128] = mem[_712]
                mem[64] = _712 + (32 * mem[_712]) + 160
                if _1465:
                    mem[_712 + 160 len 32 * _1465] = code.data[2921 len 32 * _1465]
                require mem[_712 + 128] - 1 < mem[_712 + 128]
                if mem[(32 * mem[_712 + 128] - 1) + _712 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_712 + 128] - 1) + _712 + 160]
                t = _712 + 128
                u = _712
                continue 
            mem[_712 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _712 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1467 = mem[_712 + 128 len 4], ext_call.return_data[0 len 28]
            require mem[_712 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128] <= 4294967296 and mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128]) + 32 <= return_data.size
            mem[_712 + ceil32(return_data.size) + 128] = mem[mem[_712 + 128 len 4], ext_call.return_data[0 len 28] + _712 + 128]
            _1561 = mem[_1467 + _712 + 128]
            v = 0
            while v < 32 * _1561:
                mem[_712 + ceil32(return_data.size) + v + 160] = mem[_1467 + _712 + v + 160]
                v = v + 32
                continue 
            mem[64] = (32 * _1561) + _712 + ceil32(return_data.size) + 160
        require mem[_712 + ceil32(return_data.size) + 128] - 1 < mem[_712 + ceil32(return_data.size) + 128]
        if mem[(32 * mem[_712 + ceil32(return_data.size) + 128] - 1) + _712 + ceil32(return_data.size) + 160] <= s:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        idx = idx + 1
        s = mem[(32 * mem[_712 + ceil32(return_data.size) + 128] - 1) + _712 + ceil32(return_data.size) + 160]
        t = _712 + ceil32(return_data.size) + 128
        u = _712
        continue 
    require mem[t] - 1 < mem[t]
    _711 = mem[(32 * mem[t] - 1) + t + 32]
    _1387 = mem[96]
    idx = 0
    s = 0
    t = 96
    v = 96
    while idx <= _1387:
        if idx == mem[96]:
            _1431 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1431 + 32 len 64] = code.data[2921 len 64]
            require 0 < mem[_1431]
            mem[_1431 + 32] = arg4
            if idx == mem[96]:
                require 1 < mem[_1431]
                mem[_1431 + 64] = arg3
                mem[_1431 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1431 + 100] = _711
                mem[_1431 + 132] = 64
                mem[_1431 + 164] = mem[_1431]
                u = 0
                while u < 32 * mem[_1431]:
                    mem[_1431 + u + 196] = mem[_1431 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _711, 64, mem[_1431 + 164 len (32 * mem[_1431]) + 32]
                if not ext_call.success:
                    _2062 = mem[_1431]
                    mem[_1431 + 96] = mem[_1431]
                    mem[64] = _1431 + (32 * mem[_1431]) + 128
                    if _2062:
                        mem[_1431 + 128 len 32 * _2062] = code.data[2921 len 32 * _2062]
                    require mem[_1431 + 96] - 1 < mem[_1431 + 96]
                    if mem[(32 * mem[_1431 + 96] - 1) + _1431 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1431 + 96] - 1) + _1431 + 128]
                    t = _1431 + 96
                    v = _1431
                    continue 
                mem[_1431 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1431 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2064 = mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32
                require mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 <= 4294967296
                require mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + 32 <= return_data.size
                require mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96] <= 4294967296 and mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + (32 * mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96]) + 32 <= return_data.size
                mem[_1431 + ceil32(return_data.size) + 96] = mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96]
                _2153 = mem[_2064 + _1431 + 96]
                u = 0
                while u < 32 * _2153:
                    mem[_1431 + ceil32(return_data.size) + u + 128] = mem[_2064 + _1431 + u + 128]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2153) + _1431 + ceil32(return_data.size) + 128
            else:
                require idx < mem[96]
                require 1 < mem[_1431]
                mem[_1431 + 64] = mem[(32 * idx) + 140 len 20]
                require 2 < mem[_1431]
                mem[_1431 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1431 + 100] = _711
                mem[_1431 + 132] = 64
                mem[_1431 + 164] = mem[_1431]
                u = 0
                while u < 32 * mem[_1431]:
                    mem[_1431 + u + 196] = mem[_1431 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args _711, 64, mem[_1431 + 164 len (32 * mem[_1431]) + 32]
                if not ext_call.success:
                    _2058 = mem[_1431]
                    mem[_1431 + 96] = mem[_1431]
                    mem[64] = _1431 + (32 * mem[_1431]) + 128
                    if _2058:
                        mem[_1431 + 128 len 32 * _2058] = code.data[2921 len 32 * _2058]
                    require mem[_1431 + 96] - 1 < mem[_1431 + 96]
                    if mem[(32 * mem[_1431 + 96] - 1) + _1431 + 128] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        v = v
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1431 + 96] - 1) + _1431 + 128]
                    t = _1431 + 96
                    v = _1431
                    continue 
                mem[_1431 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1431 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2060 = mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32
                require mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 <= 4294967296
                require mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + 32 <= return_data.size
                require mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96] <= 4294967296 and mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + (32 * mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96]) + 32 <= return_data.size
                mem[_1431 + ceil32(return_data.size) + 96] = mem[mem[_1431 + 96 len 4], Mask(224, 32, _711) >> 32 + _1431 + 96]
                _2150 = mem[_2060 + _1431 + 96]
                u = 0
                while u < 32 * _2150:
                    mem[_1431 + ceil32(return_data.size) + u + 128] = mem[_2060 + _1431 + u + 128]
                    u = u + 32
                    continue 
                mem[64] = (32 * _2150) + _1431 + ceil32(return_data.size) + 128
            require mem[_1431 + ceil32(return_data.size) + 96] - 1 < mem[_1431 + ceil32(return_data.size) + 96]
            if mem[(32 * mem[_1431 + ceil32(return_data.size) + 96] - 1) + _1431 + ceil32(return_data.size) + 128] <= s:
                idx = idx + 1
                s = s
                t = t
                v = v
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_1431 + ceil32(return_data.size) + 96] - 1) + _1431 + ceil32(return_data.size) + 128]
            t = _1431 + ceil32(return_data.size) + 96
            v = _1431
            continue 
        _1430 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_1430 + 32 len 96] = code.data[2921 len 96]
        require 0 < mem[_1430]
        mem[_1430 + 32] = arg4
        if idx == mem[96]:
            require 1 < mem[_1430]
            mem[_1430 + 64] = arg3
            mem[_1430 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1430 + 132] = _711
            mem[_1430 + 164] = 64
            mem[_1430 + 196] = mem[_1430]
            u = 0
            while u < 32 * mem[_1430]:
                mem[_1430 + u + 228] = mem[_1430 + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _711, 64, mem[_1430 + 196 len (32 * mem[_1430]) + 32]
            if not ext_call.success:
                _2054 = mem[_1430]
                mem[_1430 + 128] = mem[_1430]
                mem[64] = _1430 + (32 * mem[_1430]) + 160
                if _2054:
                    mem[_1430 + 160 len 32 * _2054] = code.data[2921 len 32 * _2054]
                require mem[_1430 + 128] - 1 < mem[_1430 + 128]
                if mem[(32 * mem[_1430 + 128] - 1) + _1430 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    v = v
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1430 + 128] - 1) + _1430 + 160]
                t = _1430 + 128
                v = _1430
                continue 
            mem[_1430 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1430 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2056 = mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32
            require mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 <= 4294967296
            require mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + 32 <= return_data.size
            require mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128] <= 4294967296 and mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + (32 * mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128]) + 32 <= return_data.size
            mem[_1430 + ceil32(return_data.size) + 128] = mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128]
            _2147 = mem[_2056 + _1430 + 128]
            u = 0
            while u < 32 * _2147:
                mem[_1430 + ceil32(return_data.size) + u + 160] = mem[_2056 + _1430 + u + 160]
                u = u + 32
                continue 
            mem[64] = (32 * _2147) + _1430 + ceil32(return_data.size) + 160
        else:
            require idx < mem[96]
            require 1 < mem[_1430]
            mem[_1430 + 64] = mem[(32 * idx) + 140 len 20]
            require 2 < mem[_1430]
            mem[_1430 + 96] = arg3
            mem[_1430 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1430 + 132] = _711
            mem[_1430 + 164] = 64
            mem[_1430 + 196] = mem[_1430]
            u = 0
            while u < 32 * mem[_1430]:
                mem[_1430 + u + 228] = mem[_1430 + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _711, 64, mem[_1430 + 196 len (32 * mem[_1430]) + 32]
            if not ext_call.success:
                _2050 = mem[_1430]
                mem[_1430 + 128] = mem[_1430]
                mem[64] = _1430 + (32 * mem[_1430]) + 160
                if _2050:
                    mem[_1430 + 160 len 32 * _2050] = code.data[2921 len 32 * _2050]
                require mem[_1430 + 128] - 1 < mem[_1430 + 128]
                if mem[(32 * mem[_1430 + 128] - 1) + _1430 + 160] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    v = v
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1430 + 128] - 1) + _1430 + 160]
                t = _1430 + 128
                v = _1430
                continue 
            mem[_1430 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1430 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2052 = mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32
            require mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 <= 4294967296
            require mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + 32 <= return_data.size
            require mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128] <= 4294967296 and mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + (32 * mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128]) + 32 <= return_data.size
            mem[_1430 + ceil32(return_data.size) + 128] = mem[mem[_1430 + 128 len 4], Mask(224, 32, _711) >> 32 + _1430 + 128]
            _2144 = mem[_2052 + _1430 + 128]
            u = 0
            while u < 32 * _2144:
                mem[_1430 + ceil32(return_data.size) + u + 160] = mem[_2052 + _1430 + u + 160]
                u = u + 32
                continue 
            mem[64] = (32 * _2144) + _1430 + ceil32(return_data.size) + 160
        require mem[_1430 + ceil32(return_data.size) + 128] - 1 < mem[_1430 + ceil32(return_data.size) + 128]
        if mem[(32 * mem[_1430 + ceil32(return_data.size) + 128] - 1) + _1430 + ceil32(return_data.size) + 160] <= s:
            idx = idx + 1
            s = s
            t = t
            v = v
            continue 
        idx = idx + 1
        s = mem[(32 * mem[_1430 + ceil32(return_data.size) + 128] - 1) + _1430 + ceil32(return_data.size) + 160]
        t = _1430 + ceil32(return_data.size) + 128
        v = _1430
        continue 
    require mem[t] - 1 < mem[t]
    _1429 = mem[(32 * mem[t] - 1) + t + 32]
    _1462 = mem[64]
    mem[mem[64] + 64] = eth.balance(arg1)
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = _1429
    mem[mem[64]] = 160
    mem[_1462 + 160] = mem[u]
    _1464 = mem[u]
    mem[_1462 + 192 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    mem[_1462 + 32] = (32 * _1464) + 192
    mem[(32 * _1464) + _1462 + 192] = mem[v]
    _1987 = mem[v]
    mem[(32 * _1464) + _1462 + 224 len floor32(mem[v])] = mem[v + 32 len floor32(mem[v])]
    return memory
      from mem[64]
       len (32 * _1987) + (32 * _1464) + _1462 + -mem[64] + 224
}



}
