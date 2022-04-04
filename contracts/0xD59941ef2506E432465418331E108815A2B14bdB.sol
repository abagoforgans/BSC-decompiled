contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fc1d8f7a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
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
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require 0 < ('cd', 36).length
    _44 = mem[128]
    mem[(32 * ('cd', 36).length) + 132] = msg.sender
    mem[(32 * ('cd', 36).length) + 164] = this.address
    mem[(32 * ('cd', 36).length) + 196] = cd[68]
    require ext_code.size(address(_44))
    call address(_44).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 132] = address(cd[4])
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 164] = cd[68]
    require ext_code.size(address(_44))
    call address(_44).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[4]), cd[68]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 132] = cd[68]
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 164] = 0
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 196] = 160
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 324
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 228] = this.address
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 260] = cd[132]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 36).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _96 = mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 159 < (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + return_data.size + 128
    _97 = mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]
    require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 128] = _97
    require _96 + (32 * _97) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + _96 + 160
    t = (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160
    while idx < _97:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < _97
    _145 = mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192]
    if mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] < mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] < cd[100]:
        revert with 0, 'ERR_LIMIT_OUT'
    require ('cd', 36).length < ('cd', 36).length
    if not mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_44))
        staticcall address(_44).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_156]
        require mem[_156] == mem[_156]
        if mem[_156]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _158
            require ext_code.size(address(_44))
            call address(_44).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _158
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == bool(mem[_170])
            if not mem[_170]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _145
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _145
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_159] == bool(mem[_159])
        if not mem[_159]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_44))
        staticcall address(_44).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_168]
        require mem[_168] == mem[_168]
        if mem[_168]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _171
            require ext_code.size(address(_44))
            call address(_44).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _171
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_181] == bool(mem[_181])
            if not mem[_181]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    return _145
}



}
