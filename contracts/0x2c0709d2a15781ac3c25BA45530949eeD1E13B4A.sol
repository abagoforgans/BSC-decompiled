contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;

function _fallback() payable {
    revert
}

function sub_3cd18467(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    if not address(cd[68]):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _43 = mem[floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = mem[140 len 20]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102], _43
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_84e8c410(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    require ext_code.size(stor3)
    staticcall stor3.factory() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _113 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _115 = mem[160]
    if mem[140 len 20] < mem[172 len 20]:
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129] = address(mem[128])
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 149] = address(_115)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = 40
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 201] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 202] = address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 222] = sha3(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129 len 20], address(_115))
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 254] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 169] = 85
        _128 = sha3(0, address(ext_call.return_data[0]), sha3(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129 len 20], address(_115)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 290] = cd[36]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 322] = 64
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 354] = ('cd', 4).length
        idx = 0
        s = 128
        t = floor32(('cd', 4).length) + ceil32(return_data.size) + 386
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 386 len 32 * ('cd', 4).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 286
        require return_data.size >= 32
        _232 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 317 < floor32(('cd', 4).length) + ceil32(return_data.size) + return_data.size + 286
        _234 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]
        if mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 287 > test266151307() or floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 287
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 286] = _234
        require _232 + (32 * _234) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + ceil32(return_data.size) + _232 + 318
        t = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 318
        while idx < _234:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _336 = mem[128]
        mem[mem[64] + 4] = address(_128)
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(_336))
        call address(_336).0xa9059cbb with:
             gas gas_remaining wei
            args address(_128), cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_342] == bool(mem[_342])
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 1 >= _234:
            revert with 'NH{q', 50
        if mem[140 len 20] < mem[172 len 20]:
            if mem[140 len 20] == mem[140 len 20]:
                _370 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _378 = mem[64]
                mem[64] = mem[64] + 32
                mem[_378 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_378 + 36] = 0
                mem[_378 + 68] = _370
                mem[_378 + 100] = msg.sender
                mem[_378 + 132] = 128
                mem[_378 + 164] = mem[_378]
                mem[_378 + 196 len ceil32(mem[_378])] = mem[_378 + 32 len ceil32(mem[_378])]
                if ceil32(mem[_378]) > mem[_378]:
                    mem[_378 + mem[_378] + 196] = 0
                require ext_code.size(address(_128))
                call address(_128).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _370, msg.sender, 128, mem[_378], mem[_378 + 196 len ceil32(mem[_378])]
            else:
                _371 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _379 = mem[64]
                mem[64] = mem[64] + 32
                mem[_379 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_379 + 36] = _371
                mem[_379 + 68] = 0
                mem[_379 + 100] = msg.sender
                mem[_379 + 132] = 128
                mem[_379 + 164] = mem[_379]
                mem[_379 + 196 len ceil32(mem[_379])] = mem[_379 + 32 len ceil32(mem[_379])]
                if ceil32(mem[_379]) > mem[_379]:
                    mem[_379 + mem[_379] + 196] = 0
                require ext_code.size(address(_128))
                call address(_128).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _371, 0, msg.sender, 128, mem[_379], mem[_379 + 196 len ceil32(mem[_379])]
        else:
            if mem[140 len 20] == mem[172 len 20]:
                _372 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _380 = mem[64]
                mem[64] = mem[64] + 32
                mem[_380 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_380 + 36] = 0
                mem[_380 + 68] = _372
                mem[_380 + 100] = msg.sender
                mem[_380 + 132] = 128
                mem[_380 + 164] = mem[_380]
                mem[_380 + 196 len ceil32(mem[_380])] = mem[_380 + 32 len ceil32(mem[_380])]
                if ceil32(mem[_380]) > mem[_380]:
                    mem[_380 + mem[_380] + 196] = 0
                require ext_code.size(address(_128))
                call address(_128).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _372, msg.sender, 128, mem[_380], mem[_380 + 196 len ceil32(mem[_380])]
            else:
                _373 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _381 = mem[64]
                mem[64] = mem[64] + 32
                mem[_381 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_381 + 36] = _373
                mem[_381 + 68] = 0
                mem[_381 + 100] = msg.sender
                mem[_381 + 132] = 128
                mem[_381 + 164] = mem[_381]
                mem[_381 + 196 len ceil32(mem[_381])] = mem[_381 + 32 len ceil32(mem[_381])]
                if ceil32(mem[_381]) > mem[_381]:
                    mem[_381 + mem[_381] + 196] = 0
                require ext_code.size(address(_128))
                call address(_128).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _373, 0, msg.sender, 128, mem[_381], mem[_381 + 196 len ceil32(mem[_381])]
    else:
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129] = address(mem[160])
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 149] = address(_113)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = 40
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 201] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 202] = address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 222] = sha3(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129 len 20], address(_113))
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 254] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 169] = 85
        _131 = sha3(0, address(ext_call.return_data[0]), sha3(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129 len 20], address(_113)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 290] = cd[36]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 322] = 64
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 354] = ('cd', 4).length
        idx = 0
        s = 128
        t = floor32(('cd', 4).length) + ceil32(return_data.size) + 386
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 386 len 32 * ('cd', 4).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 286
        require return_data.size >= 32
        _233 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 317 < floor32(('cd', 4).length) + ceil32(return_data.size) + return_data.size + 286
        _235 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]
        if mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 287 > test266151307() or floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 286 len 4], Mask(224, 32, cd[36]) >> 32 + 286]) + 287
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 286] = _235
        require _233 + (32 * _235) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + ceil32(return_data.size) + _233 + 318
        t = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 318
        while idx < _235:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _338 = mem[128]
        mem[mem[64] + 4] = address(_131)
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(_338))
        call address(_338).0xa9059cbb with:
             gas gas_remaining wei
            args address(_131), cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_343] == bool(mem[_343])
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 1 >= _235:
            revert with 'NH{q', 50
        if mem[140 len 20] < mem[172 len 20]:
            if mem[140 len 20] == mem[140 len 20]:
                _374 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _382 = mem[64]
                mem[64] = mem[64] + 32
                mem[_382 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_382 + 36] = 0
                mem[_382 + 68] = _374
                mem[_382 + 100] = msg.sender
                mem[_382 + 132] = 128
                mem[_382 + 164] = mem[_382]
                mem[_382 + 196 len ceil32(mem[_382])] = mem[_382 + 32 len ceil32(mem[_382])]
                if ceil32(mem[_382]) > mem[_382]:
                    mem[_382 + mem[_382] + 196] = 0
                require ext_code.size(address(_131))
                call address(_131).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _374, msg.sender, 128, mem[_382], mem[_382 + 196 len ceil32(mem[_382])]
            else:
                _375 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _383 = mem[64]
                mem[64] = mem[64] + 32
                mem[_383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_383 + 36] = _375
                mem[_383 + 68] = 0
                mem[_383 + 100] = msg.sender
                mem[_383 + 132] = 128
                mem[_383 + 164] = mem[_383]
                mem[_383 + 196 len ceil32(mem[_383])] = mem[_383 + 32 len ceil32(mem[_383])]
                if ceil32(mem[_383]) > mem[_383]:
                    mem[_383 + mem[_383] + 196] = 0
                require ext_code.size(address(_131))
                call address(_131).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _375, 0, msg.sender, 128, mem[_383], mem[_383 + 196 len ceil32(mem[_383])]
        else:
            if mem[140 len 20] == mem[172 len 20]:
                _376 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _384 = mem[64]
                mem[64] = mem[64] + 32
                mem[_384 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_384 + 36] = 0
                mem[_384 + 68] = _376
                mem[_384 + 100] = msg.sender
                mem[_384 + 132] = 128
                mem[_384 + 164] = mem[_384]
                mem[_384 + 196 len ceil32(mem[_384])] = mem[_384 + 32 len ceil32(mem[_384])]
                if ceil32(mem[_384]) > mem[_384]:
                    mem[_384 + mem[_384] + 196] = 0
                require ext_code.size(address(_131))
                call address(_131).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _376, msg.sender, 128, mem[_384], mem[_384 + 196 len ceil32(mem[_384])]
            else:
                _377 = mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 350]
                _385 = mem[64]
                mem[64] = mem[64] + 32
                mem[_385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_385 + 36] = _377
                mem[_385 + 68] = 0
                mem[_385 + 100] = msg.sender
                mem[_385 + 132] = 128
                mem[_385 + 164] = mem[_385]
                mem[_385 + 196 len ceil32(mem[_385])] = mem[_385 + 32 len ceil32(mem[_385])]
                if ceil32(mem[_385]) > mem[_385]:
                    mem[_385 + mem[_385] + 196] = 0
                require ext_code.size(address(_131))
                call address(_131).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _377, 0, msg.sender, 128, mem[_385], mem[_385 + 196 len ceil32(mem[_385])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
