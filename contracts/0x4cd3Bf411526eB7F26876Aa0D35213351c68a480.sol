contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ef63875c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == bool(cd[100])
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 != ('cd', 36).length:
        revert with 0, 'P: Error 1'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _1261 = mem[128]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = stor0
    staticcall address(_1261).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if cd[68] <= ext_call.return_data[0]:
        idx = 0
        s = cd[68]
        t = 96
        while idx < ('cd', 36).length:
            if not cd[100]:
                _2197 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2197 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2197]:
                    revert with 'NH{q', 50
                mem[_2197 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2197]:
                    revert with 'NH{q', 50
                mem[_2197 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2242 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2197 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2197 + 100] = s
                mem[_2197 + 132] = 64
                mem[_2197 + 164] = mem[_2197]
                s = 0
                t = _2197 + 32
                u = _2197 + 196
                while s < mem[_2197]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_2242).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2197 + (32 * mem[_2197]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3718 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3760 = mem[_3718]
                require mem[_3718] <= test266151307()
                require _3718 + mem[_3718] + 31 < _3718 + return_data.size
                _3810 = mem[_3718 + mem[_3718]]
                if mem[_3718 + mem[_3718]] > test266151307():
                    revert with 'NH{q', 65
                if _3718 + ceil32(return_data.size) + floor32(mem[_3718 + mem[_3718]]) + 1 > test266151307() or floor32(mem[_3718 + mem[_3718]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3718 + ceil32(return_data.size) + floor32(mem[_3718 + mem[_3718]]) + 1
                mem[_3718 + ceil32(return_data.size)] = _3810
                require _3760 + (32 * _3810) + 32 <= return_data.size
                s = _3718 + _3760 + 32
                t = _3718 + ceil32(return_data.size) + 32
                while s < _3718 + _3760 + (32 * _3810) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3810 < 1:
                    revert with 'NH{q', 17
                if _3810 - 1 >= _3810:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3810 - 1) + _3718 + ceil32(return_data.size) + 32]
                t = _2197
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2206 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _2226 = mem[(32 * idx + 1) + 128]
            staticcall mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2244 = mem[_2233]
            require mem[_2233] == mem[_2233 + 12 len 20]
            if address(_2206) == address(_2226):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2206) < address(_2226):
                if not address(_2206):
                    revert with 0, 'P: ZERO_ADDRESS'
                if address(_2206) == address(_2226):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2206) < address(_2226):
                    if not address(_2206):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2206)
                    mem[mem[64] + 36] = address(_2226)
                    staticcall address(_2244).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2206), address(_2226)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2368] == mem[_2368 + 12 len 20]
                    if not mem[_2368 + 12 len 20]:
                        mem[mem[64] + 32] = 0
                        emit 0x80d4cbb8: 0
                        _2498 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2498 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2498]:
                            revert with 'NH{q', 50
                        mem[_2498 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2498]:
                            revert with 'NH{q', 50
                        mem[_2498 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _2646 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2498 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2498 + 100] = s
                        mem[_2498 + 132] = 64
                        mem[_2498 + 164] = mem[_2498]
                        s = 0
                        t = _2498 + 32
                        u = _2498 + 196
                        while s < mem[_2498]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_2646).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2498 + (32 * mem[_2498]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3723 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3765 = mem[_3723]
                        require mem[_3723] <= test266151307()
                        require _3723 + mem[_3723] + 31 < _3723 + return_data.size
                        _3815 = mem[_3723 + mem[_3723]]
                        if mem[_3723 + mem[_3723]] > test266151307():
                            revert with 'NH{q', 65
                        if _3723 + ceil32(return_data.size) + floor32(mem[_3723 + mem[_3723]]) + 1 > test266151307() or floor32(mem[_3723 + mem[_3723]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3723 + ceil32(return_data.size) + floor32(mem[_3723 + mem[_3723]]) + 1
                        mem[_3723 + ceil32(return_data.size)] = _3815
                        require _3765 + (32 * _3815) + 32 <= return_data.size
                        s = _3723 + _3765 + 32
                        t = _3723 + ceil32(return_data.size) + 32
                        while s < _3723 + _3765 + (32 * _3815) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3815 < 1:
                            revert with 'NH{q', 17
                        if _3815 - 1 >= _3815:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3815 - 1) + _3723 + ceil32(return_data.size) + 32]
                        t = _2498
                        continue 
                    if address(_2206) == address(_2226):
                        revert with 0, 'P: IDENTICAL_ADDRESSES'
                    if address(_2206) < address(_2226):
                        if not address(_2206):
                            revert with 0, 'P: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(_2206)
                        mem[mem[64] + 36] = address(_2226)
                        staticcall address(_2244).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(_2206), address(_2226)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2569] == mem[_2569 + 12 len 20]
                        staticcall mem[_2569 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2738 = mem[_2720]
                        require mem[_2720] == mem[_2720 + 18 len 14]
                        _2790 = mem[_2720 + 32]
                        require mem[_2720 + 32] == mem[_2720 + 50 len 14]
                        require mem[_2720 + 64] == mem[_2720 + 92 len 4]
                        if address(_2206) == address(_2206):
                            mem[mem[64]] = mem[_2720 + 18 len 14]
                            mem[mem[64] + 32] = Mask(112, 0, _2790)
                            emit 0x80d4cbb8: mem[mem[64]], _2790 << 144
                            _2954 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_2954 + 32 len 64] = call.data[calldata.size len 64]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_2954]:
                                revert with 'NH{q', 50
                            mem[_2954 + 32] = mem[(32 * idx) + 140 len 20]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_2954]:
                                revert with 'NH{q', 50
                            mem[_2954 + 64] = mem[(32 * idx + 1) + 140 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            _3251 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            mem[_2954 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2954 + 100] = s
                            mem[_2954 + 132] = 64
                            mem[_2954 + 164] = mem[_2954]
                            s = 0
                            t = _2954 + 32
                            u = _2954 + 196
                            while s < mem[_2954]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            staticcall address(_3251).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2954 + (32 * mem[_2954]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3719 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3761 = mem[_3719]
                            require mem[_3719] <= test266151307()
                            require _3719 + mem[_3719] + 31 < _3719 + return_data.size
                            _3811 = mem[_3719 + mem[_3719]]
                            if mem[_3719 + mem[_3719]] > test266151307():
                                revert with 'NH{q', 65
                            if _3719 + ceil32(return_data.size) + floor32(mem[_3719 + mem[_3719]]) + 1 > test266151307() or floor32(mem[_3719 + mem[_3719]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3719 + ceil32(return_data.size) + floor32(mem[_3719 + mem[_3719]]) + 1
                            mem[_3719 + ceil32(return_data.size)] = _3811
                            require _3761 + (32 * _3811) + 32 <= return_data.size
                            s = _3719 + _3761 + 32
                            t = _3719 + ceil32(return_data.size) + 32
                            while s < _3719 + _3761 + (32 * _3811) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3811 < 1:
                                revert with 'NH{q', 17
                            if _3811 - 1 >= _3811:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[(32 * _3811 - 1) + _3719 + ceil32(return_data.size) + 32]
                            t = _2954
                            continue 
                        mem[mem[64]] = mem[_2720 + 50 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2738)
                        emit 0x80d4cbb8: mem[mem[64]], _2738 << 144
                        _2955 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2955 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2955]:
                            revert with 'NH{q', 50
                        mem[_2955 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2955]:
                            revert with 'NH{q', 50
                        mem[_2955 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3253 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2955 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2955 + 100] = s
                        mem[_2955 + 132] = 64
                        mem[_2955 + 164] = mem[_2955]
                        s = 0
                        t = _2955 + 32
                        u = _2955 + 196
                        while s < mem[_2955]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3253).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2955 + (32 * mem[_2955]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3720 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3762 = mem[_3720]
                        require mem[_3720] <= test266151307()
                        require _3720 + mem[_3720] + 31 < _3720 + return_data.size
                        _3812 = mem[_3720 + mem[_3720]]
                        if mem[_3720 + mem[_3720]] > test266151307():
                            revert with 'NH{q', 65
                        if _3720 + ceil32(return_data.size) + floor32(mem[_3720 + mem[_3720]]) + 1 > test266151307() or floor32(mem[_3720 + mem[_3720]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3720 + ceil32(return_data.size) + floor32(mem[_3720 + mem[_3720]]) + 1
                        mem[_3720 + ceil32(return_data.size)] = _3812
                        require _3762 + (32 * _3812) + 32 <= return_data.size
                        s = _3720 + _3762 + 32
                        t = _3720 + ceil32(return_data.size) + 32
                        while s < _3720 + _3762 + (32 * _3812) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3812 < 1:
                            revert with 'NH{q', 17
                        if _3812 - 1 >= _3812:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3812 - 1) + _3720 + ceil32(return_data.size) + 32]
                        t = _2955
                        continue 
                    if not address(_2226):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2226)
                    mem[mem[64] + 36] = address(_2206)
                    staticcall address(_2244).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2226), address(_2206)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2570 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2570] == mem[_2570 + 12 len 20]
                    staticcall mem[_2570 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2739 = mem[_2721]
                    require mem[_2721] == mem[_2721 + 18 len 14]
                    _2791 = mem[_2721 + 32]
                    require mem[_2721 + 32] == mem[_2721 + 50 len 14]
                    require mem[_2721 + 64] == mem[_2721 + 92 len 4]
                    if address(_2206) == address(_2206):
                        mem[mem[64]] = mem[_2721 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2791)
                        emit 0x80d4cbb8: mem[mem[64]], _2791 << 144
                        _2956 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2956 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2956]:
                            revert with 'NH{q', 50
                        mem[_2956 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2956]:
                            revert with 'NH{q', 50
                        mem[_2956 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3255 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2956 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2956 + 100] = s
                        mem[_2956 + 132] = 64
                        mem[_2956 + 164] = mem[_2956]
                        s = 0
                        t = _2956 + 32
                        u = _2956 + 196
                        while s < mem[_2956]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3255).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2956 + (32 * mem[_2956]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3721 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3763 = mem[_3721]
                        require mem[_3721] <= test266151307()
                        require _3721 + mem[_3721] + 31 < _3721 + return_data.size
                        _3813 = mem[_3721 + mem[_3721]]
                        if mem[_3721 + mem[_3721]] > test266151307():
                            revert with 'NH{q', 65
                        if _3721 + ceil32(return_data.size) + floor32(mem[_3721 + mem[_3721]]) + 1 > test266151307() or floor32(mem[_3721 + mem[_3721]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3721 + ceil32(return_data.size) + floor32(mem[_3721 + mem[_3721]]) + 1
                        mem[_3721 + ceil32(return_data.size)] = _3813
                        require _3763 + (32 * _3813) + 32 <= return_data.size
                        s = _3721 + _3763 + 32
                        t = _3721 + ceil32(return_data.size) + 32
                        while s < _3721 + _3763 + (32 * _3813) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3813 < 1:
                            revert with 'NH{q', 17
                        if _3813 - 1 >= _3813:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3813 - 1) + _3721 + ceil32(return_data.size) + 32]
                        t = _2956
                        continue 
                    mem[mem[64]] = mem[_2721 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2739)
                    emit 0x80d4cbb8: mem[mem[64]], _2739 << 144
                    _2957 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2957 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2957]:
                        revert with 'NH{q', 50
                    mem[_2957 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2957]:
                        revert with 'NH{q', 50
                    mem[_2957 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3257 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2957 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2957 + 100] = s
                    mem[_2957 + 132] = 64
                    mem[_2957 + 164] = mem[_2957]
                    s = 0
                    t = _2957 + 32
                    u = _2957 + 196
                    while s < mem[_2957]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3257).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2957 + (32 * mem[_2957]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3722 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3764 = mem[_3722]
                    require mem[_3722] <= test266151307()
                    require _3722 + mem[_3722] + 31 < _3722 + return_data.size
                    _3814 = mem[_3722 + mem[_3722]]
                    if mem[_3722 + mem[_3722]] > test266151307():
                        revert with 'NH{q', 65
                    if _3722 + ceil32(return_data.size) + floor32(mem[_3722 + mem[_3722]]) + 1 > test266151307() or floor32(mem[_3722 + mem[_3722]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3722 + ceil32(return_data.size) + floor32(mem[_3722 + mem[_3722]]) + 1
                    mem[_3722 + ceil32(return_data.size)] = _3814
                    require _3764 + (32 * _3814) + 32 <= return_data.size
                    s = _3722 + _3764 + 32
                    t = _3722 + ceil32(return_data.size) + 32
                    while s < _3722 + _3764 + (32 * _3814) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3814 < 1:
                        revert with 'NH{q', 17
                    if _3814 - 1 >= _3814:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3814 - 1) + _3722 + ceil32(return_data.size) + 32]
                    t = _2957
                    continue 
                if not address(_2226):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2226)
                mem[mem[64] + 36] = address(_2206)
                staticcall address(_2244).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2226), address(_2206)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2369] == mem[_2369 + 12 len 20]
                if not mem[_2369 + 12 len 20]:
                    mem[mem[64] + 32] = 0
                    emit 0x80d4cbb8: 0
                    _2501 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2501 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2501]:
                        revert with 'NH{q', 50
                    mem[_2501 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2501]:
                        revert with 'NH{q', 50
                    mem[_2501 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _2648 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2501 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2501 + 100] = s
                    mem[_2501 + 132] = 64
                    mem[_2501 + 164] = mem[_2501]
                    s = 0
                    t = _2501 + 32
                    u = _2501 + 196
                    while s < mem[_2501]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_2648).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2501 + (32 * mem[_2501]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3728 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3770 = mem[_3728]
                    require mem[_3728] <= test266151307()
                    require _3728 + mem[_3728] + 31 < _3728 + return_data.size
                    _3820 = mem[_3728 + mem[_3728]]
                    if mem[_3728 + mem[_3728]] > test266151307():
                        revert with 'NH{q', 65
                    if _3728 + ceil32(return_data.size) + floor32(mem[_3728 + mem[_3728]]) + 1 > test266151307() or floor32(mem[_3728 + mem[_3728]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3728 + ceil32(return_data.size) + floor32(mem[_3728 + mem[_3728]]) + 1
                    mem[_3728 + ceil32(return_data.size)] = _3820
                    require _3770 + (32 * _3820) + 32 <= return_data.size
                    s = _3728 + _3770 + 32
                    t = _3728 + ceil32(return_data.size) + 32
                    while s < _3728 + _3770 + (32 * _3820) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3820 < 1:
                        revert with 'NH{q', 17
                    if _3820 - 1 >= _3820:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3820 - 1) + _3728 + ceil32(return_data.size) + 32]
                    t = _2501
                    continue 
                if address(_2206) == address(_2226):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2206) < address(_2226):
                    if not address(_2206):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2206)
                    mem[mem[64] + 36] = address(_2226)
                    staticcall address(_2244).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2206), address(_2226)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2571 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2571] == mem[_2571 + 12 len 20]
                    staticcall mem[_2571 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2740 = mem[_2722]
                    require mem[_2722] == mem[_2722 + 18 len 14]
                    _2792 = mem[_2722 + 32]
                    require mem[_2722 + 32] == mem[_2722 + 50 len 14]
                    require mem[_2722 + 64] == mem[_2722 + 92 len 4]
                    if address(_2206) == address(_2206):
                        mem[mem[64]] = mem[_2722 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2792)
                        emit 0x80d4cbb8: mem[mem[64]], _2792 << 144
                        _2959 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2959 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2959]:
                            revert with 'NH{q', 50
                        mem[_2959 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2959]:
                            revert with 'NH{q', 50
                        mem[_2959 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3259 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2959 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2959 + 100] = s
                        mem[_2959 + 132] = 64
                        mem[_2959 + 164] = mem[_2959]
                        s = 0
                        t = _2959 + 32
                        u = _2959 + 196
                        while s < mem[_2959]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3259).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2959 + (32 * mem[_2959]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3724 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3766 = mem[_3724]
                        require mem[_3724] <= test266151307()
                        require _3724 + mem[_3724] + 31 < _3724 + return_data.size
                        _3816 = mem[_3724 + mem[_3724]]
                        if mem[_3724 + mem[_3724]] > test266151307():
                            revert with 'NH{q', 65
                        if _3724 + ceil32(return_data.size) + floor32(mem[_3724 + mem[_3724]]) + 1 > test266151307() or floor32(mem[_3724 + mem[_3724]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3724 + ceil32(return_data.size) + floor32(mem[_3724 + mem[_3724]]) + 1
                        mem[_3724 + ceil32(return_data.size)] = _3816
                        require _3766 + (32 * _3816) + 32 <= return_data.size
                        s = _3724 + _3766 + 32
                        t = _3724 + ceil32(return_data.size) + 32
                        while s < _3724 + _3766 + (32 * _3816) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3816 < 1:
                            revert with 'NH{q', 17
                        if _3816 - 1 >= _3816:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3816 - 1) + _3724 + ceil32(return_data.size) + 32]
                        t = _2959
                        continue 
                    mem[mem[64]] = mem[_2722 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2740)
                    emit 0x80d4cbb8: mem[mem[64]], _2740 << 144
                    _2960 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2960 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2960]:
                        revert with 'NH{q', 50
                    mem[_2960 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2960]:
                        revert with 'NH{q', 50
                    mem[_2960 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3261 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2960 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2960 + 100] = s
                    mem[_2960 + 132] = 64
                    mem[_2960 + 164] = mem[_2960]
                    s = 0
                    t = _2960 + 32
                    u = _2960 + 196
                    while s < mem[_2960]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3261).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2960 + (32 * mem[_2960]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3725 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3767 = mem[_3725]
                    require mem[_3725] <= test266151307()
                    require _3725 + mem[_3725] + 31 < _3725 + return_data.size
                    _3817 = mem[_3725 + mem[_3725]]
                    if mem[_3725 + mem[_3725]] > test266151307():
                        revert with 'NH{q', 65
                    if _3725 + ceil32(return_data.size) + floor32(mem[_3725 + mem[_3725]]) + 1 > test266151307() or floor32(mem[_3725 + mem[_3725]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3725 + ceil32(return_data.size) + floor32(mem[_3725 + mem[_3725]]) + 1
                    mem[_3725 + ceil32(return_data.size)] = _3817
                    require _3767 + (32 * _3817) + 32 <= return_data.size
                    s = _3725 + _3767 + 32
                    t = _3725 + ceil32(return_data.size) + 32
                    while s < _3725 + _3767 + (32 * _3817) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3817 < 1:
                        revert with 'NH{q', 17
                    if _3817 - 1 >= _3817:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3817 - 1) + _3725 + ceil32(return_data.size) + 32]
                    t = _2960
                    continue 
                if not address(_2226):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2226)
                mem[mem[64] + 36] = address(_2206)
                staticcall address(_2244).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2226), address(_2206)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2572] == mem[_2572 + 12 len 20]
                staticcall mem[_2572 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2741 = mem[_2723]
                require mem[_2723] == mem[_2723 + 18 len 14]
                _2793 = mem[_2723 + 32]
                require mem[_2723 + 32] == mem[_2723 + 50 len 14]
                require mem[_2723 + 64] == mem[_2723 + 92 len 4]
                if address(_2206) == address(_2206):
                    mem[mem[64]] = mem[_2723 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2793)
                    emit 0x80d4cbb8: mem[mem[64]], _2793 << 144
                    _2961 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2961 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2961]:
                        revert with 'NH{q', 50
                    mem[_2961 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2961]:
                        revert with 'NH{q', 50
                    mem[_2961 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3263 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2961 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2961 + 100] = s
                    mem[_2961 + 132] = 64
                    mem[_2961 + 164] = mem[_2961]
                    s = 0
                    t = _2961 + 32
                    u = _2961 + 196
                    while s < mem[_2961]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3263).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2961 + (32 * mem[_2961]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3726 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3768 = mem[_3726]
                    require mem[_3726] <= test266151307()
                    require _3726 + mem[_3726] + 31 < _3726 + return_data.size
                    _3818 = mem[_3726 + mem[_3726]]
                    if mem[_3726 + mem[_3726]] > test266151307():
                        revert with 'NH{q', 65
                    if _3726 + ceil32(return_data.size) + floor32(mem[_3726 + mem[_3726]]) + 1 > test266151307() or floor32(mem[_3726 + mem[_3726]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3726 + ceil32(return_data.size) + floor32(mem[_3726 + mem[_3726]]) + 1
                    mem[_3726 + ceil32(return_data.size)] = _3818
                    require _3768 + (32 * _3818) + 32 <= return_data.size
                    s = _3726 + _3768 + 32
                    t = _3726 + ceil32(return_data.size) + 32
                    while s < _3726 + _3768 + (32 * _3818) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3818 < 1:
                        revert with 'NH{q', 17
                    if _3818 - 1 >= _3818:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3818 - 1) + _3726 + ceil32(return_data.size) + 32]
                    t = _2961
                    continue 
                mem[mem[64]] = mem[_2723 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2741)
                emit 0x80d4cbb8: mem[mem[64]], _2741 << 144
                _2962 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2962 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2962]:
                    revert with 'NH{q', 50
                mem[_2962 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2962]:
                    revert with 'NH{q', 50
                mem[_2962 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3265 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2962 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2962 + 100] = s
                mem[_2962 + 132] = 64
                mem[_2962 + 164] = mem[_2962]
                s = 0
                t = _2962 + 32
                u = _2962 + 196
                while s < mem[_2962]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3265).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2962 + (32 * mem[_2962]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3727 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3769 = mem[_3727]
                require mem[_3727] <= test266151307()
                require _3727 + mem[_3727] + 31 < _3727 + return_data.size
                _3819 = mem[_3727 + mem[_3727]]
                if mem[_3727 + mem[_3727]] > test266151307():
                    revert with 'NH{q', 65
                if _3727 + ceil32(return_data.size) + floor32(mem[_3727 + mem[_3727]]) + 1 > test266151307() or floor32(mem[_3727 + mem[_3727]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3727 + ceil32(return_data.size) + floor32(mem[_3727 + mem[_3727]]) + 1
                mem[_3727 + ceil32(return_data.size)] = _3819
                require _3769 + (32 * _3819) + 32 <= return_data.size
                s = _3727 + _3769 + 32
                t = _3727 + ceil32(return_data.size) + 32
                while s < _3727 + _3769 + (32 * _3819) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3819 < 1:
                    revert with 'NH{q', 17
                if _3819 - 1 >= _3819:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3819 - 1) + _3727 + ceil32(return_data.size) + 32]
                t = _2962
                continue 
            if not address(_2226):
                revert with 0, 'P: ZERO_ADDRESS'
            if address(_2206) == address(_2226):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2206) < address(_2226):
                if not address(_2206):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2206)
                mem[mem[64] + 36] = address(_2226)
                staticcall address(_2244).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2206), address(_2226)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2370] == mem[_2370 + 12 len 20]
                if not mem[_2370 + 12 len 20]:
                    mem[mem[64] + 32] = 0
                    emit 0x80d4cbb8: 0
                    _2504 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2504 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2504]:
                        revert with 'NH{q', 50
                    mem[_2504 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2504]:
                        revert with 'NH{q', 50
                    mem[_2504 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _2650 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2504 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2504 + 100] = s
                    mem[_2504 + 132] = 64
                    mem[_2504 + 164] = mem[_2504]
                    s = 0
                    t = _2504 + 32
                    u = _2504 + 196
                    while s < mem[_2504]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_2650).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2504 + (32 * mem[_2504]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3733 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3775 = mem[_3733]
                    require mem[_3733] <= test266151307()
                    require _3733 + mem[_3733] + 31 < _3733 + return_data.size
                    _3825 = mem[_3733 + mem[_3733]]
                    if mem[_3733 + mem[_3733]] > test266151307():
                        revert with 'NH{q', 65
                    if _3733 + ceil32(return_data.size) + floor32(mem[_3733 + mem[_3733]]) + 1 > test266151307() or floor32(mem[_3733 + mem[_3733]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3733 + ceil32(return_data.size) + floor32(mem[_3733 + mem[_3733]]) + 1
                    mem[_3733 + ceil32(return_data.size)] = _3825
                    require _3775 + (32 * _3825) + 32 <= return_data.size
                    s = _3733 + _3775 + 32
                    t = _3733 + ceil32(return_data.size) + 32
                    while s < _3733 + _3775 + (32 * _3825) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3825 < 1:
                        revert with 'NH{q', 17
                    if _3825 - 1 >= _3825:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3825 - 1) + _3733 + ceil32(return_data.size) + 32]
                    t = _2504
                    continue 
                if address(_2206) == address(_2226):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2206) < address(_2226):
                    if not address(_2206):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2206)
                    mem[mem[64] + 36] = address(_2226)
                    staticcall address(_2244).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2206), address(_2226)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2573] == mem[_2573 + 12 len 20]
                    staticcall mem[_2573 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2724 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2742 = mem[_2724]
                    require mem[_2724] == mem[_2724 + 18 len 14]
                    _2794 = mem[_2724 + 32]
                    require mem[_2724 + 32] == mem[_2724 + 50 len 14]
                    require mem[_2724 + 64] == mem[_2724 + 92 len 4]
                    if address(_2206) == address(_2226):
                        mem[mem[64]] = mem[_2724 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2794)
                        emit 0x80d4cbb8: mem[mem[64]], _2794 << 144
                        _2964 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2964 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2964]:
                            revert with 'NH{q', 50
                        mem[_2964 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2964]:
                            revert with 'NH{q', 50
                        mem[_2964 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3267 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2964 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2964 + 100] = s
                        mem[_2964 + 132] = 64
                        mem[_2964 + 164] = mem[_2964]
                        s = 0
                        t = _2964 + 32
                        u = _2964 + 196
                        while s < mem[_2964]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3267).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2964 + (32 * mem[_2964]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3729 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3771 = mem[_3729]
                        require mem[_3729] <= test266151307()
                        require _3729 + mem[_3729] + 31 < _3729 + return_data.size
                        _3821 = mem[_3729 + mem[_3729]]
                        if mem[_3729 + mem[_3729]] > test266151307():
                            revert with 'NH{q', 65
                        if _3729 + ceil32(return_data.size) + floor32(mem[_3729 + mem[_3729]]) + 1 > test266151307() or floor32(mem[_3729 + mem[_3729]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3729 + ceil32(return_data.size) + floor32(mem[_3729 + mem[_3729]]) + 1
                        mem[_3729 + ceil32(return_data.size)] = _3821
                        require _3771 + (32 * _3821) + 32 <= return_data.size
                        s = _3729 + _3771 + 32
                        t = _3729 + ceil32(return_data.size) + 32
                        while s < _3729 + _3771 + (32 * _3821) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3821 < 1:
                            revert with 'NH{q', 17
                        if _3821 - 1 >= _3821:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3821 - 1) + _3729 + ceil32(return_data.size) + 32]
                        t = _2964
                        continue 
                    mem[mem[64]] = mem[_2724 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2742)
                    emit 0x80d4cbb8: mem[mem[64]], _2742 << 144
                    _2965 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2965 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2965]:
                        revert with 'NH{q', 50
                    mem[_2965 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2965]:
                        revert with 'NH{q', 50
                    mem[_2965 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3269 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2965 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2965 + 100] = s
                    mem[_2965 + 132] = 64
                    mem[_2965 + 164] = mem[_2965]
                    s = 0
                    t = _2965 + 32
                    u = _2965 + 196
                    while s < mem[_2965]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3269).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2965 + (32 * mem[_2965]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3730 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3772 = mem[_3730]
                    require mem[_3730] <= test266151307()
                    require _3730 + mem[_3730] + 31 < _3730 + return_data.size
                    _3822 = mem[_3730 + mem[_3730]]
                    if mem[_3730 + mem[_3730]] > test266151307():
                        revert with 'NH{q', 65
                    if _3730 + ceil32(return_data.size) + floor32(mem[_3730 + mem[_3730]]) + 1 > test266151307() or floor32(mem[_3730 + mem[_3730]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3730 + ceil32(return_data.size) + floor32(mem[_3730 + mem[_3730]]) + 1
                    mem[_3730 + ceil32(return_data.size)] = _3822
                    require _3772 + (32 * _3822) + 32 <= return_data.size
                    s = _3730 + _3772 + 32
                    t = _3730 + ceil32(return_data.size) + 32
                    while s < _3730 + _3772 + (32 * _3822) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3822 < 1:
                        revert with 'NH{q', 17
                    if _3822 - 1 >= _3822:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3822 - 1) + _3730 + ceil32(return_data.size) + 32]
                    t = _2965
                    continue 
                if not address(_2226):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2226)
                mem[mem[64] + 36] = address(_2206)
                staticcall address(_2244).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2226), address(_2206)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2574] == mem[_2574 + 12 len 20]
                staticcall mem[_2574 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2743 = mem[_2725]
                require mem[_2725] == mem[_2725 + 18 len 14]
                _2795 = mem[_2725 + 32]
                require mem[_2725 + 32] == mem[_2725 + 50 len 14]
                require mem[_2725 + 64] == mem[_2725 + 92 len 4]
                if address(_2206) == address(_2226):
                    mem[mem[64]] = mem[_2725 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2795)
                    emit 0x80d4cbb8: mem[mem[64]], _2795 << 144
                    _2966 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2966 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2966]:
                        revert with 'NH{q', 50
                    mem[_2966 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2966]:
                        revert with 'NH{q', 50
                    mem[_2966 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3271 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2966 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2966 + 100] = s
                    mem[_2966 + 132] = 64
                    mem[_2966 + 164] = mem[_2966]
                    s = 0
                    t = _2966 + 32
                    u = _2966 + 196
                    while s < mem[_2966]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3271).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2966 + (32 * mem[_2966]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3731 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3773 = mem[_3731]
                    require mem[_3731] <= test266151307()
                    require _3731 + mem[_3731] + 31 < _3731 + return_data.size
                    _3823 = mem[_3731 + mem[_3731]]
                    if mem[_3731 + mem[_3731]] > test266151307():
                        revert with 'NH{q', 65
                    if _3731 + ceil32(return_data.size) + floor32(mem[_3731 + mem[_3731]]) + 1 > test266151307() or floor32(mem[_3731 + mem[_3731]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3731 + ceil32(return_data.size) + floor32(mem[_3731 + mem[_3731]]) + 1
                    mem[_3731 + ceil32(return_data.size)] = _3823
                    require _3773 + (32 * _3823) + 32 <= return_data.size
                    s = _3731 + _3773 + 32
                    t = _3731 + ceil32(return_data.size) + 32
                    while s < _3731 + _3773 + (32 * _3823) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3823 < 1:
                        revert with 'NH{q', 17
                    if _3823 - 1 >= _3823:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3823 - 1) + _3731 + ceil32(return_data.size) + 32]
                    t = _2966
                    continue 
                mem[mem[64]] = mem[_2725 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2743)
                emit 0x80d4cbb8: mem[mem[64]], _2743 << 144
                _2967 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2967 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2967]:
                    revert with 'NH{q', 50
                mem[_2967 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2967]:
                    revert with 'NH{q', 50
                mem[_2967 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3273 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2967 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2967 + 100] = s
                mem[_2967 + 132] = 64
                mem[_2967 + 164] = mem[_2967]
                s = 0
                t = _2967 + 32
                u = _2967 + 196
                while s < mem[_2967]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3273).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2967 + (32 * mem[_2967]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3732 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3774 = mem[_3732]
                require mem[_3732] <= test266151307()
                require _3732 + mem[_3732] + 31 < _3732 + return_data.size
                _3824 = mem[_3732 + mem[_3732]]
                if mem[_3732 + mem[_3732]] > test266151307():
                    revert with 'NH{q', 65
                if _3732 + ceil32(return_data.size) + floor32(mem[_3732 + mem[_3732]]) + 1 > test266151307() or floor32(mem[_3732 + mem[_3732]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3732 + ceil32(return_data.size) + floor32(mem[_3732 + mem[_3732]]) + 1
                mem[_3732 + ceil32(return_data.size)] = _3824
                require _3774 + (32 * _3824) + 32 <= return_data.size
                s = _3732 + _3774 + 32
                t = _3732 + ceil32(return_data.size) + 32
                while s < _3732 + _3774 + (32 * _3824) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3824 < 1:
                    revert with 'NH{q', 17
                if _3824 - 1 >= _3824:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3824 - 1) + _3732 + ceil32(return_data.size) + 32]
                t = _2967
                continue 
            if not address(_2226):
                revert with 0, 'P: ZERO_ADDRESS'
            mem[mem[64] + 4] = address(_2226)
            mem[mem[64] + 36] = address(_2206)
            staticcall address(_2244).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2226), address(_2206)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2371] == mem[_2371 + 12 len 20]
            if not mem[_2371 + 12 len 20]:
                mem[mem[64] + 32] = 0
                emit 0x80d4cbb8: 0
                _2507 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2507 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2507]:
                    revert with 'NH{q', 50
                mem[_2507 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2507]:
                    revert with 'NH{q', 50
                mem[_2507 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2652 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2507 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2507 + 100] = s
                mem[_2507 + 132] = 64
                mem[_2507 + 164] = mem[_2507]
                s = 0
                t = _2507 + 32
                u = _2507 + 196
                while s < mem[_2507]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_2652).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2507 + (32 * mem[_2507]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3738 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3780 = mem[_3738]
                require mem[_3738] <= test266151307()
                require _3738 + mem[_3738] + 31 < _3738 + return_data.size
                _3830 = mem[_3738 + mem[_3738]]
                if mem[_3738 + mem[_3738]] > test266151307():
                    revert with 'NH{q', 65
                if _3738 + ceil32(return_data.size) + floor32(mem[_3738 + mem[_3738]]) + 1 > test266151307() or floor32(mem[_3738 + mem[_3738]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3738 + ceil32(return_data.size) + floor32(mem[_3738 + mem[_3738]]) + 1
                mem[_3738 + ceil32(return_data.size)] = _3830
                require _3780 + (32 * _3830) + 32 <= return_data.size
                s = _3738 + _3780 + 32
                t = _3738 + ceil32(return_data.size) + 32
                while s < _3738 + _3780 + (32 * _3830) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3830 < 1:
                    revert with 'NH{q', 17
                if _3830 - 1 >= _3830:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3830 - 1) + _3738 + ceil32(return_data.size) + 32]
                t = _2507
                continue 
            if address(_2206) == address(_2226):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2206) < address(_2226):
                if not address(_2206):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2206)
                mem[mem[64] + 36] = address(_2226)
                staticcall address(_2244).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2206), address(_2226)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2575] == mem[_2575 + 12 len 20]
                staticcall mem[_2575 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2744 = mem[_2726]
                require mem[_2726] == mem[_2726 + 18 len 14]
                _2796 = mem[_2726 + 32]
                require mem[_2726 + 32] == mem[_2726 + 50 len 14]
                require mem[_2726 + 64] == mem[_2726 + 92 len 4]
                if address(_2206) == address(_2226):
                    mem[mem[64]] = mem[_2726 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2796)
                    emit 0x80d4cbb8: mem[mem[64]], _2796 << 144
                    _2969 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2969 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2969]:
                        revert with 'NH{q', 50
                    mem[_2969 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2969]:
                        revert with 'NH{q', 50
                    mem[_2969 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3275 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2969 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2969 + 100] = s
                    mem[_2969 + 132] = 64
                    mem[_2969 + 164] = mem[_2969]
                    s = 0
                    t = _2969 + 32
                    u = _2969 + 196
                    while s < mem[_2969]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3275).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2969 + (32 * mem[_2969]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3734 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3776 = mem[_3734]
                    require mem[_3734] <= test266151307()
                    require _3734 + mem[_3734] + 31 < _3734 + return_data.size
                    _3826 = mem[_3734 + mem[_3734]]
                    if mem[_3734 + mem[_3734]] > test266151307():
                        revert with 'NH{q', 65
                    if _3734 + ceil32(return_data.size) + floor32(mem[_3734 + mem[_3734]]) + 1 > test266151307() or floor32(mem[_3734 + mem[_3734]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3734 + ceil32(return_data.size) + floor32(mem[_3734 + mem[_3734]]) + 1
                    mem[_3734 + ceil32(return_data.size)] = _3826
                    require _3776 + (32 * _3826) + 32 <= return_data.size
                    s = _3734 + _3776 + 32
                    t = _3734 + ceil32(return_data.size) + 32
                    while s < _3734 + _3776 + (32 * _3826) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3826 < 1:
                        revert with 'NH{q', 17
                    if _3826 - 1 >= _3826:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3826 - 1) + _3734 + ceil32(return_data.size) + 32]
                    t = _2969
                    continue 
                mem[mem[64]] = mem[_2726 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2744)
                emit 0x80d4cbb8: mem[mem[64]], _2744 << 144
                _2970 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2970 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2970]:
                    revert with 'NH{q', 50
                mem[_2970 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2970]:
                    revert with 'NH{q', 50
                mem[_2970 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3277 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2970 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2970 + 100] = s
                mem[_2970 + 132] = 64
                mem[_2970 + 164] = mem[_2970]
                s = 0
                t = _2970 + 32
                u = _2970 + 196
                while s < mem[_2970]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3277).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2970 + (32 * mem[_2970]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3735 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3777 = mem[_3735]
                require mem[_3735] <= test266151307()
                require _3735 + mem[_3735] + 31 < _3735 + return_data.size
                _3827 = mem[_3735 + mem[_3735]]
                if mem[_3735 + mem[_3735]] > test266151307():
                    revert with 'NH{q', 65
                if _3735 + ceil32(return_data.size) + floor32(mem[_3735 + mem[_3735]]) + 1 > test266151307() or floor32(mem[_3735 + mem[_3735]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3735 + ceil32(return_data.size) + floor32(mem[_3735 + mem[_3735]]) + 1
                mem[_3735 + ceil32(return_data.size)] = _3827
                require _3777 + (32 * _3827) + 32 <= return_data.size
                s = _3735 + _3777 + 32
                t = _3735 + ceil32(return_data.size) + 32
                while s < _3735 + _3777 + (32 * _3827) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3827 < 1:
                    revert with 'NH{q', 17
                if _3827 - 1 >= _3827:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3827 - 1) + _3735 + ceil32(return_data.size) + 32]
                t = _2970
                continue 
            if not address(_2226):
                revert with 0, 'P: ZERO_ADDRESS'
            mem[mem[64] + 4] = address(_2226)
            mem[mem[64] + 36] = address(_2206)
            staticcall address(_2244).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2226), address(_2206)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2576] == mem[_2576 + 12 len 20]
            staticcall mem[_2576 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2727 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2745 = mem[_2727]
            require mem[_2727] == mem[_2727 + 18 len 14]
            _2797 = mem[_2727 + 32]
            require mem[_2727 + 32] == mem[_2727 + 50 len 14]
            require mem[_2727 + 64] == mem[_2727 + 92 len 4]
            if address(_2206) == address(_2226):
                mem[mem[64]] = mem[_2727 + 18 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2797)
                emit 0x80d4cbb8: mem[mem[64]], _2797 << 144
                _2971 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2971 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2971]:
                    revert with 'NH{q', 50
                mem[_2971 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2971]:
                    revert with 'NH{q', 50
                mem[_2971 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3279 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2971 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2971 + 100] = s
                mem[_2971 + 132] = 64
                mem[_2971 + 164] = mem[_2971]
                s = 0
                t = _2971 + 32
                u = _2971 + 196
                while s < mem[_2971]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3279).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2971 + (32 * mem[_2971]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3736 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3778 = mem[_3736]
                require mem[_3736] <= test266151307()
                require _3736 + mem[_3736] + 31 < _3736 + return_data.size
                _3828 = mem[_3736 + mem[_3736]]
                if mem[_3736 + mem[_3736]] > test266151307():
                    revert with 'NH{q', 65
                if _3736 + ceil32(return_data.size) + floor32(mem[_3736 + mem[_3736]]) + 1 > test266151307() or floor32(mem[_3736 + mem[_3736]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3736 + ceil32(return_data.size) + floor32(mem[_3736 + mem[_3736]]) + 1
                mem[_3736 + ceil32(return_data.size)] = _3828
                require _3778 + (32 * _3828) + 32 <= return_data.size
                s = _3736 + _3778 + 32
                t = _3736 + ceil32(return_data.size) + 32
                while s < _3736 + _3778 + (32 * _3828) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3828 < 1:
                    revert with 'NH{q', 17
                if _3828 - 1 >= _3828:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3828 - 1) + _3736 + ceil32(return_data.size) + 32]
                t = _2971
                continue 
            mem[mem[64]] = mem[_2727 + 50 len 14]
            mem[mem[64] + 32] = Mask(112, 0, _2745)
            emit 0x80d4cbb8: mem[mem[64]], _2745 << 144
            _2972 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_2972 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_2972]:
                revert with 'NH{q', 50
            mem[_2972 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_2972]:
                revert with 'NH{q', 50
            mem[_2972 + 64] = mem[(32 * idx + 1) + 140 len 20]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _3281 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[_2972 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2972 + 100] = s
            mem[_2972 + 132] = 64
            mem[_2972 + 164] = mem[_2972]
            s = 0
            t = _2972 + 32
            u = _2972 + 196
            while s < mem[_2972]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall address(_3281).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2972 + (32 * mem[_2972]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3737 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3779 = mem[_3737]
            require mem[_3737] <= test266151307()
            require _3737 + mem[_3737] + 31 < _3737 + return_data.size
            _3829 = mem[_3737 + mem[_3737]]
            if mem[_3737 + mem[_3737]] > test266151307():
                revert with 'NH{q', 65
            if _3737 + ceil32(return_data.size) + floor32(mem[_3737 + mem[_3737]]) + 1 > test266151307() or floor32(mem[_3737 + mem[_3737]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _3737 + ceil32(return_data.size) + floor32(mem[_3737 + mem[_3737]]) + 1
            mem[_3737 + ceil32(return_data.size)] = _3829
            require _3779 + (32 * _3829) + 32 <= return_data.size
            s = _3737 + _3779 + 32
            t = _3737 + ceil32(return_data.size) + 32
            while s < _3737 + _3779 + (32 * _3829) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if _3829 < 1:
                revert with 'NH{q', 17
            if _3829 - 1 >= _3829:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * _3829 - 1) + _3737 + ceil32(return_data.size) + 32]
            t = _2972
            continue 
        if not cd[100]:
            if s > cd[68]:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2204 = mem[128]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[68]
                call address(_2204).0x23b872dd with:
                     gas gas_remaining wei
                    args stor0, address(this.address), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2250] == bool(mem[_2250])
                _3614 = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = t
                while idx < _3614:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3668 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3668).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3864 = mem[_3860]
                    require mem[_3860] == mem[_3860]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3914 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
                    mem[mem[64] + 36] = _3864
                    call address(_3914).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3864
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4064] == bool(mem[_4064])
                    _4114 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4114 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4114]:
                        revert with 'NH{q', 50
                    mem[_4114 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4114]:
                        revert with 'NH{q', 50
                    mem[_4114 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if mem[floor32(('cd', 4).length) + 97] < 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if idx != mem[floor32(('cd', 4).length) + 97] - 1:
                        _4150 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_4114 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4114 + 100] = _3864
                        mem[_4114 + 132] = 0
                        mem[_4114 + 164] = 160
                        mem[_4114 + 260] = mem[_4114]
                        t = 0
                        u = _4114 + 32
                        v = _4114 + 292
                        while t < mem[_4114]:
                            mem[v] = mem[u + 12 len 20]
                            _3614 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_4114 + 196] = this.address
                        mem[_4114 + 228] = block.timestamp
                        call address(_4150).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4114 + (32 * mem[_4114]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4418 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4426 = mem[_4418]
                        require mem[_4418] <= test266151307()
                        require _4418 + mem[_4418] + 31 < _4418 + return_data.size
                        _4434 = mem[_4418 + mem[_4418]]
                        if mem[_4418 + mem[_4418]] > test266151307():
                            revert with 'NH{q', 65
                        if _4418 + ceil32(return_data.size) + floor32(mem[_4418 + mem[_4418]]) + 1 > test266151307() or floor32(mem[_4418 + mem[_4418]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4418 + ceil32(return_data.size) + floor32(mem[_4418 + mem[_4418]]) + 1
                        mem[_4418 + ceil32(return_data.size)] = _4434
                        require _4426 + (32 * _4434) + 32 <= return_data.size
                        t = _4418 + _4426 + 32
                        u = _4418 + ceil32(return_data.size) + 32
                        while t < _4418 + _4426 + (32 * _4434) + 32:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3614 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 32
                            u = u + 32
                            continue 
                        if _4418 + _4426 + floor32(_4434) + 32 == -1:
                            revert with 'NH{q', 17
                        _3614 = mem[floor32(('cd', 4).length) + 97]
                        t = _4418 + _4426 + floor32(_4434) + 33
                        u = _4114
                        continue 
                    _4162 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_4114 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_4114 + 100] = _3864
                    mem[_4114 + 132] = 0
                    mem[_4114 + 164] = 160
                    mem[_4114 + 260] = mem[_4114]
                    s = 0
                    t = _4114 + 32
                    u = _4114 + 292
                    while s < mem[_4114]:
                        mem[u] = mem[t + 12 len 20]
                        _3614 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4114 + 196] = this.address
                    mem[_4114 + 228] = block.timestamp
                    call address(_4162).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4114 + (32 * mem[_4114]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4419 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4427 = mem[_4419]
                    require mem[_4419] <= test266151307()
                    require _4419 + mem[_4419] + 31 < _4419 + return_data.size
                    _4435 = mem[_4419 + mem[_4419]]
                    if mem[_4419 + mem[_4419]] > test266151307():
                        revert with 'NH{q', 65
                    if _4419 + ceil32(return_data.size) + floor32(mem[_4419 + mem[_4419]]) + 1 > test266151307() or floor32(mem[_4419 + mem[_4419]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _4419 + ceil32(return_data.size) + floor32(mem[_4419 + mem[_4419]]) + 1
                    mem[_4419 + ceil32(return_data.size)] = _4435
                    require _4427 + (32 * _4435) + 32 <= return_data.size
                    s = _4419 + _4427 + 32
                    t = _4419 + ceil32(return_data.size) + 32
                    while s < _4419 + _4427 + (32 * _4435) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _3614 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 32
                        t = t + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    _3614 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = _4114
                    continue 
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * mem[96] - 1) + 140 len 20]
                require ext_code.size(this.address)
                call this.address.0x4b14e003 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64]] = s
            emit AmountOut(s);
            if s > cd[68]:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2220 = mem[128]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[68]
                call address(_2220).0x23b872dd with:
                     gas gas_remaining wei
                    args stor0, address(this.address), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2260] == bool(mem[_2260])
                _3615 = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = t
                while idx < _3615:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3670 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3670).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3865 = mem[_3861]
                    require mem[_3861] == mem[_3861]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3916 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
                    mem[mem[64] + 36] = _3865
                    call address(_3916).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3865
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4065 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4065] == bool(mem[_4065])
                    _4115 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4115 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4115]:
                        revert with 'NH{q', 50
                    mem[_4115 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4115]:
                        revert with 'NH{q', 50
                    mem[_4115 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if mem[floor32(('cd', 4).length) + 97] < 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if idx != mem[floor32(('cd', 4).length) + 97] - 1:
                        _4153 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_4115 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4115 + 100] = _3865
                        mem[_4115 + 132] = 0
                        mem[_4115 + 164] = 160
                        mem[_4115 + 260] = mem[_4115]
                        t = 0
                        u = _4115 + 32
                        v = _4115 + 292
                        while t < mem[_4115]:
                            mem[v] = mem[u + 12 len 20]
                            _3615 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_4115 + 196] = this.address
                        mem[_4115 + 228] = block.timestamp
                        call address(_4153).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4115 + (32 * mem[_4115]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4420 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4428 = mem[_4420]
                        require mem[_4420] <= test266151307()
                        require _4420 + mem[_4420] + 31 < _4420 + return_data.size
                        _4436 = mem[_4420 + mem[_4420]]
                        if mem[_4420 + mem[_4420]] > test266151307():
                            revert with 'NH{q', 65
                        if _4420 + ceil32(return_data.size) + floor32(mem[_4420 + mem[_4420]]) + 1 > test266151307() or floor32(mem[_4420 + mem[_4420]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4420 + ceil32(return_data.size) + floor32(mem[_4420 + mem[_4420]]) + 1
                        mem[_4420 + ceil32(return_data.size)] = _4436
                        require _4428 + (32 * _4436) + 32 <= return_data.size
                        t = _4420 + _4428 + 32
                        u = _4420 + ceil32(return_data.size) + 32
                        while t < _4420 + _4428 + (32 * _4436) + 32:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3615 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 32
                            u = u + 32
                            continue 
                        if _4420 + _4428 + floor32(_4436) + 32 == -1:
                            revert with 'NH{q', 17
                        _3615 = mem[floor32(('cd', 4).length) + 97]
                        t = _4420 + _4428 + floor32(_4436) + 33
                        u = _4115
                        continue 
                    _4164 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_4115 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_4115 + 100] = _3865
                    mem[_4115 + 132] = 0
                    mem[_4115 + 164] = 160
                    mem[_4115 + 260] = mem[_4115]
                    s = 0
                    t = _4115 + 32
                    u = _4115 + 292
                    while s < mem[_4115]:
                        mem[u] = mem[t + 12 len 20]
                        _3615 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4115 + 196] = this.address
                    mem[_4115 + 228] = block.timestamp
                    call address(_4164).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4115 + (32 * mem[_4115]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4421 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4429 = mem[_4421]
                    require mem[_4421] <= test266151307()
                    require _4421 + mem[_4421] + 31 < _4421 + return_data.size
                    _4437 = mem[_4421 + mem[_4421]]
                    if mem[_4421 + mem[_4421]] > test266151307():
                        revert with 'NH{q', 65
                    if _4421 + ceil32(return_data.size) + floor32(mem[_4421 + mem[_4421]]) + 1 > test266151307() or floor32(mem[_4421 + mem[_4421]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _4421 + ceil32(return_data.size) + floor32(mem[_4421 + mem[_4421]]) + 1
                    mem[_4421 + ceil32(return_data.size)] = _4437
                    require _4429 + (32 * _4437) + 32 <= return_data.size
                    s = _4421 + _4429 + 32
                    t = _4421 + ceil32(return_data.size) + 32
                    while s < _4421 + _4429 + (32 * _4437) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _3615 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 32
                        t = t + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    _3615 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = _4115
                    continue 
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * mem[96] - 1) + 140 len 20]
                require ext_code.size(this.address)
                call this.address.0x4b14e003 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        idx = 0
        s = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
        t = 96
        while idx < ('cd', 36).length:
            if not cd[100]:
                _2201 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2201 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2201]:
                    revert with 'NH{q', 50
                mem[_2201 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2201]:
                    revert with 'NH{q', 50
                mem[_2201 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2245 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2201 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2201 + 100] = s
                mem[_2201 + 132] = 64
                mem[_2201 + 164] = mem[_2201]
                s = 0
                t = _2201 + 32
                u = _2201 + 196
                while s < mem[_2201]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_2245).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2201 + (32 * mem[_2201]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3739 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3781 = mem[_3739]
                require mem[_3739] <= test266151307()
                require _3739 + mem[_3739] + 31 < _3739 + return_data.size
                _3835 = mem[_3739 + mem[_3739]]
                if mem[_3739 + mem[_3739]] > test266151307():
                    revert with 'NH{q', 65
                if _3739 + ceil32(return_data.size) + floor32(mem[_3739 + mem[_3739]]) + 1 > test266151307() or floor32(mem[_3739 + mem[_3739]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3739 + ceil32(return_data.size) + floor32(mem[_3739 + mem[_3739]]) + 1
                mem[_3739 + ceil32(return_data.size)] = _3835
                require _3781 + (32 * _3835) + 32 <= return_data.size
                s = _3739 + _3781 + 32
                t = _3739 + ceil32(return_data.size) + 32
                while s < _3739 + _3781 + (32 * _3835) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3835 < 1:
                    revert with 'NH{q', 17
                if _3835 - 1 >= _3835:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3835 - 1) + _3739 + ceil32(return_data.size) + 32]
                t = _2201
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2209 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _2227 = mem[(32 * idx + 1) + 128]
            staticcall mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2247 = mem[_2235]
            require mem[_2235] == mem[_2235 + 12 len 20]
            if address(_2209) == address(_2227):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2209) < address(_2227):
                if not address(_2209):
                    revert with 0, 'P: ZERO_ADDRESS'
                if address(_2209) == address(_2227):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2209) < address(_2227):
                    if not address(_2209):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2209)
                    mem[mem[64] + 36] = address(_2227)
                    staticcall address(_2247).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2209), address(_2227)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2372] == mem[_2372 + 12 len 20]
                    if not mem[_2372 + 12 len 20]:
                        mem[mem[64] + 32] = 0
                        emit 0x80d4cbb8: 0
                        _2510 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2510 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2510]:
                            revert with 'NH{q', 50
                        mem[_2510 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2510]:
                            revert with 'NH{q', 50
                        mem[_2510 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _2654 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2510 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2510 + 100] = s
                        mem[_2510 + 132] = 64
                        mem[_2510 + 164] = mem[_2510]
                        s = 0
                        t = _2510 + 32
                        u = _2510 + 196
                        while s < mem[_2510]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_2654).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2510 + (32 * mem[_2510]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3744 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3786 = mem[_3744]
                        require mem[_3744] <= test266151307()
                        require _3744 + mem[_3744] + 31 < _3744 + return_data.size
                        _3840 = mem[_3744 + mem[_3744]]
                        if mem[_3744 + mem[_3744]] > test266151307():
                            revert with 'NH{q', 65
                        if _3744 + ceil32(return_data.size) + floor32(mem[_3744 + mem[_3744]]) + 1 > test266151307() or floor32(mem[_3744 + mem[_3744]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3744 + ceil32(return_data.size) + floor32(mem[_3744 + mem[_3744]]) + 1
                        mem[_3744 + ceil32(return_data.size)] = _3840
                        require _3786 + (32 * _3840) + 32 <= return_data.size
                        s = _3744 + _3786 + 32
                        t = _3744 + ceil32(return_data.size) + 32
                        while s < _3744 + _3786 + (32 * _3840) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3840 < 1:
                            revert with 'NH{q', 17
                        if _3840 - 1 >= _3840:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3840 - 1) + _3744 + ceil32(return_data.size) + 32]
                        t = _2510
                        continue 
                    if address(_2209) == address(_2227):
                        revert with 0, 'P: IDENTICAL_ADDRESSES'
                    if address(_2209) < address(_2227):
                        if not address(_2209):
                            revert with 0, 'P: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(_2209)
                        mem[mem[64] + 36] = address(_2227)
                        staticcall address(_2247).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(_2209), address(_2227)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2578] == mem[_2578 + 12 len 20]
                        staticcall mem[_2578 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2746 = mem[_2730]
                        require mem[_2730] == mem[_2730 + 18 len 14]
                        _2798 = mem[_2730 + 32]
                        require mem[_2730 + 32] == mem[_2730 + 50 len 14]
                        require mem[_2730 + 64] == mem[_2730 + 92 len 4]
                        if address(_2209) == address(_2209):
                            mem[mem[64]] = mem[_2730 + 18 len 14]
                            mem[mem[64] + 32] = Mask(112, 0, _2798)
                            emit 0x80d4cbb8: mem[mem[64]], _2798 << 144
                            _2974 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_2974 + 32 len 64] = call.data[calldata.size len 64]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_2974]:
                                revert with 'NH{q', 50
                            mem[_2974 + 32] = mem[(32 * idx) + 140 len 20]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_2974]:
                                revert with 'NH{q', 50
                            mem[_2974 + 64] = mem[(32 * idx + 1) + 140 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            _3284 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            mem[_2974 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2974 + 100] = s
                            mem[_2974 + 132] = 64
                            mem[_2974 + 164] = mem[_2974]
                            s = 0
                            t = _2974 + 32
                            u = _2974 + 196
                            while s < mem[_2974]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            staticcall address(_3284).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2974 + (32 * mem[_2974]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3740 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3782 = mem[_3740]
                            require mem[_3740] <= test266151307()
                            require _3740 + mem[_3740] + 31 < _3740 + return_data.size
                            _3836 = mem[_3740 + mem[_3740]]
                            if mem[_3740 + mem[_3740]] > test266151307():
                                revert with 'NH{q', 65
                            if _3740 + ceil32(return_data.size) + floor32(mem[_3740 + mem[_3740]]) + 1 > test266151307() or floor32(mem[_3740 + mem[_3740]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3740 + ceil32(return_data.size) + floor32(mem[_3740 + mem[_3740]]) + 1
                            mem[_3740 + ceil32(return_data.size)] = _3836
                            require _3782 + (32 * _3836) + 32 <= return_data.size
                            s = _3740 + _3782 + 32
                            t = _3740 + ceil32(return_data.size) + 32
                            while s < _3740 + _3782 + (32 * _3836) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3836 < 1:
                                revert with 'NH{q', 17
                            if _3836 - 1 >= _3836:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[(32 * _3836 - 1) + _3740 + ceil32(return_data.size) + 32]
                            t = _2974
                            continue 
                        mem[mem[64]] = mem[_2730 + 50 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2746)
                        emit 0x80d4cbb8: mem[mem[64]], _2746 << 144
                        _2975 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2975 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2975]:
                            revert with 'NH{q', 50
                        mem[_2975 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2975]:
                            revert with 'NH{q', 50
                        mem[_2975 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3286 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2975 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2975 + 100] = s
                        mem[_2975 + 132] = 64
                        mem[_2975 + 164] = mem[_2975]
                        s = 0
                        t = _2975 + 32
                        u = _2975 + 196
                        while s < mem[_2975]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3286).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2975 + (32 * mem[_2975]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3741 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3783 = mem[_3741]
                        require mem[_3741] <= test266151307()
                        require _3741 + mem[_3741] + 31 < _3741 + return_data.size
                        _3837 = mem[_3741 + mem[_3741]]
                        if mem[_3741 + mem[_3741]] > test266151307():
                            revert with 'NH{q', 65
                        if _3741 + ceil32(return_data.size) + floor32(mem[_3741 + mem[_3741]]) + 1 > test266151307() or floor32(mem[_3741 + mem[_3741]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3741 + ceil32(return_data.size) + floor32(mem[_3741 + mem[_3741]]) + 1
                        mem[_3741 + ceil32(return_data.size)] = _3837
                        require _3783 + (32 * _3837) + 32 <= return_data.size
                        s = _3741 + _3783 + 32
                        t = _3741 + ceil32(return_data.size) + 32
                        while s < _3741 + _3783 + (32 * _3837) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3837 < 1:
                            revert with 'NH{q', 17
                        if _3837 - 1 >= _3837:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3837 - 1) + _3741 + ceil32(return_data.size) + 32]
                        t = _2975
                        continue 
                    if not address(_2227):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2227)
                    mem[mem[64] + 36] = address(_2209)
                    staticcall address(_2247).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2227), address(_2209)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2579] == mem[_2579 + 12 len 20]
                    staticcall mem[_2579 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2747 = mem[_2731]
                    require mem[_2731] == mem[_2731 + 18 len 14]
                    _2799 = mem[_2731 + 32]
                    require mem[_2731 + 32] == mem[_2731 + 50 len 14]
                    require mem[_2731 + 64] == mem[_2731 + 92 len 4]
                    if address(_2209) == address(_2209):
                        mem[mem[64]] = mem[_2731 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2799)
                        emit 0x80d4cbb8: mem[mem[64]], _2799 << 144
                        _2976 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2976 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2976]:
                            revert with 'NH{q', 50
                        mem[_2976 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2976]:
                            revert with 'NH{q', 50
                        mem[_2976 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3288 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2976 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2976 + 100] = s
                        mem[_2976 + 132] = 64
                        mem[_2976 + 164] = mem[_2976]
                        s = 0
                        t = _2976 + 32
                        u = _2976 + 196
                        while s < mem[_2976]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3288).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2976 + (32 * mem[_2976]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3742 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3784 = mem[_3742]
                        require mem[_3742] <= test266151307()
                        require _3742 + mem[_3742] + 31 < _3742 + return_data.size
                        _3838 = mem[_3742 + mem[_3742]]
                        if mem[_3742 + mem[_3742]] > test266151307():
                            revert with 'NH{q', 65
                        if _3742 + ceil32(return_data.size) + floor32(mem[_3742 + mem[_3742]]) + 1 > test266151307() or floor32(mem[_3742 + mem[_3742]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3742 + ceil32(return_data.size) + floor32(mem[_3742 + mem[_3742]]) + 1
                        mem[_3742 + ceil32(return_data.size)] = _3838
                        require _3784 + (32 * _3838) + 32 <= return_data.size
                        s = _3742 + _3784 + 32
                        t = _3742 + ceil32(return_data.size) + 32
                        while s < _3742 + _3784 + (32 * _3838) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3838 < 1:
                            revert with 'NH{q', 17
                        if _3838 - 1 >= _3838:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3838 - 1) + _3742 + ceil32(return_data.size) + 32]
                        t = _2976
                        continue 
                    mem[mem[64]] = mem[_2731 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2747)
                    emit 0x80d4cbb8: mem[mem[64]], _2747 << 144
                    _2977 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2977 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2977]:
                        revert with 'NH{q', 50
                    mem[_2977 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2977]:
                        revert with 'NH{q', 50
                    mem[_2977 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3290 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2977 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2977 + 100] = s
                    mem[_2977 + 132] = 64
                    mem[_2977 + 164] = mem[_2977]
                    s = 0
                    t = _2977 + 32
                    u = _2977 + 196
                    while s < mem[_2977]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3290).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2977 + (32 * mem[_2977]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3743 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3785 = mem[_3743]
                    require mem[_3743] <= test266151307()
                    require _3743 + mem[_3743] + 31 < _3743 + return_data.size
                    _3839 = mem[_3743 + mem[_3743]]
                    if mem[_3743 + mem[_3743]] > test266151307():
                        revert with 'NH{q', 65
                    if _3743 + ceil32(return_data.size) + floor32(mem[_3743 + mem[_3743]]) + 1 > test266151307() or floor32(mem[_3743 + mem[_3743]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3743 + ceil32(return_data.size) + floor32(mem[_3743 + mem[_3743]]) + 1
                    mem[_3743 + ceil32(return_data.size)] = _3839
                    require _3785 + (32 * _3839) + 32 <= return_data.size
                    s = _3743 + _3785 + 32
                    t = _3743 + ceil32(return_data.size) + 32
                    while s < _3743 + _3785 + (32 * _3839) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3839 < 1:
                        revert with 'NH{q', 17
                    if _3839 - 1 >= _3839:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3839 - 1) + _3743 + ceil32(return_data.size) + 32]
                    t = _2977
                    continue 
                if not address(_2227):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2227)
                mem[mem[64] + 36] = address(_2209)
                staticcall address(_2247).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2227), address(_2209)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2373] == mem[_2373 + 12 len 20]
                if not mem[_2373 + 12 len 20]:
                    mem[mem[64] + 32] = 0
                    emit 0x80d4cbb8: 0
                    _2513 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2513 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2513]:
                        revert with 'NH{q', 50
                    mem[_2513 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2513]:
                        revert with 'NH{q', 50
                    mem[_2513 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _2656 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2513 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2513 + 100] = s
                    mem[_2513 + 132] = 64
                    mem[_2513 + 164] = mem[_2513]
                    s = 0
                    t = _2513 + 32
                    u = _2513 + 196
                    while s < mem[_2513]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_2656).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2513 + (32 * mem[_2513]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3749 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3791 = mem[_3749]
                    require mem[_3749] <= test266151307()
                    require _3749 + mem[_3749] + 31 < _3749 + return_data.size
                    _3845 = mem[_3749 + mem[_3749]]
                    if mem[_3749 + mem[_3749]] > test266151307():
                        revert with 'NH{q', 65
                    if _3749 + ceil32(return_data.size) + floor32(mem[_3749 + mem[_3749]]) + 1 > test266151307() or floor32(mem[_3749 + mem[_3749]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3749 + ceil32(return_data.size) + floor32(mem[_3749 + mem[_3749]]) + 1
                    mem[_3749 + ceil32(return_data.size)] = _3845
                    require _3791 + (32 * _3845) + 32 <= return_data.size
                    s = _3749 + _3791 + 32
                    t = _3749 + ceil32(return_data.size) + 32
                    while s < _3749 + _3791 + (32 * _3845) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3845 < 1:
                        revert with 'NH{q', 17
                    if _3845 - 1 >= _3845:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3845 - 1) + _3749 + ceil32(return_data.size) + 32]
                    t = _2513
                    continue 
                if address(_2209) == address(_2227):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2209) < address(_2227):
                    if not address(_2209):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2209)
                    mem[mem[64] + 36] = address(_2227)
                    staticcall address(_2247).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2209), address(_2227)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2580] == mem[_2580 + 12 len 20]
                    staticcall mem[_2580 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2748 = mem[_2732]
                    require mem[_2732] == mem[_2732 + 18 len 14]
                    _2800 = mem[_2732 + 32]
                    require mem[_2732 + 32] == mem[_2732 + 50 len 14]
                    require mem[_2732 + 64] == mem[_2732 + 92 len 4]
                    if address(_2209) == address(_2209):
                        mem[mem[64]] = mem[_2732 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2800)
                        emit 0x80d4cbb8: mem[mem[64]], _2800 << 144
                        _2979 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2979 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2979]:
                            revert with 'NH{q', 50
                        mem[_2979 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2979]:
                            revert with 'NH{q', 50
                        mem[_2979 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3292 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2979 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2979 + 100] = s
                        mem[_2979 + 132] = 64
                        mem[_2979 + 164] = mem[_2979]
                        s = 0
                        t = _2979 + 32
                        u = _2979 + 196
                        while s < mem[_2979]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3292).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2979 + (32 * mem[_2979]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3745 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3787 = mem[_3745]
                        require mem[_3745] <= test266151307()
                        require _3745 + mem[_3745] + 31 < _3745 + return_data.size
                        _3841 = mem[_3745 + mem[_3745]]
                        if mem[_3745 + mem[_3745]] > test266151307():
                            revert with 'NH{q', 65
                        if _3745 + ceil32(return_data.size) + floor32(mem[_3745 + mem[_3745]]) + 1 > test266151307() or floor32(mem[_3745 + mem[_3745]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3745 + ceil32(return_data.size) + floor32(mem[_3745 + mem[_3745]]) + 1
                        mem[_3745 + ceil32(return_data.size)] = _3841
                        require _3787 + (32 * _3841) + 32 <= return_data.size
                        s = _3745 + _3787 + 32
                        t = _3745 + ceil32(return_data.size) + 32
                        while s < _3745 + _3787 + (32 * _3841) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3841 < 1:
                            revert with 'NH{q', 17
                        if _3841 - 1 >= _3841:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3841 - 1) + _3745 + ceil32(return_data.size) + 32]
                        t = _2979
                        continue 
                    mem[mem[64]] = mem[_2732 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2748)
                    emit 0x80d4cbb8: mem[mem[64]], _2748 << 144
                    _2980 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2980 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2980]:
                        revert with 'NH{q', 50
                    mem[_2980 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2980]:
                        revert with 'NH{q', 50
                    mem[_2980 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3294 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2980 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2980 + 100] = s
                    mem[_2980 + 132] = 64
                    mem[_2980 + 164] = mem[_2980]
                    s = 0
                    t = _2980 + 32
                    u = _2980 + 196
                    while s < mem[_2980]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3294).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2980 + (32 * mem[_2980]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3746 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3788 = mem[_3746]
                    require mem[_3746] <= test266151307()
                    require _3746 + mem[_3746] + 31 < _3746 + return_data.size
                    _3842 = mem[_3746 + mem[_3746]]
                    if mem[_3746 + mem[_3746]] > test266151307():
                        revert with 'NH{q', 65
                    if _3746 + ceil32(return_data.size) + floor32(mem[_3746 + mem[_3746]]) + 1 > test266151307() or floor32(mem[_3746 + mem[_3746]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3746 + ceil32(return_data.size) + floor32(mem[_3746 + mem[_3746]]) + 1
                    mem[_3746 + ceil32(return_data.size)] = _3842
                    require _3788 + (32 * _3842) + 32 <= return_data.size
                    s = _3746 + _3788 + 32
                    t = _3746 + ceil32(return_data.size) + 32
                    while s < _3746 + _3788 + (32 * _3842) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3842 < 1:
                        revert with 'NH{q', 17
                    if _3842 - 1 >= _3842:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3842 - 1) + _3746 + ceil32(return_data.size) + 32]
                    t = _2980
                    continue 
                if not address(_2227):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2227)
                mem[mem[64] + 36] = address(_2209)
                staticcall address(_2247).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2227), address(_2209)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2581] == mem[_2581 + 12 len 20]
                staticcall mem[_2581 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2749 = mem[_2733]
                require mem[_2733] == mem[_2733 + 18 len 14]
                _2801 = mem[_2733 + 32]
                require mem[_2733 + 32] == mem[_2733 + 50 len 14]
                require mem[_2733 + 64] == mem[_2733 + 92 len 4]
                if address(_2209) == address(_2209):
                    mem[mem[64]] = mem[_2733 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2801)
                    emit 0x80d4cbb8: mem[mem[64]], _2801 << 144
                    _2981 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2981 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2981]:
                        revert with 'NH{q', 50
                    mem[_2981 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2981]:
                        revert with 'NH{q', 50
                    mem[_2981 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3296 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2981 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2981 + 100] = s
                    mem[_2981 + 132] = 64
                    mem[_2981 + 164] = mem[_2981]
                    s = 0
                    t = _2981 + 32
                    u = _2981 + 196
                    while s < mem[_2981]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3296).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2981 + (32 * mem[_2981]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3747 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3789 = mem[_3747]
                    require mem[_3747] <= test266151307()
                    require _3747 + mem[_3747] + 31 < _3747 + return_data.size
                    _3843 = mem[_3747 + mem[_3747]]
                    if mem[_3747 + mem[_3747]] > test266151307():
                        revert with 'NH{q', 65
                    if _3747 + ceil32(return_data.size) + floor32(mem[_3747 + mem[_3747]]) + 1 > test266151307() or floor32(mem[_3747 + mem[_3747]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3747 + ceil32(return_data.size) + floor32(mem[_3747 + mem[_3747]]) + 1
                    mem[_3747 + ceil32(return_data.size)] = _3843
                    require _3789 + (32 * _3843) + 32 <= return_data.size
                    s = _3747 + _3789 + 32
                    t = _3747 + ceil32(return_data.size) + 32
                    while s < _3747 + _3789 + (32 * _3843) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3843 < 1:
                        revert with 'NH{q', 17
                    if _3843 - 1 >= _3843:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3843 - 1) + _3747 + ceil32(return_data.size) + 32]
                    t = _2981
                    continue 
                mem[mem[64]] = mem[_2733 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2749)
                emit 0x80d4cbb8: mem[mem[64]], _2749 << 144
                _2982 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2982 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2982]:
                    revert with 'NH{q', 50
                mem[_2982 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2982]:
                    revert with 'NH{q', 50
                mem[_2982 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3298 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2982 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2982 + 100] = s
                mem[_2982 + 132] = 64
                mem[_2982 + 164] = mem[_2982]
                s = 0
                t = _2982 + 32
                u = _2982 + 196
                while s < mem[_2982]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3298).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2982 + (32 * mem[_2982]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3748 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3790 = mem[_3748]
                require mem[_3748] <= test266151307()
                require _3748 + mem[_3748] + 31 < _3748 + return_data.size
                _3844 = mem[_3748 + mem[_3748]]
                if mem[_3748 + mem[_3748]] > test266151307():
                    revert with 'NH{q', 65
                if _3748 + ceil32(return_data.size) + floor32(mem[_3748 + mem[_3748]]) + 1 > test266151307() or floor32(mem[_3748 + mem[_3748]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3748 + ceil32(return_data.size) + floor32(mem[_3748 + mem[_3748]]) + 1
                mem[_3748 + ceil32(return_data.size)] = _3844
                require _3790 + (32 * _3844) + 32 <= return_data.size
                s = _3748 + _3790 + 32
                t = _3748 + ceil32(return_data.size) + 32
                while s < _3748 + _3790 + (32 * _3844) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3844 < 1:
                    revert with 'NH{q', 17
                if _3844 - 1 >= _3844:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3844 - 1) + _3748 + ceil32(return_data.size) + 32]
                t = _2982
                continue 
            if not address(_2227):
                revert with 0, 'P: ZERO_ADDRESS'
            if address(_2209) == address(_2227):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2209) < address(_2227):
                if not address(_2209):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2209)
                mem[mem[64] + 36] = address(_2227)
                staticcall address(_2247).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2209), address(_2227)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2374] == mem[_2374 + 12 len 20]
                if not mem[_2374 + 12 len 20]:
                    mem[mem[64] + 32] = 0
                    emit 0x80d4cbb8: 0
                    _2516 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2516 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2516]:
                        revert with 'NH{q', 50
                    mem[_2516 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2516]:
                        revert with 'NH{q', 50
                    mem[_2516 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _2658 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2516 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2516 + 100] = s
                    mem[_2516 + 132] = 64
                    mem[_2516 + 164] = mem[_2516]
                    s = 0
                    t = _2516 + 32
                    u = _2516 + 196
                    while s < mem[_2516]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_2658).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2516 + (32 * mem[_2516]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3754 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3796 = mem[_3754]
                    require mem[_3754] <= test266151307()
                    require _3754 + mem[_3754] + 31 < _3754 + return_data.size
                    _3850 = mem[_3754 + mem[_3754]]
                    if mem[_3754 + mem[_3754]] > test266151307():
                        revert with 'NH{q', 65
                    if _3754 + ceil32(return_data.size) + floor32(mem[_3754 + mem[_3754]]) + 1 > test266151307() or floor32(mem[_3754 + mem[_3754]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3754 + ceil32(return_data.size) + floor32(mem[_3754 + mem[_3754]]) + 1
                    mem[_3754 + ceil32(return_data.size)] = _3850
                    require _3796 + (32 * _3850) + 32 <= return_data.size
                    s = _3754 + _3796 + 32
                    t = _3754 + ceil32(return_data.size) + 32
                    while s < _3754 + _3796 + (32 * _3850) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3850 < 1:
                        revert with 'NH{q', 17
                    if _3850 - 1 >= _3850:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3850 - 1) + _3754 + ceil32(return_data.size) + 32]
                    t = _2516
                    continue 
                if address(_2209) == address(_2227):
                    revert with 0, 'P: IDENTICAL_ADDRESSES'
                if address(_2209) < address(_2227):
                    if not address(_2209):
                        revert with 0, 'P: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(_2209)
                    mem[mem[64] + 36] = address(_2227)
                    staticcall address(_2247).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(_2209), address(_2227)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2582] == mem[_2582 + 12 len 20]
                    staticcall mem[_2582 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2750 = mem[_2734]
                    require mem[_2734] == mem[_2734 + 18 len 14]
                    _2802 = mem[_2734 + 32]
                    require mem[_2734 + 32] == mem[_2734 + 50 len 14]
                    require mem[_2734 + 64] == mem[_2734 + 92 len 4]
                    if address(_2209) == address(_2227):
                        mem[mem[64]] = mem[_2734 + 18 len 14]
                        mem[mem[64] + 32] = Mask(112, 0, _2802)
                        emit 0x80d4cbb8: mem[mem[64]], _2802 << 144
                        _2984 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2984 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2984]:
                            revert with 'NH{q', 50
                        mem[_2984 + 32] = mem[(32 * idx) + 140 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2984]:
                            revert with 'NH{q', 50
                        mem[_2984 + 64] = mem[(32 * idx + 1) + 140 len 20]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _3300 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_2984 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2984 + 100] = s
                        mem[_2984 + 132] = 64
                        mem[_2984 + 164] = mem[_2984]
                        s = 0
                        t = _2984 + 32
                        u = _2984 + 196
                        while s < mem[_2984]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall address(_3300).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2984 + (32 * mem[_2984]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3750 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3792 = mem[_3750]
                        require mem[_3750] <= test266151307()
                        require _3750 + mem[_3750] + 31 < _3750 + return_data.size
                        _3846 = mem[_3750 + mem[_3750]]
                        if mem[_3750 + mem[_3750]] > test266151307():
                            revert with 'NH{q', 65
                        if _3750 + ceil32(return_data.size) + floor32(mem[_3750 + mem[_3750]]) + 1 > test266151307() or floor32(mem[_3750 + mem[_3750]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3750 + ceil32(return_data.size) + floor32(mem[_3750 + mem[_3750]]) + 1
                        mem[_3750 + ceil32(return_data.size)] = _3846
                        require _3792 + (32 * _3846) + 32 <= return_data.size
                        s = _3750 + _3792 + 32
                        t = _3750 + ceil32(return_data.size) + 32
                        while s < _3750 + _3792 + (32 * _3846) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if _3846 < 1:
                            revert with 'NH{q', 17
                        if _3846 - 1 >= _3846:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[(32 * _3846 - 1) + _3750 + ceil32(return_data.size) + 32]
                        t = _2984
                        continue 
                    mem[mem[64]] = mem[_2734 + 50 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2750)
                    emit 0x80d4cbb8: mem[mem[64]], _2750 << 144
                    _2985 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2985 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2985]:
                        revert with 'NH{q', 50
                    mem[_2985 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2985]:
                        revert with 'NH{q', 50
                    mem[_2985 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3302 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2985 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2985 + 100] = s
                    mem[_2985 + 132] = 64
                    mem[_2985 + 164] = mem[_2985]
                    s = 0
                    t = _2985 + 32
                    u = _2985 + 196
                    while s < mem[_2985]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3302).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2985 + (32 * mem[_2985]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3751 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3793 = mem[_3751]
                    require mem[_3751] <= test266151307()
                    require _3751 + mem[_3751] + 31 < _3751 + return_data.size
                    _3847 = mem[_3751 + mem[_3751]]
                    if mem[_3751 + mem[_3751]] > test266151307():
                        revert with 'NH{q', 65
                    if _3751 + ceil32(return_data.size) + floor32(mem[_3751 + mem[_3751]]) + 1 > test266151307() or floor32(mem[_3751 + mem[_3751]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3751 + ceil32(return_data.size) + floor32(mem[_3751 + mem[_3751]]) + 1
                    mem[_3751 + ceil32(return_data.size)] = _3847
                    require _3793 + (32 * _3847) + 32 <= return_data.size
                    s = _3751 + _3793 + 32
                    t = _3751 + ceil32(return_data.size) + 32
                    while s < _3751 + _3793 + (32 * _3847) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3847 < 1:
                        revert with 'NH{q', 17
                    if _3847 - 1 >= _3847:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3847 - 1) + _3751 + ceil32(return_data.size) + 32]
                    t = _2985
                    continue 
                if not address(_2227):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2227)
                mem[mem[64] + 36] = address(_2209)
                staticcall address(_2247).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2227), address(_2209)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2583] == mem[_2583 + 12 len 20]
                staticcall mem[_2583 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2751 = mem[_2735]
                require mem[_2735] == mem[_2735 + 18 len 14]
                _2803 = mem[_2735 + 32]
                require mem[_2735 + 32] == mem[_2735 + 50 len 14]
                require mem[_2735 + 64] == mem[_2735 + 92 len 4]
                if address(_2209) == address(_2227):
                    mem[mem[64]] = mem[_2735 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2803)
                    emit 0x80d4cbb8: mem[mem[64]], _2803 << 144
                    _2986 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2986 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2986]:
                        revert with 'NH{q', 50
                    mem[_2986 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2986]:
                        revert with 'NH{q', 50
                    mem[_2986 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3304 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2986 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2986 + 100] = s
                    mem[_2986 + 132] = 64
                    mem[_2986 + 164] = mem[_2986]
                    s = 0
                    t = _2986 + 32
                    u = _2986 + 196
                    while s < mem[_2986]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3304).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2986 + (32 * mem[_2986]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3752 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3794 = mem[_3752]
                    require mem[_3752] <= test266151307()
                    require _3752 + mem[_3752] + 31 < _3752 + return_data.size
                    _3848 = mem[_3752 + mem[_3752]]
                    if mem[_3752 + mem[_3752]] > test266151307():
                        revert with 'NH{q', 65
                    if _3752 + ceil32(return_data.size) + floor32(mem[_3752 + mem[_3752]]) + 1 > test266151307() or floor32(mem[_3752 + mem[_3752]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3752 + ceil32(return_data.size) + floor32(mem[_3752 + mem[_3752]]) + 1
                    mem[_3752 + ceil32(return_data.size)] = _3848
                    require _3794 + (32 * _3848) + 32 <= return_data.size
                    s = _3752 + _3794 + 32
                    t = _3752 + ceil32(return_data.size) + 32
                    while s < _3752 + _3794 + (32 * _3848) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3848 < 1:
                        revert with 'NH{q', 17
                    if _3848 - 1 >= _3848:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3848 - 1) + _3752 + ceil32(return_data.size) + 32]
                    t = _2986
                    continue 
                mem[mem[64]] = mem[_2735 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2751)
                emit 0x80d4cbb8: mem[mem[64]], _2751 << 144
                _2987 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2987 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2987]:
                    revert with 'NH{q', 50
                mem[_2987 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2987]:
                    revert with 'NH{q', 50
                mem[_2987 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3306 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2987 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2987 + 100] = s
                mem[_2987 + 132] = 64
                mem[_2987 + 164] = mem[_2987]
                s = 0
                t = _2987 + 32
                u = _2987 + 196
                while s < mem[_2987]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3306).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2987 + (32 * mem[_2987]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3753 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3795 = mem[_3753]
                require mem[_3753] <= test266151307()
                require _3753 + mem[_3753] + 31 < _3753 + return_data.size
                _3849 = mem[_3753 + mem[_3753]]
                if mem[_3753 + mem[_3753]] > test266151307():
                    revert with 'NH{q', 65
                if _3753 + ceil32(return_data.size) + floor32(mem[_3753 + mem[_3753]]) + 1 > test266151307() or floor32(mem[_3753 + mem[_3753]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3753 + ceil32(return_data.size) + floor32(mem[_3753 + mem[_3753]]) + 1
                mem[_3753 + ceil32(return_data.size)] = _3849
                require _3795 + (32 * _3849) + 32 <= return_data.size
                s = _3753 + _3795 + 32
                t = _3753 + ceil32(return_data.size) + 32
                while s < _3753 + _3795 + (32 * _3849) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3849 < 1:
                    revert with 'NH{q', 17
                if _3849 - 1 >= _3849:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3849 - 1) + _3753 + ceil32(return_data.size) + 32]
                t = _2987
                continue 
            if not address(_2227):
                revert with 0, 'P: ZERO_ADDRESS'
            mem[mem[64] + 4] = address(_2227)
            mem[mem[64] + 36] = address(_2209)
            staticcall address(_2247).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2227), address(_2209)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2375] == mem[_2375 + 12 len 20]
            if not mem[_2375 + 12 len 20]:
                mem[mem[64] + 32] = 0
                emit 0x80d4cbb8: 0
                _2519 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2519 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2519]:
                    revert with 'NH{q', 50
                mem[_2519 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2519]:
                    revert with 'NH{q', 50
                mem[_2519 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2660 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2519 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2519 + 100] = s
                mem[_2519 + 132] = 64
                mem[_2519 + 164] = mem[_2519]
                s = 0
                t = _2519 + 32
                u = _2519 + 196
                while s < mem[_2519]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_2660).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2519 + (32 * mem[_2519]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3759 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3801 = mem[_3759]
                require mem[_3759] <= test266151307()
                require _3759 + mem[_3759] + 31 < _3759 + return_data.size
                _3855 = mem[_3759 + mem[_3759]]
                if mem[_3759 + mem[_3759]] > test266151307():
                    revert with 'NH{q', 65
                if _3759 + ceil32(return_data.size) + floor32(mem[_3759 + mem[_3759]]) + 1 > test266151307() or floor32(mem[_3759 + mem[_3759]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3759 + ceil32(return_data.size) + floor32(mem[_3759 + mem[_3759]]) + 1
                mem[_3759 + ceil32(return_data.size)] = _3855
                require _3801 + (32 * _3855) + 32 <= return_data.size
                s = _3759 + _3801 + 32
                t = _3759 + ceil32(return_data.size) + 32
                while s < _3759 + _3801 + (32 * _3855) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3855 < 1:
                    revert with 'NH{q', 17
                if _3855 - 1 >= _3855:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3855 - 1) + _3759 + ceil32(return_data.size) + 32]
                t = _2519
                continue 
            if address(_2209) == address(_2227):
                revert with 0, 'P: IDENTICAL_ADDRESSES'
            if address(_2209) < address(_2227):
                if not address(_2209):
                    revert with 0, 'P: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(_2209)
                mem[mem[64] + 36] = address(_2227)
                staticcall address(_2247).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(_2209), address(_2227)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2584] == mem[_2584 + 12 len 20]
                staticcall mem[_2584 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2752 = mem[_2736]
                require mem[_2736] == mem[_2736 + 18 len 14]
                _2804 = mem[_2736 + 32]
                require mem[_2736 + 32] == mem[_2736 + 50 len 14]
                require mem[_2736 + 64] == mem[_2736 + 92 len 4]
                if address(_2209) == address(_2227):
                    mem[mem[64]] = mem[_2736 + 18 len 14]
                    mem[mem[64] + 32] = Mask(112, 0, _2804)
                    emit 0x80d4cbb8: mem[mem[64]], _2804 << 144
                    _2989 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2989 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2989]:
                        revert with 'NH{q', 50
                    mem[_2989 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2989]:
                        revert with 'NH{q', 50
                    mem[_2989 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _3308 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_2989 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2989 + 100] = s
                    mem[_2989 + 132] = 64
                    mem[_2989 + 164] = mem[_2989]
                    s = 0
                    t = _2989 + 32
                    u = _2989 + 196
                    while s < mem[_2989]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall address(_3308).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2989 + (32 * mem[_2989]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3755 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3797 = mem[_3755]
                    require mem[_3755] <= test266151307()
                    require _3755 + mem[_3755] + 31 < _3755 + return_data.size
                    _3851 = mem[_3755 + mem[_3755]]
                    if mem[_3755 + mem[_3755]] > test266151307():
                        revert with 'NH{q', 65
                    if _3755 + ceil32(return_data.size) + floor32(mem[_3755 + mem[_3755]]) + 1 > test266151307() or floor32(mem[_3755 + mem[_3755]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3755 + ceil32(return_data.size) + floor32(mem[_3755 + mem[_3755]]) + 1
                    mem[_3755 + ceil32(return_data.size)] = _3851
                    require _3797 + (32 * _3851) + 32 <= return_data.size
                    s = _3755 + _3797 + 32
                    t = _3755 + ceil32(return_data.size) + 32
                    while s < _3755 + _3797 + (32 * _3851) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if _3851 < 1:
                        revert with 'NH{q', 17
                    if _3851 - 1 >= _3851:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[(32 * _3851 - 1) + _3755 + ceil32(return_data.size) + 32]
                    t = _2989
                    continue 
                mem[mem[64]] = mem[_2736 + 50 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2752)
                emit 0x80d4cbb8: mem[mem[64]], _2752 << 144
                _2990 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2990 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2990]:
                    revert with 'NH{q', 50
                mem[_2990 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2990]:
                    revert with 'NH{q', 50
                mem[_2990 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3310 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2990 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2990 + 100] = s
                mem[_2990 + 132] = 64
                mem[_2990 + 164] = mem[_2990]
                s = 0
                t = _2990 + 32
                u = _2990 + 196
                while s < mem[_2990]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3310).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2990 + (32 * mem[_2990]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3756 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3798 = mem[_3756]
                require mem[_3756] <= test266151307()
                require _3756 + mem[_3756] + 31 < _3756 + return_data.size
                _3852 = mem[_3756 + mem[_3756]]
                if mem[_3756 + mem[_3756]] > test266151307():
                    revert with 'NH{q', 65
                if _3756 + ceil32(return_data.size) + floor32(mem[_3756 + mem[_3756]]) + 1 > test266151307() or floor32(mem[_3756 + mem[_3756]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3756 + ceil32(return_data.size) + floor32(mem[_3756 + mem[_3756]]) + 1
                mem[_3756 + ceil32(return_data.size)] = _3852
                require _3798 + (32 * _3852) + 32 <= return_data.size
                s = _3756 + _3798 + 32
                t = _3756 + ceil32(return_data.size) + 32
                while s < _3756 + _3798 + (32 * _3852) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3852 < 1:
                    revert with 'NH{q', 17
                if _3852 - 1 >= _3852:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3852 - 1) + _3756 + ceil32(return_data.size) + 32]
                t = _2990
                continue 
            if not address(_2227):
                revert with 0, 'P: ZERO_ADDRESS'
            mem[mem[64] + 4] = address(_2227)
            mem[mem[64] + 36] = address(_2209)
            staticcall address(_2247).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2227), address(_2209)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2585] == mem[_2585 + 12 len 20]
            staticcall mem[_2585 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2753 = mem[_2737]
            require mem[_2737] == mem[_2737 + 18 len 14]
            _2805 = mem[_2737 + 32]
            require mem[_2737 + 32] == mem[_2737 + 50 len 14]
            require mem[_2737 + 64] == mem[_2737 + 92 len 4]
            if address(_2209) == address(_2227):
                mem[mem[64]] = mem[_2737 + 18 len 14]
                mem[mem[64] + 32] = Mask(112, 0, _2805)
                emit 0x80d4cbb8: mem[mem[64]], _2805 << 144
                _2991 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2991 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_2991]:
                    revert with 'NH{q', 50
                mem[_2991 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_2991]:
                    revert with 'NH{q', 50
                mem[_2991 + 64] = mem[(32 * idx + 1) + 140 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _3312 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[_2991 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2991 + 100] = s
                mem[_2991 + 132] = 64
                mem[_2991 + 164] = mem[_2991]
                s = 0
                t = _2991 + 32
                u = _2991 + 196
                while s < mem[_2991]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall address(_3312).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2991 + (32 * mem[_2991]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3757 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3799 = mem[_3757]
                require mem[_3757] <= test266151307()
                require _3757 + mem[_3757] + 31 < _3757 + return_data.size
                _3853 = mem[_3757 + mem[_3757]]
                if mem[_3757 + mem[_3757]] > test266151307():
                    revert with 'NH{q', 65
                if _3757 + ceil32(return_data.size) + floor32(mem[_3757 + mem[_3757]]) + 1 > test266151307() or floor32(mem[_3757 + mem[_3757]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3757 + ceil32(return_data.size) + floor32(mem[_3757 + mem[_3757]]) + 1
                mem[_3757 + ceil32(return_data.size)] = _3853
                require _3799 + (32 * _3853) + 32 <= return_data.size
                s = _3757 + _3799 + 32
                t = _3757 + ceil32(return_data.size) + 32
                while s < _3757 + _3799 + (32 * _3853) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if _3853 < 1:
                    revert with 'NH{q', 17
                if _3853 - 1 >= _3853:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * _3853 - 1) + _3757 + ceil32(return_data.size) + 32]
                t = _2991
                continue 
            mem[mem[64]] = mem[_2737 + 50 len 14]
            mem[mem[64] + 32] = Mask(112, 0, _2753)
            emit 0x80d4cbb8: mem[mem[64]], _2753 << 144
            _2992 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_2992 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_2992]:
                revert with 'NH{q', 50
            mem[_2992 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_2992]:
                revert with 'NH{q', 50
            mem[_2992 + 64] = mem[(32 * idx + 1) + 140 len 20]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _3314 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[_2992 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2992 + 100] = s
            mem[_2992 + 132] = 64
            mem[_2992 + 164] = mem[_2992]
            s = 0
            t = _2992 + 32
            u = _2992 + 196
            while s < mem[_2992]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall address(_3314).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2992 + (32 * mem[_2992]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3758 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3800 = mem[_3758]
            require mem[_3758] <= test266151307()
            require _3758 + mem[_3758] + 31 < _3758 + return_data.size
            _3854 = mem[_3758 + mem[_3758]]
            if mem[_3758 + mem[_3758]] > test266151307():
                revert with 'NH{q', 65
            if _3758 + ceil32(return_data.size) + floor32(mem[_3758 + mem[_3758]]) + 1 > test266151307() or floor32(mem[_3758 + mem[_3758]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _3758 + ceil32(return_data.size) + floor32(mem[_3758 + mem[_3758]]) + 1
            mem[_3758 + ceil32(return_data.size)] = _3854
            require _3800 + (32 * _3854) + 32 <= return_data.size
            s = _3758 + _3800 + 32
            t = _3758 + ceil32(return_data.size) + 32
            while s < _3758 + _3800 + (32 * _3854) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if _3854 < 1:
                revert with 'NH{q', 17
            if _3854 - 1 >= _3854:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * _3854 - 1) + _3758 + ceil32(return_data.size) + 32]
            t = _2992
            continue 
        if not cd[100]:
            if s > ext_call.return_data[0]:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2207 = mem[128]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = ext_call.return_data[0]
                call address(_2207).0x23b872dd with:
                     gas gas_remaining wei
                    args stor0, address(this.address), ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2251] == bool(mem[_2251])
                _3616 = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = t
                while idx < _3616:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3672 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3672).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3866 = mem[_3862]
                    require mem[_3862] == mem[_3862]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3918 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
                    mem[mem[64] + 36] = _3866
                    call address(_3918).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3866
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4087 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4087] == bool(mem[_4087])
                    _4116 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4116 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4116]:
                        revert with 'NH{q', 50
                    mem[_4116 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4116]:
                        revert with 'NH{q', 50
                    mem[_4116 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if mem[floor32(('cd', 4).length) + 97] < 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if idx != mem[floor32(('cd', 4).length) + 97] - 1:
                        _4156 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_4116 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4116 + 100] = _3866
                        mem[_4116 + 132] = 0
                        mem[_4116 + 164] = 160
                        mem[_4116 + 260] = mem[_4116]
                        t = 0
                        u = _4116 + 32
                        v = _4116 + 292
                        while t < mem[_4116]:
                            mem[v] = mem[u + 12 len 20]
                            _3616 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_4116 + 196] = this.address
                        mem[_4116 + 228] = block.timestamp
                        call address(_4156).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4116 + (32 * mem[_4116]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4422 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4430 = mem[_4422]
                        require mem[_4422] <= test266151307()
                        require _4422 + mem[_4422] + 31 < _4422 + return_data.size
                        _4438 = mem[_4422 + mem[_4422]]
                        if mem[_4422 + mem[_4422]] > test266151307():
                            revert with 'NH{q', 65
                        if _4422 + ceil32(return_data.size) + floor32(mem[_4422 + mem[_4422]]) + 1 > test266151307() or floor32(mem[_4422 + mem[_4422]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4422 + ceil32(return_data.size) + floor32(mem[_4422 + mem[_4422]]) + 1
                        mem[_4422 + ceil32(return_data.size)] = _4438
                        require _4430 + (32 * _4438) + 32 <= return_data.size
                        t = _4422 + _4430 + 32
                        u = _4422 + ceil32(return_data.size) + 32
                        while t < _4422 + _4430 + (32 * _4438) + 32:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3616 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 32
                            u = u + 32
                            continue 
                        if _4422 + _4430 + floor32(_4438) + 32 == -1:
                            revert with 'NH{q', 17
                        _3616 = mem[floor32(('cd', 4).length) + 97]
                        t = _4422 + _4430 + floor32(_4438) + 33
                        u = _4116
                        continue 
                    _4166 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_4116 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_4116 + 100] = _3866
                    mem[_4116 + 132] = 0
                    mem[_4116 + 164] = 160
                    mem[_4116 + 260] = mem[_4116]
                    s = 0
                    t = _4116 + 32
                    u = _4116 + 292
                    while s < mem[_4116]:
                        mem[u] = mem[t + 12 len 20]
                        _3616 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4116 + 196] = this.address
                    mem[_4116 + 228] = block.timestamp
                    call address(_4166).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4116 + (32 * mem[_4116]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4423 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4431 = mem[_4423]
                    require mem[_4423] <= test266151307()
                    require _4423 + mem[_4423] + 31 < _4423 + return_data.size
                    _4439 = mem[_4423 + mem[_4423]]
                    if mem[_4423 + mem[_4423]] > test266151307():
                        revert with 'NH{q', 65
                    if _4423 + ceil32(return_data.size) + floor32(mem[_4423 + mem[_4423]]) + 1 > test266151307() or floor32(mem[_4423 + mem[_4423]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _4423 + ceil32(return_data.size) + floor32(mem[_4423 + mem[_4423]]) + 1
                    mem[_4423 + ceil32(return_data.size)] = _4439
                    require _4431 + (32 * _4439) + 32 <= return_data.size
                    s = _4423 + _4431 + 32
                    t = _4423 + ceil32(return_data.size) + 32
                    while s < _4423 + _4431 + (32 * _4439) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _3616 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 32
                        t = t + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    _3616 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = _4116
                    continue 
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * mem[96] - 1) + 140 len 20]
                require ext_code.size(this.address)
                call this.address.0x4b14e003 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64]] = s
            emit AmountOut(s);
            if s > ext_call.return_data[0]:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2223 = mem[128]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = ext_call.return_data[0]
                call address(_2223).0x23b872dd with:
                     gas gas_remaining wei
                    args stor0, address(this.address), ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2261] == bool(mem[_2261])
                _3617 = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = t
                while idx < _3617:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3674 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3674).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3867 = mem[_3863]
                    require mem[_3863] == mem[_3863]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _3920 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
                    mem[mem[64] + 36] = _3867
                    call address(_3920).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _3867
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4088 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4088] == bool(mem[_4088])
                    _4117 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4117 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4117]:
                        revert with 'NH{q', 50
                    mem[_4117 + 32] = mem[(32 * idx) + 140 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4117]:
                        revert with 'NH{q', 50
                    mem[_4117 + 64] = mem[(32 * idx + 1) + 140 len 20]
                    if mem[floor32(('cd', 4).length) + 97] < 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if idx != mem[floor32(('cd', 4).length) + 97] - 1:
                        _4159 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_4117 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4117 + 100] = _3867
                        mem[_4117 + 132] = 0
                        mem[_4117 + 164] = 160
                        mem[_4117 + 260] = mem[_4117]
                        t = 0
                        u = _4117 + 32
                        v = _4117 + 292
                        while t < mem[_4117]:
                            mem[v] = mem[u + 12 len 20]
                            _3617 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_4117 + 196] = this.address
                        mem[_4117 + 228] = block.timestamp
                        call address(_4159).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4117 + (32 * mem[_4117]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4424 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4432 = mem[_4424]
                        require mem[_4424] <= test266151307()
                        require _4424 + mem[_4424] + 31 < _4424 + return_data.size
                        _4440 = mem[_4424 + mem[_4424]]
                        if mem[_4424 + mem[_4424]] > test266151307():
                            revert with 'NH{q', 65
                        if _4424 + ceil32(return_data.size) + floor32(mem[_4424 + mem[_4424]]) + 1 > test266151307() or floor32(mem[_4424 + mem[_4424]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4424 + ceil32(return_data.size) + floor32(mem[_4424 + mem[_4424]]) + 1
                        mem[_4424 + ceil32(return_data.size)] = _4440
                        require _4432 + (32 * _4440) + 32 <= return_data.size
                        t = _4424 + _4432 + 32
                        u = _4424 + ceil32(return_data.size) + 32
                        while t < _4424 + _4432 + (32 * _4440) + 32:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3617 = mem[floor32(('cd', 4).length) + 97]
                            t = t + 32
                            u = u + 32
                            continue 
                        if _4424 + _4432 + floor32(_4440) + 32 == -1:
                            revert with 'NH{q', 17
                        _3617 = mem[floor32(('cd', 4).length) + 97]
                        t = _4424 + _4432 + floor32(_4440) + 33
                        u = _4117
                        continue 
                    _4168 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_4117 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_4117 + 100] = _3867
                    mem[_4117 + 132] = 0
                    mem[_4117 + 164] = 160
                    mem[_4117 + 260] = mem[_4117]
                    s = 0
                    t = _4117 + 32
                    u = _4117 + 292
                    while s < mem[_4117]:
                        mem[u] = mem[t + 12 len 20]
                        _3617 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4117 + 196] = this.address
                    mem[_4117 + 228] = block.timestamp
                    call address(_4168).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4117 + (32 * mem[_4117]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4425 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4433 = mem[_4425]
                    require mem[_4425] <= test266151307()
                    require _4425 + mem[_4425] + 31 < _4425 + return_data.size
                    _4441 = mem[_4425 + mem[_4425]]
                    if mem[_4425 + mem[_4425]] > test266151307():
                        revert with 'NH{q', 65
                    if _4425 + ceil32(return_data.size) + floor32(mem[_4425 + mem[_4425]]) + 1 > test266151307() or floor32(mem[_4425 + mem[_4425]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _4425 + ceil32(return_data.size) + floor32(mem[_4425 + mem[_4425]]) + 1
                    mem[_4425 + ceil32(return_data.size)] = _4441
                    require _4433 + (32 * _4441) + 32 <= return_data.size
                    s = _4425 + _4433 + 32
                    t = _4425 + ceil32(return_data.size) + 32
                    while s < _4425 + _4433 + (32 * _4441) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _3617 = mem[floor32(('cd', 4).length) + 97]
                        s = s + 32
                        t = t + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    _3617 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = _4117
                    continue 
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * mem[96] - 1) + 140 len 20]
                require ext_code.size(this.address)
                call this.address.0x4b14e003 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
