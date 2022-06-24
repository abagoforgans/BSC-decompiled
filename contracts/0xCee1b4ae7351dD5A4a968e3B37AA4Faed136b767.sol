contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not Owner'
    if not arg1:
        revert with 0, 'invalid address'
    owner = arg1
}

function sub_46af6ad8(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'not Owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args 0xae13d989dac2f0debff460ac112a837c89baa7cd, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4c8a3e30d206d2ee6e460d22b0c2323981f29805, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4c8a3e30d206d2ee6e460d22b0c2323981f29805)
    call 0x4c8a3e30d206d2ee6e460d22b0c2323981f29805.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4c8a3e30d206d2ee6e460d22b0c2323981f29805)
    call 0x4c8a3e30d206d2ee6e460d22b0c2323981f29805.0x562e19df with:
         gas gas_remaining wei
        args 0, arg3, arg4, 0, address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c347d61(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'not Owner'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = address(arg5)
    mem[324] = block.timestamp
    call 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _18 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _19 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = _18 + 224
    s = ceil32(return_data.size) + 224
    while idx < _18 + (32 * _19) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}

function sub_b1f0e633(?) payable {
    require calldata.size - 4 >= 192
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
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'not Owner'
    mem[floor32(('cd', 36).length) + 101] = 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3
    mem[floor32(('cd', 36).length) + 133] = cd[164]
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3, cd[164]
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = cd[68]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 133] = cd[100]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 165] = 160
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 261] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + ceil32(return_data.size) + 293
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 197] = address(cd[132])
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 229] = block.timestamp
    call 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[68], cd[100], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 36).length]), address(cd[132]), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _35 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + ceil32(return_data.size) + return_data.size + 97
    _36 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + ceil32(return_data.size) + _35 + 129
    s = floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 129
    while idx < floor32(('cd', 36).length) + ceil32(return_data.size) + _35 + (32 * _36) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}



}
