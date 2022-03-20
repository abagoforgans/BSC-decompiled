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
        require arg1.length <= test266151307()
        if not arg1.length:
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
        else:
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            mem[(64 * arg1.length) + 160] = 32
            mem[(64 * arg1.length) + 192] = arg1.length
            mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = call.data[calldata.size len floor32(arg1.length)]
        return memory
          from (64 * arg1.length) + 160
           len (161 * arg1.length) + 64
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _34 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]
    _38 = mem[_34 + (32 * arg1.length) + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_34 + (32 * arg1.length) + 128])] = mem[_34 + (32 * arg1.length) + 160 len floor32(mem[_34 + (32 * arg1.length) + 128])]
    mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 160] = 32
    mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192] = mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])]
    return 32, mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192 len (32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128]) + 32], 
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
        mem[mem[64] len 552] = code.data[4094 len 552]
        create contract with 0 wei
                        code: code.data[4094 len 552]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x89b09de700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx != mem[96]:
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(create.new_address))
            call address(create.new_address).push(address rg1) with:
                 gas gas_remaining wei
                args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _157 = mem[_154]
            require mem[_154] <= 4294967296
            require mem[_154] + 32 <= return_data.size
            require mem[mem[_154] + _154] <= 4294967296 and mem[_154] + (32 * mem[mem[_154] + _154]) + 32 <= return_data.size
            mem[_154 + ceil32(return_data.size)] = mem[mem[_154] + _154]
            _162 = mem[_157 + _154]
            v = 0
            while v < 32 * _162:
                mem[_154 + ceil32(return_data.size) + v + 32] = mem[_157 + _154 + v + 32]
                v = v + 32
                continue 
            mem[64] = (32 * _162) + _154 + ceil32(return_data.size) + 32
            mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _162) + _154 + ceil32(return_data.size) + 36] = arg4
            mem[(32 * _162) + _154 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _162) + _154 + ceil32(return_data.size) + 100] = mem[_154 + ceil32(return_data.size)]
            v = 0
            while v < 32 * mem[_154 + ceil32(return_data.size)]:
                mem[(32 * _162) + _154 + ceil32(return_data.size) + v + 132] = mem[_154 + ceil32(return_data.size) + v + 32]
                v = v + 32
                continue 
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args arg4, 64, mem[(32 * _162) + _154 + ceil32(return_data.size) + 100 len (32 * mem[_154 + ceil32(return_data.size)]) + 32]
            if not ext_call.success:
                _369 = mem[_154 + ceil32(return_data.size)]
                require mem[_154 + ceil32(return_data.size)] <= test266151307()
                mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] = mem[_154 + ceil32(return_data.size)]
                mem[64] = (32 * _162) + _154 + ceil32(return_data.size) + (32 * mem[_154 + ceil32(return_data.size)]) + 64
                if not _369:
                    require mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _162) + _154 + ceil32(return_data.size) + 32]
                    _385 = mem[(32 * mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1) + (32 * _162) + _154 + ceil32(return_data.size) + 64]
                    if mem[(32 * mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1) + (32 * _162) + _154 + ceil32(return_data.size) + 64] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        continue 
                    mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).get() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                    require return_data.size >= 32
                    _405 = mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                    require mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296
                    require mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + 32 <= return_data.size
                    require mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296 and mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]) + 32 <= return_data.size
                    mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64] = mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                    _427 = mem[_405 + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                    s = 0
                    while s < 32 * _427:
                        mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + s + 96] = mem[_405 + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + s + 96]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _427) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 96
                    idx = idx + 1
                    s = _385
                    t = (32 * _162) + _154 + ceil32(return_data.size) + 32
                    u = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                    continue 
                mem[(32 * _162) + _154 + ceil32(return_data.size) + 64 len 32 * _369] = call.data[calldata.size len 32 * _369]
                require mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _162) + _154 + ceil32(return_data.size) + 32]
                _395 = mem[(32 * mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1) + (32 * _162) + _154 + ceil32(return_data.size) + 64]
                if mem[(32 * mem[(32 * _162) + _154 + ceil32(return_data.size) + 32] - 1) + (32 * _162) + _154 + ceil32(return_data.size) + 64] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(create.new_address))
                staticcall address(create.new_address).get() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                require return_data.size >= 32
                _415 = mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                require mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296
                require mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + 32 <= return_data.size
                require mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] <= 4294967296 and mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]) + 32 <= return_data.size
                mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64] = mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64] + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                _431 = mem[_415 + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + 64]
                s = 0
                while s < 32 * _431:
                    mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + s + 96] = mem[_415 + (32 * _162) + _154 + ceil32(return_data.size) + (32 * _369) + s + 96]
                    s = s + 32
                    continue 
                mem[64] = (32 * _431) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 96
                idx = idx + 1
                s = _395
                t = (32 * _162) + _154 + ceil32(return_data.size) + 32
                u = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + (32 * _369) + 64
                continue 
            mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _370 = mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32
            require mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _162) + _154 + ceil32(return_data.size) + 32] <= 4294967296 and mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _162) + _154 + ceil32(return_data.size) + 32]) + 32 <= return_data.size
            mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32] = mem[mem[(32 * _162) + _154 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _162) + _154 + ceil32(return_data.size) + 32]
            _379 = mem[_370 + (32 * _162) + _154 + ceil32(return_data.size) + 32]
            v = 0
            while v < 32 * _379:
                mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + v + 64] = mem[_370 + (32 * _162) + _154 + ceil32(return_data.size) + v + 64]
                v = v + 32
                continue 
            mem[64] = (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32]
            _459 = mem[(32 * mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64]
            if mem[(32 * mem[(32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _379) + (32 * _162) + _154 + (4 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            _467 = mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64]
            require mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] <= 4294967296
            require mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] + 32 <= return_data.size
            require mem[mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] + (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] <= 4294967296 and mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] + (32 * mem[mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] + (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64]) + 32 <= return_data.size
            mem[(32 * _379) + (32 * _162) + _154 + (4 * ceil32(return_data.size)) + 64] = mem[mem[(32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64] + (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64]
            _473 = mem[_467 + (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 64]
            s = 0
            while s < 32 * _473:
                mem[(32 * _379) + (32 * _162) + _154 + (4 * ceil32(return_data.size)) + s + 96] = mem[_467 + (32 * _379) + (32 * _162) + _154 + (2 * ceil32(return_data.size)) + s + 96]
                s = s + 32
                continue 
            mem[64] = (32 * _473) + (32 * _379) + (32 * _162) + _154 + (4 * ceil32(return_data.size)) + 96
            idx = idx + 1
            s = _459
            t = (32 * _162) + _154 + (2 * ceil32(return_data.size)) + 32
            u = (32 * _379) + (32 * _162) + _154 + (4 * ceil32(return_data.size)) + 64
            continue 
        require idx < mem[96]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = arg3
        require ext_code.size(address(create.new_address))
        call address(create.new_address).push(address rg1) with:
             gas gas_remaining wei
            args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).get() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_163]
        require mem[_163] <= 4294967296
        require mem[_163] + 32 <= return_data.size
        require mem[mem[_163] + _163] <= 4294967296 and mem[_163] + (32 * mem[mem[_163] + _163]) + 32 <= return_data.size
        mem[_163 + ceil32(return_data.size)] = mem[mem[_163] + _163]
        _171 = mem[_164 + _163]
        v = 0
        while v < 32 * _171:
            mem[_163 + ceil32(return_data.size) + v + 32] = mem[_164 + _163 + v + 32]
            v = v + 32
            continue 
        mem[64] = (32 * _171) + _163 + ceil32(return_data.size) + 32
        mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _171) + _163 + ceil32(return_data.size) + 36] = arg4
        mem[(32 * _171) + _163 + ceil32(return_data.size) + 68] = 64
        mem[(32 * _171) + _163 + ceil32(return_data.size) + 100] = mem[_163 + ceil32(return_data.size)]
        v = 0
        while v < 32 * mem[_163 + ceil32(return_data.size)]:
            mem[(32 * _171) + _163 + ceil32(return_data.size) + v + 132] = mem[_163 + ceil32(return_data.size) + v + 32]
            v = v + 32
            continue 
        require ext_code.size(stor1)
        call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args arg4, 64, mem[(32 * _171) + _163 + ceil32(return_data.size) + 100 len (32 * mem[_163 + ceil32(return_data.size)]) + 32]
        if not ext_call.success:
            _372 = mem[_163 + ceil32(return_data.size)]
            require mem[_163 + ceil32(return_data.size)] <= test266151307()
            mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] = mem[_163 + ceil32(return_data.size)]
            mem[64] = (32 * _171) + _163 + ceil32(return_data.size) + (32 * mem[_163 + ceil32(return_data.size)]) + 64
            if not _372:
                require mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _171) + _163 + ceil32(return_data.size) + 32]
                _389 = mem[(32 * mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1) + (32 * _171) + _163 + ceil32(return_data.size) + 64]
                if mem[(32 * mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1) + (32 * _171) + _163 + ceil32(return_data.size) + 64] <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(create.new_address))
                staticcall address(create.new_address).get() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64
                require return_data.size >= 32
                _410 = mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
                require mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] <= 4294967296
                require mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + 32 <= return_data.size
                require mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] <= 4294967296 and mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]) + 32 <= return_data.size
                mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64] = mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
                _429 = mem[_410 + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
                s = 0
                while s < 32 * _429:
                    mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + s + 96] = mem[_410 + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + s + 96]
                    s = s + 32
                    continue 
                mem[64] = (32 * _429) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 96
                idx = idx + 1
                s = _389
                t = (32 * _171) + _163 + ceil32(return_data.size) + 32
                u = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64
                continue 
            mem[(32 * _171) + _163 + ceil32(return_data.size) + 64 len 32 * _372] = call.data[calldata.size len 32 * _372]
            require mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1 < mem[(32 * _171) + _163 + ceil32(return_data.size) + 32]
            _398 = mem[(32 * mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1) + (32 * _171) + _163 + ceil32(return_data.size) + 64]
            if mem[(32 * mem[(32 * _171) + _163 + ceil32(return_data.size) + 32] - 1) + (32 * _171) + _163 + ceil32(return_data.size) + 64] <= s:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).get() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64
            require return_data.size >= 32
            _418 = mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
            require mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] <= 4294967296
            require mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + 32 <= return_data.size
            require mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] <= 4294967296 and mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]) + 32 <= return_data.size
            mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64] = mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64] + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
            _433 = mem[_418 + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + 64]
            s = 0
            while s < 32 * _433:
                mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + s + 96] = mem[_418 + (32 * _171) + _163 + ceil32(return_data.size) + (32 * _372) + s + 96]
                s = s + 32
                continue 
            mem[64] = (32 * _433) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 96
            idx = idx + 1
            s = _398
            t = (32 * _171) + _163 + ceil32(return_data.size) + 32
            u = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + (32 * _372) + 64
            continue 
        mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        _373 = mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _171) + _163 + ceil32(return_data.size) + 32] <= 4294967296 and mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _171) + _163 + ceil32(return_data.size) + 32]) + 32 <= return_data.size
        mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32] = mem[mem[(32 * _171) + _163 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg4) >> 32 + (32 * _171) + _163 + ceil32(return_data.size) + 32]
        _380 = mem[_373 + (32 * _171) + _163 + ceil32(return_data.size) + 32]
        v = 0
        while v < 32 * _380:
            mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + v + 64] = mem[_373 + (32 * _171) + _163 + ceil32(return_data.size) + v + 64]
            v = v + 32
            continue 
        mem[64] = (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64
        require mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32]
        _460 = mem[(32 * mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64]
        if mem[(32 * mem[(32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] <= s:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] = 0x6d4ce63c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).get() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _380) + (32 * _171) + _163 + (4 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        _469 = mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64]
        require mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] <= 4294967296
        require mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] + 32 <= return_data.size
        require mem[mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] <= 4294967296 and mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] + (32 * mem[mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64]) + 32 <= return_data.size
        mem[(32 * _380) + (32 * _171) + _163 + (4 * ceil32(return_data.size)) + 64] = mem[mem[(32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64] + (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64]
        _474 = mem[_469 + (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 64]
        s = 0
        while s < 32 * _474:
            mem[(32 * _380) + (32 * _171) + _163 + (4 * ceil32(return_data.size)) + s + 96] = mem[_469 + (32 * _380) + (32 * _171) + _163 + (2 * ceil32(return_data.size)) + s + 96]
            s = s + 32
            continue 
        mem[64] = (32 * _474) + (32 * _380) + (32 * _171) + _163 + (4 * ceil32(return_data.size)) + 96
        idx = idx + 1
        s = _460
        t = (32 * _171) + _163 + (2 * ceil32(return_data.size)) + 32
        u = (32 * _380) + (32 * _171) + _163 + (4 * ceil32(return_data.size)) + 64
        continue 
    _134 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[u]
    _136 = mem[u]
    mem[mem[64] + 96 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    mem[mem[64] + 32] = (32 * _136) + 96
    mem[(32 * _136) + _134 + 96] = mem[t]
    _263 = mem[t]
    mem[(32 * _136) + _134 + 128 len floor32(mem[t])] = mem[t + 32 len floor32(mem[t])]
    return memory
      from mem[64]
       len (32 * _263) + (32 * _136) + _134 + -mem[64] + 128
}



}
