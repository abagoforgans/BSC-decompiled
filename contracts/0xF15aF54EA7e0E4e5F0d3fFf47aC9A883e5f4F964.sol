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
    t = 96
    while idx < ('cd', 4).length:
        _53 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_53 + 32 len 96] = code.data[2146 len 96]
        require 0 < mem[_53]
        mem[_53 + 32] = address(cd[36])
        require idx < mem[96]
        require 1 < mem[_53]
        mem[_53 + 64] = mem[(32 * idx) + 140 len 20]
        require 2 < mem[_53]
        mem[_53 + 96] = address(cd[68])
        mem[_53 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_53 + 132] = cd[100]
        mem[_53 + 164] = 64
        mem[_53 + 196] = mem[_53]
        u = 0
        v = _53 + 32
        w = _53 + 228
        while u < mem[_53]:
            mem[w] = mem[v + 12 len 20]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require ext_code.size(stor0)
        call stor0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _53 + (32 * mem[_53]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _80 = mem[_79]
        require mem[_79] <= test266151307()
        require _79 + mem[_79] + 31 < _79 + return_data.size
        _81 = mem[_79 + mem[_79]]
        require mem[_79 + mem[_79]] <= test266151307()
        require _79 + ceil32(return_data.size) + (32 * mem[_79 + mem[_79]]) + 32 <= test266151307() and (32 * mem[_79 + mem[_79]]) + 32 >= 0
        mem[64] = _79 + ceil32(return_data.size) + (32 * mem[_79 + mem[_79]]) + 32
        mem[_79 + ceil32(return_data.size)] = _81
        require _80 + (32 * _81) + 32 <= return_data.size
        u = 0
        v = _79 + _80 + 32
        w = _79 + ceil32(return_data.size) + 32
        while u < _81:
            require mem[v] == mem[v]
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require _81 - 1 < _81
        if mem[(32 * _81 - 1) + _79 + ceil32(return_data.size) + 32] <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = mem[(32 * _81 - 1) + _79 + ceil32(return_data.size) + 32]
        t = _53
        continue 
    _54 = mem[64]
    mem[mem[64]] = 32
    _57 = mem[t]
    mem[mem[64] + 32] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 64
    while idx < _57:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len _54 + (32 * _57) + -mem[64] + 64
}



}
