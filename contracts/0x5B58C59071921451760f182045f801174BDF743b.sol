contract main {




// =====================  Runtime code  =====================


#
#  - depositedEtherGeneric(address arg1, bytes4 arg2, address arg3)
#
address adminAddress;

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getFunctionSelector(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require arg1
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function depositedBalances(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg3.length:
        mem[128 len 32 * arg3.length] = code.data[4723 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        mem[(32 * arg3.length) + 132] = address(cd[((32 * idx) + arg3 + 36)])
        mem[(32 * arg3.length) + 164] = arg2
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg3 + 36)]), arg2
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg3.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192 len floor32(arg3.length)] = mem[128 len floor32(arg3.length)]
    return Array(len=arg3.length, data=mem[128 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 192 len (32 * arg3.length) - floor32(arg3.length)]), 
}

function tokenAllowances(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[64] = (32 * arg3.length) + 128
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            if ext_code.size(address(cd[((32 * idx) + arg3 + 36)])) <= 0:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _68 = mem[64]
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = arg1
                _69 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_69 + 32] = mem[_69 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                _72 = mem[_69]
                t = _69 + 32
                u = _68 + 100
                s = mem[_69]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_68 + floor32(mem[_69]) + 100] = mem[_69 + -(mem[_69] % 32) + floor32(mem[_69]) + 64 len mem[_69] % 32] or Mask(8 * -(mem[_69] % 32) + 32, -(8 * -(mem[_69] % 32) + 32) + 256, mem[_68 + floor32(mem[_69]) + 100])
                staticcall address(cd[((32 * idx) + arg3 + 36)]).mem[_68 + 100 len 4] with:
                        gas gas_remaining wei
                       args mem[_68 + 104 len _72 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] != 32:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    mem[64] = _68 + ceil32(return_data.size) + 101
                    mem[_68 + 100] = return_data.size
                    mem[_68 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 0
                    else:
                        if 32 != return_data.size:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = mem[_68 + 132]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg3.length] = code.data[4723 len 32 * arg3.length]
        idx = 0
        while idx < arg3.length:
            if ext_code.size(address(cd[((32 * idx) + arg3 + 36)])) <= 0:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _73 = mem[64]
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = arg1
                _74 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_74 + 32] = mem[_74 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                _77 = mem[_74]
                t = _74 + 32
                u = _73 + 100
                s = mem[_74]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_73 + floor32(mem[_74]) + 100] = mem[_74 + -(mem[_74] % 32) + floor32(mem[_74]) + 64 len mem[_74] % 32] or Mask(8 * -(mem[_74] % 32) + 32, -(8 * -(mem[_74] % 32) + 32) + 256, mem[_73 + floor32(mem[_74]) + 100])
                staticcall address(cd[((32 * idx) + arg3 + 36)]).mem[_73 + 100 len 4] with:
                        gas gas_remaining wei
                       args mem[_73 + 104 len _77 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] != 32:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    mem[64] = _73 + ceil32(return_data.size) + 101
                    mem[_73 + 100] = return_data.size
                    mem[_73 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 0
                    else:
                        if 32 != return_data.size:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = mem[_73 + 132]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function tokenBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if not address(cd[((32 * idx) + arg2 + 36)]):
                require idx < mem[96]
                mem[(32 * idx) + 128] = eth.balance(arg1)
            else:
                require idx < arg2.length
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _72 = mem[64]
                    mem[mem[64] + 36] = arg1
                    _73 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_73 + 32] = mem[_73 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    _76 = mem[_73]
                    t = _73 + 32
                    u = _72 + 68
                    s = mem[_73]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_72 + floor32(mem[_73]) + 68] = mem[_73 + -(mem[_73] % 32) + floor32(mem[_73]) + 64 len mem[_73] % 32] or Mask(8 * -(mem[_73] % 32) + 32, -(8 * -(mem[_73] % 32) + 32) + 256, mem[_72 + floor32(mem[_73]) + 68])
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[_72 + 68 len 4] with:
                            gas gas_remaining wei
                           args mem[_72 + 72 len _76 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _72 + ceil32(return_data.size) + 69
                        mem[_72 + 68] = return_data.size
                        mem[_72 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_72 + 100]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length] = code.data[4723 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if not address(cd[((32 * idx) + arg2 + 36)]):
                require idx < mem[96]
                mem[(32 * idx) + 128] = eth.balance(arg1)
            else:
                require idx < arg2.length
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _77 = mem[64]
                    mem[mem[64] + 36] = arg1
                    _78 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_78 + 32] = mem[_78 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    _81 = mem[_78]
                    t = _78 + 32
                    u = _77 + 68
                    s = mem[_78]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_77 + floor32(mem[_78]) + 68] = mem[_78 + -(mem[_78] % 32) + floor32(mem[_78]) + 64 len mem[_78] % 32] or Mask(8 * -(mem[_78] % 32) + 32, -(8 * -(mem[_78] % 32) + 32) + 256, mem[_77 + floor32(mem[_78]) + 68])
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[_77 + 68 len 4] with:
                            gas gas_remaining wei
                           args mem[_77 + 72 len _81 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _77 + ceil32(return_data.size) + 69
                        mem[_77 + 68] = return_data.size
                        mem[_77 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_77 + 100]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function depositedBalancesGeneric(address arg1, bytes4 arg2, address arg3, address[] arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[64] = (32 * arg4.length) + 128
    if not arg4.length:
        if not arg5:
            idx = 0
            while idx < arg4.length:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _134 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = arg3
                    _135 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_135 + 32] = mem[_135 + 36 len 28] or Mask(32, 224, arg2)
                    _138 = mem[_135]
                    t = _135 + 32
                    u = _134 + 100
                    s = mem[_135]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_134 + floor32(mem[_135]) + 100] = mem[_135 + -(mem[_135] % 32) + floor32(mem[_135]) + 64 len mem[_135] % 32] or Mask(8 * -(mem[_135] % 32) + 32, -(8 * -(mem[_135] % 32) + 32) + 256, mem[_134 + floor32(mem[_135]) + 100])
                    staticcall arg1.mem[_134 + 100 len 4] with:
                            gas gas_remaining wei
                           args mem[_134 + 104 len _138 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _134 + ceil32(return_data.size) + 101
                        mem[_134 + 100] = return_data.size
                        mem[_134 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_134 + 132]
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg4.length:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _139 = mem[64]
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = address(cd[((32 * idx) + arg4 + 36)])
                    _140 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_140 + 32] = mem[_140 + 36 len 28] or Mask(32, 224, arg2)
                    _143 = mem[_140]
                    t = _140 + 32
                    u = _139 + 100
                    s = mem[_140]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_139 + floor32(mem[_140]) + 100] = mem[_140 + -(mem[_140] % 32) + floor32(mem[_140]) + 64 len mem[_140] % 32] or Mask(8 * -(mem[_140] % 32) + 32, -(8 * -(mem[_140] % 32) + 32) + 256, mem[_139 + floor32(mem[_140]) + 100])
                    staticcall arg1.mem[_139 + 100 len 4] with:
                            gas gas_remaining wei
                           args mem[_139 + 104 len _143 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _139 + ceil32(return_data.size) + 101
                        mem[_139 + 100] = return_data.size
                        mem[_139 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_139 + 132]
                idx = idx + 1
                continue 
    else:
        mem[128 len 32 * arg4.length] = code.data[4723 len 32 * arg4.length]
        if not arg5:
            idx = 0
            while idx < arg4.length:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _144 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = arg3
                    _145 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_145 + 32] = mem[_145 + 36 len 28] or Mask(32, 224, arg2)
                    _148 = mem[_145]
                    t = _145 + 32
                    u = _144 + 100
                    s = mem[_145]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_144 + floor32(mem[_145]) + 100] = mem[_145 + -(mem[_145] % 32) + floor32(mem[_145]) + 64 len mem[_145] % 32] or Mask(8 * -(mem[_145] % 32) + 32, -(8 * -(mem[_145] % 32) + 32) + 256, mem[_144 + floor32(mem[_145]) + 100])
                    staticcall arg1.mem[_144 + 100 len 4] with:
                            gas gas_remaining wei
                           args mem[_144 + 104 len _148 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _144 + ceil32(return_data.size) + 101
                        mem[_144 + 100] = return_data.size
                        mem[_144 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_144 + 132]
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg4.length:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                else:
                    _149 = mem[64]
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = address(cd[((32 * idx) + arg4 + 36)])
                    _150 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_150 + 32] = mem[_150 + 36 len 28] or Mask(32, 224, arg2)
                    _153 = mem[_150]
                    t = _150 + 32
                    u = _149 + 100
                    s = mem[_150]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_149 + floor32(mem[_150]) + 100] = mem[_150 + -(mem[_150] % 32) + floor32(mem[_150]) + 64 len mem[_150] % 32] or Mask(8 * -(mem[_150] % 32) + 32, -(8 * -(mem[_150] % 32) + 32) + 256, mem[_149 + floor32(mem[_150]) + 100])
                    staticcall arg1.mem[_149 + 100 len 4] with:
                            gas gas_remaining wei
                           args mem[_149 + 104 len _153 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if mem[96] != 32:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[128]
                    else:
                        mem[64] = _149 + ceil32(return_data.size) + 101
                        mem[_149 + 100] = return_data.size
                        mem[_149 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = 0
                        else:
                            if 32 != return_data.size:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = mem[_149 + 132]
                idx = idx + 1
                continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
