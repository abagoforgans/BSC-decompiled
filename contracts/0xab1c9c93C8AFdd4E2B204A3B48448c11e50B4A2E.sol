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
        _148 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_148] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _148 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _148
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
    _235 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_235))
    staticcall address(_235).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if cd[4] < mem[_240]:
        revert with 0, 'Insufficient balance'
    _265 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _265:
        require idx < mem[96]
        _268 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _271 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _274 = mem[_271]
        mem[mem[64] + 164] = mem[_271]
        t = 0
        u = mem[64] + 196
        v = _271 + 32
        while t < _274:
            mem[u] = mem[v + 12 len 20]
            _265 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(_268))
        call address(_268).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 0, 160, address(this.address), cd[100], mem[mem[64] + 164 len (32 * _274) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _289 = mem[_288]
        require mem[_288] <= test266151307()
        require _288 + return_data.size > _288 + mem[_288] + 31
        _290 = mem[_288 + mem[_288]]
        require mem[_288 + mem[_288]] <= test266151307()
        require (32 * mem[_288 + mem[_288]]) + 32 >= 0 and _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32 <= test266151307()
        mem[64] = _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32
        mem[_288 + ceil32(return_data.size)] = _290
        require return_data.size >= _289 + (32 * _290) + 32
        t = _288 + _289 + 32
        u = _288 + ceil32(return_data.size) + 32
        s = 0
        while s < _290:
            mem[u] = mem[t]
            _265 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require _290 - 1 < _290
        _265 = mem[96]
        t = _288 + _289 + (32 * _290) + 33
        s = mem[(32 * _290 - 1) + _288 + ceil32(return_data.size) + 32]
        continue 
    if s <= cd[4]:
        revert with 0, 'No profit'
    return s
}



}
