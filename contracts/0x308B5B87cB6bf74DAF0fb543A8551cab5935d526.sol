contract main {




// =====================  Runtime code  =====================


#
#  - sub_41292edb(?)
#
address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function getBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == stor0:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
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
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg2, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        if not arg1.length:
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
        else:
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[4242 len 32 * arg1.length]
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = code.data[4242 len floor32(arg1.length)]
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
        mem[mem[64]] = 0x89b09de700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(stor2)
        call stor2.0x89b09de7 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx != mem[96]:
            mem[mem[64] + 4] = arg3
            require ext_code.size(stor2)
            call stor2.0x89b09de7 with:
                 gas gas_remaining wei
                args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2)
            call stor2.0x6d4ce63c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_150]
            require mem[_150] <= 4294967296
            require mem[_150] + 32 <= return_data.size
            require mem[mem[_150] + _150] <= 4294967296 and mem[_150] + (32 * mem[mem[_150] + _150]) + 32 <= return_data.size
            mem[_150 + ceil32(return_data.size)] = mem[mem[_150] + _150]
            _158 = mem[_153 + _150]
            v = 0
            while v < 32 * _158:
                mem[_150 + ceil32(return_data.size) + v + 32] = mem[_153 + _150 + v + 32]
                v = v + 32
                continue 
            mem[64] = (32 * _158) + _150 + ceil32(return_data.size) + 32
            mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _158) + _150 + ceil32(return_data.size) + 36] = arg4
            mem[(32 * _158) + _150 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _158) + _150 + ceil32(return_data.size) + 100] = mem[_150 + ceil32(return_data.size)]
            v = 0
            while v < 32 * mem[_150 + ceil32(return_data.size)]:
                mem[(32 * _158) + _150 + ceil32(return_data.size) + v + 132] = mem[_150 + ceil32(return_data.size) + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args arg4, 64, mem[(32 * _158) + _150 + ceil32(return_data.size) + 100 len (32 * mem[_150 + ceil32(return_data.size)]) + 32]
            if not ext_call.success:
                _365 = mem[_150 + ceil32(return_data.size)]
                mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] = mem[_150 + ceil32(return_data.size)]
                mem[64] = (32 * _158) + _150 + ceil32(return_data.size) + (32 * mem[_150 + ceil32(return_data.size)]) + 64
                if not _365:
                    require mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _158) + _150 + ceil32(return_data.size) + 32]
                    _381 = mem[(32 * mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1) + (32 * _158) + _150 + ceil32(return_data.size) + 64]
                    if mem[(32 * mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1) + (32 * _158) + _150 + ceil32(return_data.size) + 64] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2)
                    call stor2.0x6d4ce63c with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64
                    require return_data.size >= 32
                    _401 = mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                    require mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] <= 4294967296
                    require mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + 32 <= return_data.size
                    require mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] <= 4294967296 and mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]) + 32 <= return_data.size
                    mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64] = mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                    _419 = mem[_401 + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                    s = 0
                    while s < 32 * _419:
                        mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + s + 96] = mem[_401 + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + s + 96]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _419) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 96
                    idx = idx + 1
                    s = _381
                    t = (32 * _158) + _150 + ceil32(return_data.size) + 32
                    u = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64
                    continue 
                mem[(32 * _158) + _150 + ceil32(return_data.size) + 64 len 32 * _365] = code.data[4242 len 32 * _365]
                require mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _158) + _150 + ceil32(return_data.size) + 32]
                _389 = mem[(32 * mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1) + (32 * _158) + _150 + ceil32(return_data.size) + 64]
                if mem[(32 * mem[(32 * _158) + _150 + ceil32(return_data.size) + 32] - 1) + (32 * _158) + _150 + ceil32(return_data.size) + 64] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2)
                call stor2.0x6d4ce63c with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64
                require return_data.size >= 32
                _407 = mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                require mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] <= 4294967296
                require mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + 32 <= return_data.size
                require mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] <= 4294967296 and mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]) + 32 <= return_data.size
                mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64] = mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64] + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                _427 = mem[_407 + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + 64]
                s = 0
                while s < 32 * _427:
                    mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + s + 96] = mem[_407 + (32 * _158) + _150 + ceil32(return_data.size) + (32 * _365) + s + 96]
                    s = s + 32
                    continue 
                mem[64] = (32 * _427) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 96
                idx = idx + 1
                s = _389
                t = (32 * _158) + _150 + ceil32(return_data.size) + 32
                u = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + (32 * _365) + 64
                continue 
            mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _367 = mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32
            require mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _158) + _150 + ceil32(return_data.size) + 32] <= 4294967296 and mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _158) + _150 + ceil32(return_data.size) + 32]) + 32 <= return_data.size
            mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32] = mem[mem[(32 * _158) + _150 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _158) + _150 + ceil32(return_data.size) + 32]
            _377 = mem[_367 + (32 * _158) + _150 + ceil32(return_data.size) + 32]
            v = 0
            while v < 32 * _377:
                mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + v + 64] = mem[_367 + (32 * _158) + _150 + ceil32(return_data.size) + v + 64]
                v = v + 32
                continue 
            mem[64] = (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32]
            _455 = mem[(32 * mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64]
            if mem[(32 * mem[(32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2)
            call stor2.0x6d4ce63c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _377) + (32 * _158) + _150 + (4 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            _463 = mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64]
            require mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] <= 4294967296
            require mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] + 32 <= return_data.size
            require mem[mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] + (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] <= 4294967296 and mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] + (32 * mem[mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] + (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64]) + 32 <= return_data.size
            mem[(32 * _377) + (32 * _158) + _150 + (4 * ceil32(return_data.size)) + 64] = mem[mem[(32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64] + (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64]
            _469 = mem[_463 + (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 64]
            s = 0
            while s < 32 * _469:
                mem[(32 * _377) + (32 * _158) + _150 + (4 * ceil32(return_data.size)) + s + 96] = mem[_463 + (32 * _377) + (32 * _158) + _150 + (2 * ceil32(return_data.size)) + s + 96]
                s = s + 32
                continue 
            mem[64] = (32 * _469) + (32 * _377) + (32 * _158) + _150 + (4 * ceil32(return_data.size)) + 96
            idx = idx + 1
            s = _455
            t = (32 * _158) + _150 + (2 * ceil32(return_data.size)) + 32
            u = (32 * _377) + (32 * _158) + _150 + (4 * ceil32(return_data.size)) + 64
            continue 
        require idx < mem[96]
        require ext_code.size(stor2)
        call stor2.0x89b09de7 with:
             gas gas_remaining wei
            args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = arg3
        require ext_code.size(stor2)
        call stor2.0x89b09de7 with:
             gas gas_remaining wei
            args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2)
        call stor2.0x6d4ce63c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_159]
        require mem[_159] <= 4294967296
        require mem[_159] + 32 <= return_data.size
        require mem[mem[_159] + _159] <= 4294967296 and mem[_159] + (32 * mem[mem[_159] + _159]) + 32 <= return_data.size
        mem[_159 + ceil32(return_data.size)] = mem[mem[_159] + _159]
        _167 = mem[_160 + _159]
        v = 0
        while v < 32 * _167:
            mem[_159 + ceil32(return_data.size) + v + 32] = mem[_160 + _159 + v + 32]
            v = v + 32
            continue 
        mem[64] = (32 * _167) + _159 + ceil32(return_data.size) + 32
        mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _167) + _159 + ceil32(return_data.size) + 36] = arg4
        mem[(32 * _167) + _159 + ceil32(return_data.size) + 68] = 64
        mem[(32 * _167) + _159 + ceil32(return_data.size) + 100] = mem[_159 + ceil32(return_data.size)]
        v = 0
        while v < 32 * mem[_159 + ceil32(return_data.size)]:
            mem[(32 * _167) + _159 + ceil32(return_data.size) + v + 132] = mem[_159 + ceil32(return_data.size) + v + 32]
            v = v + 32
            continue 
        require ext_code.size(stor1)
        call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args arg4, 64, mem[(32 * _167) + _159 + ceil32(return_data.size) + 100 len (32 * mem[_159 + ceil32(return_data.size)]) + 32]
        if not ext_call.success:
            _369 = mem[_159 + ceil32(return_data.size)]
            mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] = mem[_159 + ceil32(return_data.size)]
            mem[64] = (32 * _167) + _159 + ceil32(return_data.size) + (32 * mem[_159 + ceil32(return_data.size)]) + 64
            if not _369:
                require mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _167) + _159 + ceil32(return_data.size) + 32]
                _384 = mem[(32 * mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1) + (32 * _167) + _159 + ceil32(return_data.size) + 64]
                if mem[(32 * mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1) + (32 * _167) + _159 + ceil32(return_data.size) + 64] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2)
                call stor2.0x6d4ce63c with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                require return_data.size >= 32
                _404 = mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
                require mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296
                require mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + 32 <= return_data.size
                require mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296 and mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]) + 32 <= return_data.size
                mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64] = mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
                _423 = mem[_404 + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
                s = 0
                while s < 32 * _423:
                    mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + s + 96] = mem[_404 + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + s + 96]
                    s = s + 32
                    continue 
                mem[64] = (32 * _423) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 96
                idx = idx + 1
                s = _384
                t = (32 * _167) + _159 + ceil32(return_data.size) + 32
                u = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                continue 
            mem[(32 * _167) + _159 + ceil32(return_data.size) + 64 len 32 * _369] = code.data[4242 len 32 * _369]
            require mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _167) + _159 + ceil32(return_data.size) + 32]
            _393 = mem[(32 * mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1) + (32 * _167) + _159 + ceil32(return_data.size) + 64]
            if mem[(32 * mem[(32 * _167) + _159 + ceil32(return_data.size) + 32] - 1) + (32 * _167) + _159 + ceil32(return_data.size) + 64] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2)
            call stor2.0x6d4ce63c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
            require return_data.size >= 32
            _411 = mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
            require mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296
            require mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + 32 <= return_data.size
            require mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296 and mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]) + 32 <= return_data.size
            mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64] = mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
            _428 = mem[_411 + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + 64]
            s = 0
            while s < 32 * _428:
                mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + s + 96] = mem[_411 + (32 * _167) + _159 + ceil32(return_data.size) + (32 * _369) + s + 96]
                s = s + 32
                continue 
            mem[64] = (32 * _428) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 96
            idx = idx + 1
            s = _393
            t = (32 * _167) + _159 + ceil32(return_data.size) + 32
            u = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
            continue 
        mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        _371 = mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _167) + _159 + ceil32(return_data.size) + 32] <= 4294967296 and mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _167) + _159 + ceil32(return_data.size) + 32]) + 32 <= return_data.size
        mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32] = mem[mem[(32 * _167) + _159 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _167) + _159 + ceil32(return_data.size) + 32]
        _380 = mem[_371 + (32 * _167) + _159 + ceil32(return_data.size) + 32]
        v = 0
        while v < 32 * _380:
            mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + v + 64] = mem[_371 + (32 * _167) + _159 + ceil32(return_data.size) + v + 64]
            v = v + 32
            continue 
        mem[64] = (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64
        require mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32]
        _456 = mem[(32 * mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64]
        if mem[(32 * mem[(32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] <= s:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2)
        call stor2.0x6d4ce63c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _380) + (32 * _167) + _159 + (4 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        _465 = mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64]
        require mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] <= 4294967296
        require mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] + 32 <= return_data.size
        require mem[mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] <= 4294967296 and mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] + (32 * mem[mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64]) + 32 <= return_data.size
        mem[(32 * _380) + (32 * _167) + _159 + (4 * ceil32(return_data.size)) + 64] = mem[mem[(32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64]
        _470 = mem[_465 + (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 64]
        s = 0
        while s < 32 * _470:
            mem[(32 * _380) + (32 * _167) + _159 + (4 * ceil32(return_data.size)) + s + 96] = mem[_465 + (32 * _380) + (32 * _167) + _159 + (2 * ceil32(return_data.size)) + s + 96]
            s = s + 32
            continue 
        mem[64] = (32 * _470) + (32 * _380) + (32 * _167) + _159 + (4 * ceil32(return_data.size)) + 96
        idx = idx + 1
        s = _456
        t = (32 * _167) + _159 + (2 * ceil32(return_data.size)) + 32
        u = (32 * _380) + (32 * _167) + _159 + (4 * ceil32(return_data.size)) + 64
        continue 
    _133 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[u]
    _135 = mem[u]
    mem[mem[64] + 96 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    mem[mem[64] + 32] = (32 * _135) + 96
    mem[(32 * _135) + _133 + 96] = mem[t]
    _259 = mem[t]
    mem[(32 * _135) + _133 + 128 len floor32(mem[t])] = mem[t + 32 len floor32(mem[t])]
    return memory
      from mem[64]
       len (32 * _259) + (32 * _135) + _133 + -mem[64] + 128
}



}
