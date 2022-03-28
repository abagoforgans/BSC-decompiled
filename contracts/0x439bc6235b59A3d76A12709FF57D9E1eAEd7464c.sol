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
    require cd[68] + 35 < calldata.size
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
        _120 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_120] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _120 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _120
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Not owner'
    if mem[96] != mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 'Array length mismatch'
    idx = 0
    while idx < mem[(32 * ('cd', 36).length) + 128] - 1:
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        require 0 < mem[mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]
        if mem[(32 * mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 44 len 20] != mem[mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
            revert with 0, 'Bad paths'
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
    if mem[mem[(32 * ('cd', 36).length) + 160] + 44 len 20] != mem[(32 * mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
        revert with 0, 'Bad paths'
    _217 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _217:
        require idx < mem[96]
        _220 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _222 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _225 = mem[_222]
        mem[mem[64] + 68] = mem[_222]
        t = 0
        u = _222 + 32
        v = mem[64] + 100
        while t < _225:
            mem[v] = mem[u + 12 len 20]
            _217 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_220))
        staticcall address(_220).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _225) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _239 = mem[_238]
        require mem[_238] <= test266151307()
        require _238 + return_data.size > _238 + mem[_238] + 31
        _240 = mem[_238 + mem[_238]]
        require mem[_238 + mem[_238]] <= test266151307()
        require (32 * mem[_238 + mem[_238]]) + 32 >= 0 and _238 + ceil32(return_data.size) + (32 * mem[_238 + mem[_238]]) + 32 <= test266151307()
        mem[64] = _238 + ceil32(return_data.size) + (32 * mem[_238 + mem[_238]]) + 32
        mem[_238 + ceil32(return_data.size)] = _240
        require return_data.size >= _239 + (32 * _240) + 32
        t = _238 + _239 + 32
        u = _238 + ceil32(return_data.size) + 32
        s = 0
        while s < _240:
            mem[u] = mem[t]
            _217 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require _240 - 1 < _240
        _217 = mem[96]
        t = _238 + _239 + (32 * _240) + 33
        s = mem[(32 * _240 - 1) + _238 + ceil32(return_data.size) + 32]
        continue 
    return s
}

function sub_ed750206(?) payable {
    require calldata.size - 4 >= 128
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
    require cd[68] + 35 < calldata.size
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
        _164 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
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
    idx = 0
    while idx < mem[(32 * ('cd', 36).length) + 128] - 1:
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        require 0 < mem[mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]
        if mem[(32 * mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 44 len 20] != mem[mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
            revert with 0, 'Bad paths'
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
    require mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1 < mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
    if mem[mem[(32 * ('cd', 36).length) + 160] + 44 len 20] != mem[(32 * mem[mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]] - 1) + mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] + 44 len 20]:
        revert with 0, 'Bad paths'
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
    _265 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_265))
    staticcall address(_265).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _270 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if cd[4] < mem[_270]:
        revert with 0, 'Insufficient balance'
    _305 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _305:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require 0 < mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]]
        _311 = mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32]
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_311))
        call address(_311).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _318 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_318] == bool(mem[_318])
        require idx < mem[96]
        _321 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _323 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _325 = mem[_323]
        mem[mem[64] + 164] = mem[_323]
        t = 0
        u = _323 + 32
        v = mem[64] + 196
        while t < _325:
            mem[v] = mem[u + 12 len 20]
            _305 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(_321))
        call address(_321).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 0, 160, address(this.address), cd[100], mem[mem[64] + 164 len (32 * _325) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _339 = mem[_338]
        require mem[_338] <= test266151307()
        require _338 + return_data.size > _338 + mem[_338] + 31
        _340 = mem[_338 + mem[_338]]
        require mem[_338 + mem[_338]] <= test266151307()
        require (32 * mem[_338 + mem[_338]]) + 32 >= 0 and _338 + ceil32(return_data.size) + (32 * mem[_338 + mem[_338]]) + 32 <= test266151307()
        mem[64] = _338 + ceil32(return_data.size) + (32 * mem[_338 + mem[_338]]) + 32
        mem[_338 + ceil32(return_data.size)] = _340
        require return_data.size >= _339 + (32 * _340) + 32
        t = _338 + _339 + 32
        u = _338 + ceil32(return_data.size) + 32
        s = 0
        while s < _340:
            mem[u] = mem[t]
            _305 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require _340 - 1 < _340
        _305 = mem[96]
        t = _338 + _339 + (32 * _340) + 33
        s = mem[(32 * _340 - 1) + _338 + ceil32(return_data.size) + 32]
        continue 
    if s <= cd[4]:
        revert with 0, 'No profit'
    return s
}



}
