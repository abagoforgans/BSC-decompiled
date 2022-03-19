contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_11897c9a(?) payable {
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
    require ext_code.size(stor0)
    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + 132 len (96 * ('cd', 4).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _31 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _32 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 4).length) + _31 + 160
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function sub_8db8bc90(?) payable {
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
    while idx < ('cd', 4).length:
        require 0 < mem[96]
        mem[128] = address(cd[36])
        require idx < mem[96]
        require 1 < mem[96]
        mem[160] = mem[(32 * idx) + 140 len 20]
        require 2 < mem[96]
        mem[192] = address(cd[68])
        _78 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[100]
        mem[mem[64] + 36] = 64
        _80 = mem[96]
        mem[mem[64] + 68] = mem[96]
        if 0 >= mem[96]:
            require ext_code.size(stor0)
            call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args cd[100], 64, mem[96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_85]
            require mem[_85] <= test266151307()
            require _85 + mem[_85] + 31 < _85 + return_data.size
            _88 = mem[_85 + mem[_85]]
            require mem[_85 + mem[_85]] <= test266151307()
            require _85 + ceil32(return_data.size) + (32 * mem[_85 + mem[_85]]) + 32 <= test266151307() and (32 * mem[_85 + mem[_85]]) + 32 >= 0
            mem[64] = _85 + ceil32(return_data.size) + (32 * mem[_85 + mem[_85]]) + 32
            mem[_85 + ceil32(return_data.size)] = _88
            require _87 + (32 * _88) + 32 <= return_data.size
            t = 0
            u = _85 + _87 + 32
            v = _85 + ceil32(return_data.size) + 32
            while t < _88:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require _88 - 1 < _88
            if mem[(32 * _88 - 1) + _85 + ceil32(return_data.size) + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * _88 - 1) + _85 + ceil32(return_data.size) + 32]
            continue 
        mem[mem[64] + 100] = address(cd[36])
        t = 1
        u = 160
        v = mem[64] + 132
        while t < _80:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor0)
        call stor0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _78 + (32 * _80 - 1) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _113 = mem[_112]
        require mem[_112] <= test266151307()
        require _112 + mem[_112] + 31 < _112 + return_data.size
        _114 = mem[_112 + mem[_112]]
        require mem[_112 + mem[_112]] <= test266151307()
        require _112 + ceil32(return_data.size) + (32 * mem[_112 + mem[_112]]) + 32 <= test266151307() and (32 * mem[_112 + mem[_112]]) + 32 >= 0
        mem[64] = _112 + ceil32(return_data.size) + (32 * mem[_112 + mem[_112]]) + 32
        mem[_112 + ceil32(return_data.size)] = _114
        require _113 + (32 * _114) + 32 <= return_data.size
        t = 0
        u = _112 + _113 + 32
        v = _112 + ceil32(return_data.size) + 32
        while t < _114:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require _114 - 1 < _114
        if mem[(32 * _114 - 1) + _112 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * _114 - 1) + _112 + ceil32(return_data.size) + 32]
        continue 
    _72 = mem[64]
    mem[mem[64]] = 32
    _77 = mem[96]
    mem[mem[64] + 32] = mem[96]
    if 0 >= mem[96]:
        return 32, mem[96]
    mem[mem[64] + 64] = mem[140 len 20]
    idx = 1
    s = 160
    t = mem[64] + 96
    while idx < _77:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _72 + (32 * _77 - 1) + -mem[64] + 96
}



}
