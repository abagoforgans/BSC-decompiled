contract main {




// =====================  Runtime code  =====================


#
#  - sub_41292edb(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == stor0:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f38f59d7(?) payable {
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _50 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_50] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_50 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_50 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _50
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _67 = mem[96]
    idx = 0
    while idx < _67:
        require idx < mem[96]
        _69 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _71 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _72 = mem[64]
        _73 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        s = 0
        while s < _73:
            mem[_72 + s] = mem[_71 + s + 32]
            _67 = mem[96]
            s = s + 32
            continue 
        if ceil32(_73) <= _73:
            delegate address(_69).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _72 + _73 + -mem[64] - 4]
            if return_data.size:
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_89] = return_data.size
                mem[_89 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_72 + _73] = 0
            delegate address(_69).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _72 + _73 + -mem[64] - 4]
            if return_data.size:
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_91] = return_data.size
                mem[_91 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 0, 'TRANSACTION_FAILED'
        _67 = mem[96]
        idx = idx + 1
        continue 
}

function sub_11897c9a(?) {
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
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
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
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = code.data[5186 len 32 * ('cd', 4).length]
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
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
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

function sub_8db8bc90(?) {
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
    u = 96
    while idx <= ('cd', 4).length:
        mem[mem[64] len 806] = code.data[5186 len 806]
        create contract with 0 wei
                        code: code.data[5186 len 806]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x89b09de700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(cd[36])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == mem[96]:
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).push(address rg1) with:
                 gas gas_remaining wei
                args address(cd[68])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _256 = mem[_254]
            require mem[_254] <= test266151307()
            require _254 + mem[_254] + 31 < _254 + return_data.size
            _257 = mem[_254 + mem[_254]]
            require mem[_254 + mem[_254]] <= test266151307()
            require _254 + ceil32(return_data.size) + (32 * mem[_254 + mem[_254]]) + 32 <= test266151307() and (32 * mem[_254 + mem[_254]]) + 32 >= 0
            mem[64] = _254 + ceil32(return_data.size) + (32 * mem[_254 + mem[_254]]) + 32
            mem[_254 + ceil32(return_data.size)] = _257
            require _256 + (32 * _257) + 32 <= return_data.size
            v = 0
            w = _254 + _256 + 32
            x = _254 + ceil32(return_data.size) + 32
            while v < _257:
                require mem[w] == mem[w + 12 len 20]
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _354 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[100]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = _257
            v = 0
            w = _254 + ceil32(return_data.size) + 32
            x = mem[64] + 100
            while v < _257:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            require ext_code.size(stor1)
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _354 + (32 * _257) + -mem[64] + 96]
            if not ext_call.success:
                _446 = mem[_254 + ceil32(return_data.size)]
                _447 = mem[64]
                mem[mem[64]] = mem[_254 + ceil32(return_data.size)]
                mem[64] = mem[64] + (32 * _446) + 32
                if not _446:
                    require mem[_447] - 1 < mem[_447]
                    _456 = mem[(32 * mem[_447] - 1) + _447 + 32]
                    if mem[(32 * mem[_447] - 1) + _447 + 32] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    mem[_447 + (32 * _446) + 32] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).get() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_447 + (32 * _446) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _447 + (32 * _446) + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    _480 = mem[_447 + (32 * _446) + 32]
                    require mem[_447 + (32 * _446) + 32] <= test266151307()
                    require _447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 63 < _447 + (32 * _446) + return_data.size + 32
                    _484 = mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]
                    require mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32] <= test266151307()
                    require _447 + (32 * _446) + ceil32(return_data.size) + (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 64 <= test266151307() and (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 32 >= 0
                    mem[64] = _447 + (32 * _446) + ceil32(return_data.size) + (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 64
                    mem[_447 + (32 * _446) + ceil32(return_data.size) + 32] = _484
                    require _480 + (32 * _484) + 32 <= return_data.size
                    s = 0
                    t = _447 + (32 * _446) + _480 + 64
                    u = _447 + (32 * _446) + ceil32(return_data.size) + 64
                    while s < _484:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    idx = idx + 1
                    s = _456
                    t = _447
                    u = _447 + (32 * _446) + ceil32(return_data.size) + 32
                    continue 
                mem[_447 + 32 len 32 * _446] = code.data[5186 len 32 * _446]
                require mem[_447] - 1 < mem[_447]
                _466 = mem[(32 * mem[_447] - 1) + _447 + 32]
                if mem[(32 * mem[_447] - 1) + _447 + 32] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[_447 + (32 * _446) + 32] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(create.new_address))
                staticcall address(create.new_address).get() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_447 + (32 * _446) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _447 + (32 * _446) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                _482 = mem[_447 + (32 * _446) + 32]
                require mem[_447 + (32 * _446) + 32] <= test266151307()
                require _447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 63 < _447 + (32 * _446) + return_data.size + 32
                _486 = mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]
                require mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32] <= test266151307()
                require _447 + (32 * _446) + ceil32(return_data.size) + (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 64 <= test266151307() and (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 32 >= 0
                mem[64] = _447 + (32 * _446) + ceil32(return_data.size) + (32 * mem[_447 + (32 * _446) + mem[_447 + (32 * _446) + 32] + 32]) + 64
                mem[_447 + (32 * _446) + ceil32(return_data.size) + 32] = _486
                require _482 + (32 * _486) + 32 <= return_data.size
                s = 0
                t = _447 + (32 * _446) + _482 + 64
                u = _447 + (32 * _446) + ceil32(return_data.size) + 64
                while s < _486:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _466
                t = _447
                u = _447 + (32 * _446) + ceil32(return_data.size) + 32
                continue 
            _444 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _450 = mem[_444]
            require mem[_444] <= test266151307()
            require _444 + mem[_444] + 31 < _444 + return_data.size
            _459 = mem[_444 + mem[_444]]
            require mem[_444 + mem[_444]] <= test266151307()
            require _444 + ceil32(return_data.size) + (32 * mem[_444 + mem[_444]]) + 32 <= test266151307() and (32 * mem[_444 + mem[_444]]) + 32 >= 0
            mem[64] = _444 + ceil32(return_data.size) + (32 * mem[_444 + mem[_444]]) + 32
            mem[_444 + ceil32(return_data.size)] = _459
            require _450 + (32 * _459) + 32 <= return_data.size
            v = 0
            w = _444 + _450 + 32
            x = _444 + ceil32(return_data.size) + 32
            while v < _459:
                require mem[w] == mem[w]
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            require _459 - 1 < _459
            _528 = mem[(32 * _459 - 1) + _444 + ceil32(return_data.size) + 32]
            if mem[(32 * _459 - 1) + _444 + ceil32(return_data.size) + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _534 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _536 = mem[_534]
            require mem[_534] <= test266151307()
            require _534 + mem[_534] + 31 < _534 + return_data.size
            _538 = mem[_534 + mem[_534]]
            require mem[_534 + mem[_534]] <= test266151307()
            require _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32 <= test266151307() and (32 * mem[_534 + mem[_534]]) + 32 >= 0
            mem[64] = _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32
            mem[_534 + ceil32(return_data.size)] = _538
            require _536 + (32 * _538) + 32 <= return_data.size
            s = 0
            t = _534 + _536 + 32
            u = _534 + ceil32(return_data.size) + 32
            while s < _538:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            idx = idx + 1
            s = _528
            t = _444 + ceil32(return_data.size)
            u = _534 + ceil32(return_data.size)
            continue 
        require idx < mem[96]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = address(cd[68])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(cd[68])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).get() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _263 = mem[_262]
        require mem[_262] <= test266151307()
        require _262 + mem[_262] + 31 < _262 + return_data.size
        _266 = mem[_262 + mem[_262]]
        require mem[_262 + mem[_262]] <= test266151307()
        require _262 + ceil32(return_data.size) + (32 * mem[_262 + mem[_262]]) + 32 <= test266151307() and (32 * mem[_262 + mem[_262]]) + 32 >= 0
        mem[64] = _262 + ceil32(return_data.size) + (32 * mem[_262 + mem[_262]]) + 32
        mem[_262 + ceil32(return_data.size)] = _266
        require _263 + (32 * _266) + 32 <= return_data.size
        v = 0
        w = _262 + _263 + 32
        x = _262 + ceil32(return_data.size) + 32
        while v < _266:
            require mem[w] == mem[w + 12 len 20]
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _355 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[100]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = _266
        v = 0
        w = _262 + ceil32(return_data.size) + 32
        x = mem[64] + 100
        while v < _266:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        require ext_code.size(stor1)
        call stor1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _355 + (32 * _266) + -mem[64] + 96]
        if not ext_call.success:
            _448 = mem[_262 + ceil32(return_data.size)]
            _449 = mem[64]
            mem[mem[64]] = mem[_262 + ceil32(return_data.size)]
            mem[64] = mem[64] + (32 * _448) + 32
            if not _448:
                require mem[_449] - 1 < mem[_449]
                _460 = mem[(32 * mem[_449] - 1) + _449 + 32]
                if mem[(32 * mem[_449] - 1) + _449 + 32] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[_449 + (32 * _448) + 32] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(create.new_address))
                staticcall address(create.new_address).get() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_449 + (32 * _448) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _449 + (32 * _448) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                _481 = mem[_449 + (32 * _448) + 32]
                require mem[_449 + (32 * _448) + 32] <= test266151307()
                require _449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 63 < _449 + (32 * _448) + return_data.size + 32
                _485 = mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]
                require mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32] <= test266151307()
                require _449 + (32 * _448) + ceil32(return_data.size) + (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 64 <= test266151307() and (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 32 >= 0
                mem[64] = _449 + (32 * _448) + ceil32(return_data.size) + (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 64
                mem[_449 + (32 * _448) + ceil32(return_data.size) + 32] = _485
                require _481 + (32 * _485) + 32 <= return_data.size
                s = 0
                t = _449 + (32 * _448) + _481 + 64
                u = _449 + (32 * _448) + ceil32(return_data.size) + 64
                while s < _485:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _460
                t = _449
                u = _449 + (32 * _448) + ceil32(return_data.size) + 32
                continue 
            mem[_449 + 32 len 32 * _448] = code.data[5186 len 32 * _448]
            require mem[_449] - 1 < mem[_449]
            _469 = mem[(32 * mem[_449] - 1) + _449 + 32]
            if mem[(32 * mem[_449] - 1) + _449 + 32] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[_449 + (32 * _448) + 32] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_449 + (32 * _448) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _449 + (32 * _448) + ceil32(return_data.size) + 32
            require return_data.size >= 32
            _483 = mem[_449 + (32 * _448) + 32]
            require mem[_449 + (32 * _448) + 32] <= test266151307()
            require _449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 63 < _449 + (32 * _448) + return_data.size + 32
            _487 = mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]
            require mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32] <= test266151307()
            require _449 + (32 * _448) + ceil32(return_data.size) + (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 64 <= test266151307() and (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 32 >= 0
            mem[64] = _449 + (32 * _448) + ceil32(return_data.size) + (32 * mem[_449 + (32 * _448) + mem[_449 + (32 * _448) + 32] + 32]) + 64
            mem[_449 + (32 * _448) + ceil32(return_data.size) + 32] = _487
            require _483 + (32 * _487) + 32 <= return_data.size
            s = 0
            t = _449 + (32 * _448) + _483 + 64
            u = _449 + (32 * _448) + ceil32(return_data.size) + 64
            while s < _487:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            idx = idx + 1
            s = _469
            t = _449
            u = _449 + (32 * _448) + ceil32(return_data.size) + 32
            continue 
        _445 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _451 = mem[_445]
        require mem[_445] <= test266151307()
        require _445 + mem[_445] + 31 < _445 + return_data.size
        _463 = mem[_445 + mem[_445]]
        require mem[_445 + mem[_445]] <= test266151307()
        require _445 + ceil32(return_data.size) + (32 * mem[_445 + mem[_445]]) + 32 <= test266151307() and (32 * mem[_445 + mem[_445]]) + 32 >= 0
        mem[64] = _445 + ceil32(return_data.size) + (32 * mem[_445 + mem[_445]]) + 32
        mem[_445 + ceil32(return_data.size)] = _463
        require _451 + (32 * _463) + 32 <= return_data.size
        v = 0
        w = _445 + _451 + 32
        x = _445 + ceil32(return_data.size) + 32
        while v < _463:
            require mem[w] == mem[w]
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        require _463 - 1 < _463
        _529 = mem[(32 * _463 - 1) + _445 + ceil32(return_data.size) + 32]
        if mem[(32 * _463 - 1) + _445 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).get() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _535 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _537 = mem[_535]
        require mem[_535] <= test266151307()
        require _535 + mem[_535] + 31 < _535 + return_data.size
        _539 = mem[_535 + mem[_535]]
        require mem[_535 + mem[_535]] <= test266151307()
        require _535 + ceil32(return_data.size) + (32 * mem[_535 + mem[_535]]) + 32 <= test266151307() and (32 * mem[_535 + mem[_535]]) + 32 >= 0
        mem[64] = _535 + ceil32(return_data.size) + (32 * mem[_535 + mem[_535]]) + 32
        mem[_535 + ceil32(return_data.size)] = _539
        require _537 + (32 * _539) + 32 <= return_data.size
        s = 0
        t = _535 + _537 + 32
        u = _535 + ceil32(return_data.size) + 32
        while s < _539:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        idx = idx + 1
        s = _529
        t = _445 + ceil32(return_data.size)
        u = _535 + ceil32(return_data.size)
        continue 
    _236 = mem[64]
    mem[mem[64]] = 64
    _239 = mem[u]
    mem[mem[64] + 64] = mem[u]
    idx = 0
    s = u + 32
    v = mem[64] + 96
    while idx < _239:
        mem[v] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        v = v + 32
        continue 
    mem[_236 + 32] = (32 * _239) + 96
    _353 = mem[t]
    mem[_236 + (32 * _239) + 96] = mem[t]
    mem[_236 + (32 * _239) + 128 len 32 * _353] = mem[t + 32 len 32 * _353]
    return memory
      from mem[64]
       len _236 + (32 * _239) + (32 * _353) + -mem[64] + 128
}



}
