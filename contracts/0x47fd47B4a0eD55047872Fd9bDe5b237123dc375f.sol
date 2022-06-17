contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require arg1
    stor0 = arg1
}

function sub_3af0aefd(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require msg.sender == stor0
    mem[floor32(('cd', 36).length) + 101] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ('cd', 36).length:
        revert with 'NH{q', 18
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _28 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_28)
        mem[mem[64] + 68] = ext_call.return_data[0] / ('cd', 36).length
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_28), ext_call.return_data[0] / ('cd', 36).length
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == bool(mem[_31])
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_784b129a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require msg.sender == stor0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).WETH() with:
            gas gas_remaining wei
    mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = 2
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 129] = address(ext_call.return_data[0])
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 161] = address(cd[36])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 197] = 0
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 229] = 128
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 325] = 2
    idx = 0
    s = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
    t = floor32(('cd', 68).length) + ceil32(return_data.size) + 357
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 261] = this.address
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 293] = block.timestamp + 15
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 15, 2, mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 357 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 193
    require return_data.size >= 32
    _61 = mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0
    require mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 <= test266151307()
    require floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 224 < floor32(('cd', 68).length) + ceil32(return_data.size) + return_data.size + 193
    _62 = mem[floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 193]
    if mem[floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 193] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 194 > test266151307() or floor32(mem[floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 194
    mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 193] = _62
    require _61 + (32 * _62) + 32 <= return_data.size
    idx = floor32(('cd', 68).length) + ceil32(return_data.size) + _61 + 225
    s = floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 225
    while idx < floor32(('cd', 68).length) + ceil32(return_data.size) + _61 + (32 * _62) + 225:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_81]
    require mem[_81] == mem[_81]
    if not ('cd', 68).length:
        revert with 'NH{q', 18
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _82 / ('cd', 68).length
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _82 / ('cd', 68).length
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_95] == bool(mem[_95])
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
