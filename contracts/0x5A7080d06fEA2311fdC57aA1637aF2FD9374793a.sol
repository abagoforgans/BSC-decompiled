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
        _109 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_109] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _109 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _109
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[96] == mem[(32 * ('cd', 36).length) + 128]
    s = 0
    while s < mem[(32 * ('cd', 36).length) + 128] - 1:
        require s + 1 < mem[(32 * ('cd', 36).length) + 128]
        require 0 < mem[mem[(32 * s + 1) + (32 * ('cd', 36).length) + 160]]
        require s < mem[(32 * ('cd', 36).length) + 128]
        require s < mem[(32 * ('cd', 36).length) + 128]
        require mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]]
        require mem[(32 * mem[mem[(32 * s) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * s) + (32 * ('cd', 36).length) + 160] + 44 len 20] == mem[mem[(32 * s + 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]
        s = s + 1
        continue 
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
    require mem[mem[(32 * ('cd', 36).length) + 160] + 44 len 20] == mem[(32 * mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]
    _189 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _189:
        require idx < mem[96]
        _192 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _194 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _197 = mem[_194]
        mem[mem[64] + 68] = mem[_194]
        t = 0
        u = mem[64] + 100
        v = _194 + 32
        while t < _197:
            mem[u] = mem[v + 12 len 20]
            _189 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_192))
        staticcall address(_192).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _197) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _211 = mem[_210]
        require mem[_210] <= test266151307()
        require _210 + return_data.size > _210 + mem[_210] + 31
        _212 = mem[_210 + mem[_210]]
        require mem[_210 + mem[_210]] <= test266151307()
        require (32 * mem[_210 + mem[_210]]) + 32 >= 0 and _210 + ceil32(return_data.size) + (32 * mem[_210 + mem[_210]]) + 32 <= test266151307()
        mem[64] = _210 + ceil32(return_data.size) + (32 * mem[_210 + mem[_210]]) + 32
        mem[_210 + ceil32(return_data.size)] = _212
        require return_data.size >= _211 + (32 * _212) + 32
        t = _210 + _211 + 32
        u = _210 + ceil32(return_data.size) + 32
        s = 0
        while s < _212:
            mem[u] = mem[t]
            _189 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require _212 - 1 < _212
        _189 = mem[96]
        t = _210 + _211 + (32 * _212) + 33
        s = mem[(32 * _212 - 1) + _210 + ceil32(return_data.size) + 32]
        continue 
    return s
}



}
