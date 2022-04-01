contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ecc6aa86(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 160 < 128 or (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _90 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_90] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _90 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _90
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    if mem[96] != mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 'Array length mismatch'
    if var57001 < 1:
        revert with 0, 17
    if var61002 >= var61001:
        _276 = mem[96]
        idx = 0
        s = cd[4]
        while idx < _276:
            if idx >= mem[96]:
                revert with 0, 50
            _279 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            _281 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _282 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _287 = mem[_281]
            mem[mem[64] + 68] = mem[_281]
            s = 0
            t = _281 + 32
            u = mem[64] + 100
            while s < _287:
                mem[u] = mem[t + 12 len 20]
                _276 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_279))
            staticcall address(_279).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _282 + (32 * _287) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_335]
            require mem[_335] <= test266151307()
            require _335 + return_data.size > _335 + mem[_335] + 31
            _341 = mem[_335 + mem[_335]]
            if mem[_335 + mem[_335]] > test266151307():
                revert with 0, 65
            if (32 * mem[_335 + mem[_335]]) + 32 < 0 or _335 + ceil32(return_data.size) + (32 * mem[_335 + mem[_335]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _335 + ceil32(return_data.size) + (32 * mem[_335 + mem[_335]]) + 32
            mem[_335 + ceil32(return_data.size)] = _341
            require return_data.size >= _340 + (32 * _341) + 32
            t = _335 + _340 + 32
            u = _335 + ceil32(return_data.size) + 32
            s = 0
            while s < _341:
                mem[u] = mem[t]
                _276 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _341 < 1:
                revert with 0, 17
            if _341 - 1 >= _341:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _276 = mem[96]
            idx = idx + 1
            s = mem[(32 * _341 - 1) + _335 + ceil32(return_data.size) + 32]
            continue 
        return s
    if 1 > !var65002:
        revert with 0, 17
    idx = var67003 + 1
    s = var67006
    while idx < mem[(32 * ('cd', 36).length) + 128]:
        if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
            revert with 0, 50
        if s >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if s >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] < 1:
            revert with 0, 17
        if mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]]:
            revert with 0, 50
        if mem[(32 * mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * s) + (32 * ('cd', 36).length) + 160] + 44 len 20] != mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
            revert with 0, 'Bad paths'
        if s == -1:
            revert with 0, 17
        if mem[(32 * ('cd', 36).length) + 128] < 1:
            revert with 0, 17
        if s + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
            if 1 > !(s + 1):
                revert with 0, 17
            idx = s + 2
            s = s + 1
            continue 
        _441 = mem[96]
        idx = 0
        s = cd[4]
        while idx < _441:
            if idx >= mem[96]:
                revert with 0, 50
            _444 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            _446 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _449 = mem[_446]
            mem[mem[64] + 68] = mem[_446]
            t = 0
            u = _446 + 32
            v = mem[64] + 100
            while t < _449:
                mem[v] = mem[u + 12 len 20]
                _441 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_444))
            staticcall address(_444).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _449) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _462 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _463 = mem[_462]
            require mem[_462] <= test266151307()
            require _462 + return_data.size > _462 + mem[_462] + 31
            _464 = mem[_462 + mem[_462]]
            if mem[_462 + mem[_462]] > test266151307():
                revert with 0, 65
            if (32 * mem[_462 + mem[_462]]) + 32 < 0 or _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32
            mem[_462 + ceil32(return_data.size)] = _464
            require return_data.size >= _463 + (32 * _464) + 32
            t = _462 + _463 + 32
            u = _462 + ceil32(return_data.size) + 32
            s = 0
            while s < _464:
                mem[u] = mem[t]
                _441 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _464 < 1:
                revert with 0, 17
            if _464 - 1 >= _464:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _441 = mem[96]
            idx = idx + 1
            s = mem[(32 * _464 - 1) + _462 + ceil32(return_data.size) + 32]
            continue 
        return s
    revert with 0, 50
}

function sub_355d560d(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 160 < 128 or (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _218 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_218] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _218 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _218
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require calldata.size > cd[132] + 35
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _219 = mem[64]
    if mem[64] + (32 * ('cd', 132).length) + 32 < mem[64] or mem[64] + (32 * ('cd', 132).length) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_219] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    s = cd[132] + 36
    t = _219 + 32
    idx = 0
    while idx < ('cd', 132).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    if mem[96] != mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 'Array length mismatch'
    if mem[96] != ('cd', 132).length:
        revert with 0, 'Array length mismatch'
    if var70001 < 1:
        revert with 0, 17
    if var74002 < var74001:
        if 1 > !var78002:
            revert with 0, 17
        idx = var80003 + 1
        s = var80006
        while idx < mem[(32 * ('cd', 36).length) + 128]:
            if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
                revert with 0, 50
            if s >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if s >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] < 1:
                revert with 0, 17
            if mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]]:
                revert with 0, 50
            if mem[(32 * mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * s) + (32 * ('cd', 36).length) + 160] + 44 len 20] != mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
                revert with 0, 'Bad paths'
            if s == -1:
                revert with 0, 17
            if mem[(32 * ('cd', 36).length) + 128] < 1:
                revert with 0, 17
            if s + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                if 1 > !(s + 1):
                    revert with 0, 17
                idx = s + 2
                s = s + 1
                continue 
            if mem[(32 * ('cd', 36).length) + 128] < 1:
                revert with 0, 17
            if mem[(32 * ('cd', 36).length) + 128] - 1 >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if mem[(32 * ('cd', 36).length) + 128] < 1:
                revert with 0, 17
            if mem[(32 * ('cd', 36).length) + 128] - 1 >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] < 1:
                revert with 0, 17
            if mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]]:
                revert with 0, 50
            if 0 >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if 0 >= mem[mem[(32 * ('cd', 36).length) + 160]]:
                revert with 0, 50
            if mem[mem[(32 * ('cd', 36).length) + 160] + 44 len 20] != mem[(32 * mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
                revert with 0, 'Bad paths'
            if 0 >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if 0 >= mem[mem[(32 * ('cd', 36).length) + 160]]:
                revert with 0, 50
            _1284 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1284))
            staticcall address(_1284).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[4] > mem[_1288]:
                revert with 0, 'Insufficient balance'
            _1348 = mem[96]
            idx = 0
            s = cd[4]
            while idx < _1348:
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
                    revert with 0, 50
                _1354 = mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = s
                require ext_code.size(address(_1354))
                call address(_1354).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1361] == bool(mem[_1361])
                if idx >= mem[_219]:
                    revert with 0, 50
                if not mem[(32 * idx) + _219 + 32]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1367 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 36).length) + 128]:
                        revert with 0, 50
                    _1371 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1375 = mem[_1371]
                    mem[mem[64] + 164] = mem[_1371]
                    t = 0
                    u = _1371 + 32
                    v = mem[64] + 196
                    while t < _1375:
                        mem[v] = mem[u + 12 len 20]
                        _1348 = mem[96]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = cd[100]
                    require ext_code.size(address(_1367))
                    call address(_1367).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args s, 0, 160, address(this.address), cd[100], mem[mem[64] + 164 len (32 * _1375) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1410 = mem[_1408]
                    require mem[_1408] <= test266151307()
                    require _1408 + return_data.size > _1408 + mem[_1408] + 31
                    _1412 = mem[_1408 + mem[_1408]]
                    if mem[_1408 + mem[_1408]] > test266151307():
                        revert with 0, 65
                    if (32 * mem[_1408 + mem[_1408]]) + 32 < 0 or _1408 + ceil32(return_data.size) + (32 * mem[_1408 + mem[_1408]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _1408 + ceil32(return_data.size) + (32 * mem[_1408 + mem[_1408]]) + 32
                    mem[_1408 + ceil32(return_data.size)] = _1412
                    require return_data.size >= _1410 + (32 * _1412) + 32
                    t = _1408 + _1410 + 32
                    u = _1408 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1412:
                        mem[u] = mem[t]
                        _1348 = mem[96]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _1412 < 1:
                        revert with 0, 17
                    if _1412 - 1 >= _1412:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    _1348 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * _1412 - 1) + _1408 + ceil32(return_data.size) + 32]
                    continue 
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
                    revert with 0, 50
                _1378 = mem[(32 * mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_1378))
                staticcall address(_1378).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1385 = mem[_1383]
                if idx >= mem[96]:
                    revert with 0, 50
                _1388 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                _1390 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1392 = mem[_1390]
                mem[mem[64] + 164] = mem[_1390]
                t = 0
                u = _1390 + 32
                v = mem[64] + 196
                while t < _1392:
                    mem[v] = mem[u + 12 len 20]
                    _1348 = mem[96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = cd[100]
                require ext_code.size(address(_1388))
                call address(_1388).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(this.address), cd[100], mem[mem[64] + 164 len (32 * _1392) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(_1378))
                staticcall address(_1378).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1413] < _1385:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _1348 = mem[96]
                idx = idx + 1
                s = mem[_1413] - _1385
                continue 
            if s <= cd[4]:
                revert with 0, 'No profit'
            return s
        revert with 0, 50
    if mem[(32 * ('cd', 36).length) + 128] < 1:
        revert with 0, 17
    if mem[(32 * ('cd', 36).length) + 128] - 1 >= mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 50
    if mem[(32 * ('cd', 36).length) + 128] < 1:
        revert with 0, 17
    if mem[(32 * ('cd', 36).length) + 128] - 1 >= mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 50
    if mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] < 1:
        revert with 0, 17
    if mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]]:
        revert with 0, 50
    if 0 >= mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 50
    if 0 >= mem[mem[(32 * ('cd', 36).length) + 160]]:
        revert with 0, 50
    if mem[mem[(32 * ('cd', 36).length) + 160] + 44 len 20] != mem[(32 * mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
        revert with 0, 'Bad paths'
    if 0 >= mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 50
    if 0 >= mem[mem[(32 * ('cd', 36).length) + 160]]:
        revert with 0, 50
    _747 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_747))
    staticcall address(_747).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _752 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if cd[4] > mem[_752]:
        revert with 0, 'Insufficient balance'
    _892 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _892:
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
            revert with 0, 50
        _898 = mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_898))
        call address(_898).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _914 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_914] == bool(mem[_914])
        if idx >= mem[_219]:
            revert with 0, 50
        if not mem[(32 * idx) + _219 + 32]:
            if idx >= mem[96]:
                revert with 0, 50
            _925 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            _929 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _933 = mem[_929]
            mem[mem[64] + 164] = mem[_929]
            t = 0
            u = _929 + 32
            v = mem[64] + 196
            while t < _933:
                mem[v] = mem[u + 12 len 20]
                _892 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = cd[100]
            require ext_code.size(address(_925))
            call address(_925).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(this.address), cd[100], mem[mem[64] + 164 len (32 * _933) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1052 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1058 = mem[_1052]
            require mem[_1052] <= test266151307()
            require _1052 + return_data.size > _1052 + mem[_1052] + 31
            _1060 = mem[_1052 + mem[_1052]]
            if mem[_1052 + mem[_1052]] > test266151307():
                revert with 0, 65
            if (32 * mem[_1052 + mem[_1052]]) + 32 < 0 or _1052 + ceil32(return_data.size) + (32 * mem[_1052 + mem[_1052]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _1052 + ceil32(return_data.size) + (32 * mem[_1052 + mem[_1052]]) + 32
            mem[_1052 + ceil32(return_data.size)] = _1060
            require return_data.size >= _1058 + (32 * _1060) + 32
            t = _1052 + _1058 + 32
            u = _1052 + ceil32(return_data.size) + 32
            s = 0
            while s < _1060:
                mem[u] = mem[t]
                _892 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _1060 < 1:
                revert with 0, 17
            if _1060 - 1 >= _1060:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _892 = mem[96]
            idx = idx + 1
            s = mem[(32 * _1060 - 1) + _1052 + ceil32(return_data.size) + 32]
            continue 
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] < 1:
            revert with 0, 17
        if mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
            revert with 0, 50
        _937 = mem[(32 * mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_937))
        staticcall address(_937).balanceOf(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _945 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _948 = mem[_945]
        if idx >= mem[96]:
            revert with 0, 50
        _953 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        _955 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        _956 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _960 = mem[_955]
        mem[mem[64] + 164] = mem[_955]
        s = 0
        t = _955 + 32
        u = mem[64] + 196
        while s < _960:
            mem[u] = mem[t + 12 len 20]
            _892 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_956 + 100] = this.address
        mem[_956 + 132] = cd[100]
        require ext_code.size(address(_953))
        call address(_953).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _956 + (32 * _960) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_937))
        staticcall address(_937).balanceOf(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1061 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1061] < _948:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _892 = mem[96]
        idx = idx + 1
        s = mem[_1061] - _948
        continue 
    if s <= cd[4]:
        revert with 0, 'No profit'
    return s
}



}
