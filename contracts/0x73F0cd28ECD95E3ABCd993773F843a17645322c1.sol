contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ecc6aa86(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
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
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _55 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_55] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _55 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _55
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[96] == mem[(32 * ('cd', 36).length) + 128]
    _70 = mem[96]
    s = 0
    t = cd[4]
    while s < _70:
        require s < mem[96]
        _73 = mem[(32 * s) + 128]
        require s < mem[(32 * ('cd', 36).length) + 128]
        _75 = mem[(32 * s) + (32 * ('cd', 36).length) + 160]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = 64
        _78 = mem[_75]
        mem[mem[64] + 68] = mem[_75]
        u = 0
        v = mem[64] + 100
        w = _75 + 32
        while u < _78:
            mem[v] = mem[w + 12 len 20]
            _70 = mem[96]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require ext_code.size(address(_73))
        staticcall address(_73).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args t, 64, mem[mem[64] + 68 len (32 * _78) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_91]
        require mem[_91] <= test266151307()
        require _91 + return_data.size > _91 + mem[_91] + 31
        _93 = mem[_91 + mem[_91]]
        require mem[_91 + mem[_91]] <= test266151307()
        require (32 * mem[_91 + mem[_91]]) + 32 >= 0 and _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32 <= test266151307()
        mem[64] = _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32
        mem[_91 + ceil32(return_data.size)] = _93
        require return_data.size >= _92 + (32 * _93) + 32
        t = _91 + _92 + 32
        u = _91 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _93:
            mem[u] = mem[t]
            _70 = mem[96]
            t = t + 32
            u = u + 32
            idx = idx + 1
            continue 
        require _93 - 1 < _93
        _70 = mem[96]
        t = _91 + _92 + (32 * _93) + 33
        t = mem[(32 * _93 - 1) + _91 + ceil32(return_data.size) + 32]
        continue 
    return t
}



}
