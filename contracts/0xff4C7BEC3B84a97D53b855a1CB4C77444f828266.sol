contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ext_code.size(arg1):
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[31 len 1]
    mem[(10 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + 300 len 20]
    mem[(10 * ceil32(return_data.size)) + 512] = mem[ceil32(return_data.size) + 332 len 20]
    mem[(10 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + 434 len 14]
    mem[(10 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 466 len 14]
    return mem[(10 * ceil32(return_data.size)) + 480 len 64], 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(10 * ceil32(return_data.size)) + 608 len 64]
}

function getPairs(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _199 = mem[(32 * idx) + 128]
            _202 = mem[64]
            mem[64] = mem[64] + 192
            mem[_202] = 0
            mem[_202 + 32] = 0
            mem[_202 + 64] = 0
            mem[_202 + 96] = 0
            mem[_202 + 128] = 0
            mem[_202 + 160] = 0
            if not ext_code.size(_199):
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = _202
            else:
                require ext_code.size(address(_199))
                staticcall address(_199).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _221 = mem[_217]
                require mem[_217] == mem[_217 + 18 len 14]
                _234 = mem[_217 + 32]
                require mem[_217 + 32] == mem[_217 + 50 len 14]
                require mem[_217 + 64] == mem[_217 + 92 len 4]
                _237 = mem[64]
                mem[64] = mem[64] + 192
                require ext_code.size(address(_199))
                staticcall address(_199).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_241] == mem[_241 + 12 len 20]
                mem[_237] = mem[_241 + 12 len 20]
                require ext_code.size(address(_199))
                staticcall address(_199).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_251] == mem[_251 + 12 len 20]
                mem[_237 + 32] = mem[_251 + 12 len 20]
                mem[_237 + 64] = Mask(112, 0, _221)
                mem[_237 + 96] = Mask(112, 0, _234)
                require ext_code.size(address(_199))
                staticcall address(_199).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_259] == mem[_259 + 12 len 20]
                require ext_code.size(mem[_259 + 12 len 20])
                staticcall mem[_259 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == mem[_267 + 31 len 1]
                mem[_237 + 128] = mem[_267 + 31 len 1]
                require ext_code.size(address(_199))
                staticcall address(_199).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_274] == mem[_274 + 12 len 20]
                require ext_code.size(mem[_274 + 12 len 20])
                staticcall mem[_274 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_283] == mem[_283 + 31 len 1]
                mem[_237 + 160] = mem[_283 + 31 len 1]
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = _237
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _200 = mem[64]
        mem[mem[64]] = 32
        _201 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * arg1.length) + 160
        while idx < _201:
            _292 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_292 + 44 len 20]
            mem[s + 64] = mem[_292 + 82 len 14]
            mem[s + 96] = mem[_292 + 114 len 14]
            mem[s + 128] = mem[_292 + 146 len 14]
            mem[s + 160] = mem[_292 + 178 len 14]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _200 + (192 * _201) + -mem[64] + 64
    mem[64] = (64 * arg1.length) + 352
    mem[(64 * arg1.length) + 160] = 0
    mem[(64 * arg1.length) + 192] = 0
    mem[(64 * arg1.length) + 224] = 0
    mem[(64 * arg1.length) + 256] = 0
    mem[(64 * arg1.length) + 288] = 0
    mem[(64 * arg1.length) + 320] = 0
    mem[var20001] = (64 * arg1.length) + 160
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(64 * arg1.length) + 160] = 0
        mem[(64 * arg1.length) + 192] = 0
        mem[(64 * arg1.length) + 224] = 0
        mem[(64 * arg1.length) + 256] = 0
        mem[(64 * arg1.length) + 288] = 0
        mem[(64 * arg1.length) + 320] = 0
        mem[s + 32] = (64 * arg1.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _347 = mem[96]
    idx = 0
    while idx < _347:
        if idx >= mem[96]:
            revert with 0, 50
        _349 = mem[(32 * idx) + 128]
        _352 = mem[64]
        mem[64] = mem[64] + 192
        mem[_352] = 0
        mem[_352 + 32] = 0
        mem[_352 + 64] = 0
        mem[_352 + 96] = 0
        mem[_352 + 128] = 0
        mem[_352 + 160] = 0
        if not ext_code.size(_349):
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + 160] = _352
        else:
            require ext_code.size(address(_349))
            staticcall address(_349).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _365 = mem[_364]
            require mem[_364] == mem[_364 + 18 len 14]
            _366 = mem[_364 + 32]
            require mem[_364 + 32] == mem[_364 + 50 len 14]
            require mem[_364 + 64] == mem[_364 + 92 len 4]
            _368 = mem[64]
            mem[64] = mem[64] + 192
            require ext_code.size(address(_349))
            staticcall address(_349).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_371] == mem[_371 + 12 len 20]
            mem[_368] = mem[_371 + 12 len 20]
            require ext_code.size(address(_349))
            staticcall address(_349).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_375] == mem[_375 + 12 len 20]
            mem[_368 + 32] = mem[_375 + 12 len 20]
            mem[_368 + 64] = Mask(112, 0, _365)
            mem[_368 + 96] = Mask(112, 0, _366)
            require ext_code.size(address(_349))
            staticcall address(_349).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_379] == mem[_379 + 12 len 20]
            require ext_code.size(mem[_379 + 12 len 20])
            staticcall mem[_379 + 12 len 20].decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_383] == mem[_383 + 31 len 1]
            mem[_368 + 128] = mem[_383 + 31 len 1]
            require ext_code.size(address(_349))
            staticcall address(_349).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == mem[_387 + 12 len 20]
            require ext_code.size(mem[_387 + 12 len 20])
            staticcall mem[_387 + 12 len 20].decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_391] == mem[_391 + 31 len 1]
            mem[_368 + 160] = mem[_391 + 31 len 1]
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + 160] = _368
        if idx == -1:
            revert with 0, 17
        _347 = mem[96]
        idx = idx + 1
        continue 
    _350 = mem[64]
    mem[mem[64]] = 32
    _351 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = mem[64] + 64
    t = (32 * arg1.length) + 160
    while idx < _351:
        _394 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_394 + 44 len 20]
        mem[s + 64] = mem[_394 + 82 len 14]
        mem[s + 96] = mem[_394 + 114 len 14]
        mem[s + 128] = mem[_394 + 146 len 14]
        mem[s + 160] = mem[_394 + 178 len 14]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _350 + (192 * _351) + -mem[64] + 64
}



}
