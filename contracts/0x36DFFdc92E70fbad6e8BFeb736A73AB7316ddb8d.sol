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
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 480] = mem[(2 * ceil32(return_data.size)) + 300 len 20]
    mem[(11 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + 332 len 20]
    mem[(11 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + 434 len 14]
    mem[(11 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + 466 len 14]
    return mem[(11 * ceil32(return_data.size)) + 480 len 64], 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(11 * ceil32(return_data.size)) + 608 len 64]
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
            _219 = mem[(32 * idx) + 128]
            _222 = mem[64]
            mem[64] = mem[64] + 192
            mem[_222] = 0
            mem[_222 + 32] = 0
            mem[_222 + 64] = 0
            mem[_222 + 96] = 0
            mem[_222 + 128] = 0
            mem[_222 + 160] = 0
            if not ext_code.size(_219):
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = _222
            else:
                require ext_code.size(address(_219))
                staticcall address(_219).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_237]:
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _222
                else:
                    require ext_code.size(address(_219))
                    staticcall address(_219).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _259 = mem[_257]
                    require mem[_257] == mem[_257 + 18 len 14]
                    _264 = mem[_257 + 32]
                    require mem[_257 + 32] == mem[_257 + 50 len 14]
                    require mem[_257 + 64] == mem[_257 + 92 len 4]
                    _267 = mem[64]
                    mem[64] = mem[64] + 192
                    require ext_code.size(address(_219))
                    staticcall address(_219).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_271] == mem[_271 + 12 len 20]
                    mem[_267] = mem[_271 + 12 len 20]
                    require ext_code.size(address(_219))
                    staticcall address(_219).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_281] == mem[_281 + 12 len 20]
                    mem[_267 + 32] = mem[_281 + 12 len 20]
                    mem[_267 + 64] = Mask(112, 0, _259)
                    mem[_267 + 96] = Mask(112, 0, _264)
                    require ext_code.size(address(_219))
                    staticcall address(_219).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_289] == mem[_289 + 12 len 20]
                    require ext_code.size(mem[_289 + 12 len 20])
                    staticcall mem[_289 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_297] == mem[_297 + 31 len 1]
                    mem[_267 + 128] = mem[_297 + 31 len 1]
                    require ext_code.size(address(_219))
                    staticcall address(_219).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_304] == mem[_304 + 12 len 20]
                    require ext_code.size(mem[_304 + 12 len 20])
                    staticcall mem[_304 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_313] == mem[_313 + 31 len 1]
                    mem[_267 + 160] = mem[_313 + 31 len 1]
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _267
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _220 = mem[64]
        mem[mem[64]] = 32
        _221 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * arg1.length) + 160
        while idx < _221:
            _322 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_322 + 44 len 20]
            mem[s + 64] = mem[_322 + 82 len 14]
            mem[s + 96] = mem[_322 + 114 len 14]
            mem[s + 128] = mem[_322 + 146 len 14]
            mem[s + 160] = mem[_322 + 178 len 14]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _220 + (192 * _221) + -mem[64] + 64
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
    _382 = mem[96]
    idx = 0
    while idx < _382:
        if idx >= mem[96]:
            revert with 0, 50
        _384 = mem[(32 * idx) + 128]
        _387 = mem[64]
        mem[64] = mem[64] + 192
        mem[_387] = 0
        mem[_387 + 32] = 0
        mem[_387 + 64] = 0
        mem[_387 + 96] = 0
        mem[_387 + 128] = 0
        mem[_387 + 160] = 0
        if not ext_code.size(_384):
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + 160] = _387
        else:
            require ext_code.size(address(_384))
            staticcall address(_384).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_399]:
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = _387
            else:
                require ext_code.size(address(_384))
                staticcall address(_384).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _405 = mem[_404]
                require mem[_404] == mem[_404 + 18 len 14]
                _406 = mem[_404 + 32]
                require mem[_404 + 32] == mem[_404 + 50 len 14]
                require mem[_404 + 64] == mem[_404 + 92 len 4]
                _408 = mem[64]
                mem[64] = mem[64] + 192
                require ext_code.size(address(_384))
                staticcall address(_384).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_411] == mem[_411 + 12 len 20]
                mem[_408] = mem[_411 + 12 len 20]
                require ext_code.size(address(_384))
                staticcall address(_384).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_415] == mem[_415 + 12 len 20]
                mem[_408 + 32] = mem[_415 + 12 len 20]
                mem[_408 + 64] = Mask(112, 0, _405)
                mem[_408 + 96] = Mask(112, 0, _406)
                require ext_code.size(address(_384))
                staticcall address(_384).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == mem[_419 + 12 len 20]
                require ext_code.size(mem[_419 + 12 len 20])
                staticcall mem[_419 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == mem[_423 + 31 len 1]
                mem[_408 + 128] = mem[_423 + 31 len 1]
                require ext_code.size(address(_384))
                staticcall address(_384).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_427] == mem[_427 + 12 len 20]
                require ext_code.size(mem[_427 + 12 len 20])
                staticcall mem[_427 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == mem[_431 + 31 len 1]
                mem[_408 + 160] = mem[_431 + 31 len 1]
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = _408
        if idx == -1:
            revert with 0, 17
        _382 = mem[96]
        idx = idx + 1
        continue 
    _385 = mem[64]
    mem[mem[64]] = 32
    _386 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = mem[64] + 64
    t = (32 * arg1.length) + 160
    while idx < _386:
        _434 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_434 + 44 len 20]
        mem[s + 64] = mem[_434 + 82 len 14]
        mem[s + 96] = mem[_434 + 114 len 14]
        mem[s + 128] = mem[_434 + 146 len 14]
        mem[s + 160] = mem[_434 + 178 len 14]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _385 + (192 * _386) + -mem[64] + 64
}



}
