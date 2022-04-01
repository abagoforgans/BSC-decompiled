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
    call arg1.0xa9059cbb with:
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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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

function sub_ed750206(?) payable {
    require calldata.size - 4 >= 128
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
        _164 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_164] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _164 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _164
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
    if var61002 < var61001:
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
            _858 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_858))
            staticcall address(_858).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _862 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[4] > mem[_862]:
                revert with 0, 'Insufficient balance'
            _897 = mem[96]
            idx = 0
            s = cd[4]
            while idx < _897:
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
                    revert with 0, 50
                _903 = mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = s
                require ext_code.size(address(_903))
                call address(_903).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _910 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_910] == bool(mem[_910])
                if idx >= mem[96]:
                    revert with 0, 50
                _913 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                _915 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _916 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _917 = mem[_915]
                mem[mem[64] + 164] = mem[_915]
                s = 0
                t = _915 + 32
                u = mem[64] + 196
                while s < _917:
                    mem[u] = mem[t + 12 len 20]
                    _897 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_916 + 100] = this.address
                mem[_916 + 132] = cd[100]
                require ext_code.size(address(_913))
                call address(_913).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _916 + (32 * _917) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _930 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _931 = mem[_930]
                require mem[_930] <= test266151307()
                require _930 + return_data.size > _930 + mem[_930] + 31
                _932 = mem[_930 + mem[_930]]
                if mem[_930 + mem[_930]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_930 + mem[_930]]) + 32 < 0 or _930 + ceil32(return_data.size) + (32 * mem[_930 + mem[_930]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _930 + ceil32(return_data.size) + (32 * mem[_930 + mem[_930]]) + 32
                mem[_930 + ceil32(return_data.size)] = _932
                require return_data.size >= _931 + (32 * _932) + 32
                t = _930 + _931 + 32
                u = _930 + ceil32(return_data.size) + 32
                s = 0
                while s < _932:
                    mem[u] = mem[t]
                    _897 = mem[96]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _932 < 1:
                    revert with 0, 17
                if _932 - 1 >= _932:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                _897 = mem[96]
                idx = idx + 1
                s = mem[(32 * _932 - 1) + _930 + ceil32(return_data.size) + 32]
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
    _477 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_477))
    staticcall address(_477).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _482 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if cd[4] > mem[_482]:
        revert with 0, 'Insufficient balance'
    _572 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _572:
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]:
            revert with 0, 50
        _578 = mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_578))
        call address(_578).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _594 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_594] == bool(mem[_594])
        if idx >= mem[96]:
            revert with 0, 50
        _600 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 36).length) + 128]:
            revert with 0, 50
        _602 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        _603 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _605 = mem[_602]
        mem[mem[64] + 164] = mem[_602]
        s = 0
        t = _602 + 32
        u = mem[64] + 196
        while s < _605:
            mem[u] = mem[t + 12 len 20]
            _572 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_603 + 100] = this.address
        mem[_603 + 132] = cd[100]
        require ext_code.size(address(_600))
        call address(_600).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _603 + (32 * _605) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _680 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _685 = mem[_680]
        require mem[_680] <= test266151307()
        require _680 + return_data.size > _680 + mem[_680] + 31
        _686 = mem[_680 + mem[_680]]
        if mem[_680 + mem[_680]] > test266151307():
            revert with 0, 65
        if (32 * mem[_680 + mem[_680]]) + 32 < 0 or _680 + ceil32(return_data.size) + (32 * mem[_680 + mem[_680]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _680 + ceil32(return_data.size) + (32 * mem[_680 + mem[_680]]) + 32
        mem[_680 + ceil32(return_data.size)] = _686
        require return_data.size >= _685 + (32 * _686) + 32
        t = _680 + _685 + 32
        u = _680 + ceil32(return_data.size) + 32
        s = 0
        while s < _686:
            mem[u] = mem[t]
            _572 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _686 < 1:
            revert with 0, 17
        if _686 - 1 >= _686:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        _572 = mem[96]
        idx = idx + 1
        s = mem[(32 * _686 - 1) + _680 + ceil32(return_data.size) + 32]
        continue 
    if s <= cd[4]:
        revert with 0, 'No profit'
    return s
}



}
