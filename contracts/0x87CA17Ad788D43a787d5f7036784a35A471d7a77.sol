contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address[] arg1, uint256[] arg2)
#
function _fallback() payable {
    revert
}

function sub_02f18140(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if ('cd', 36).length <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not ('cd', 36).length:
        revert with 'NH{q', 18
    if var124003 < 1:
        revert with 'NH{q', 17
    if var128002 < var128001:
        if var130001 >= ('cd', 36).length:
            revert with 'NH{q', 50
        # nil
    else:
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, mem[(32 * ('cd', 36).length - 1) + 140 len 20], var128004
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function airDrop(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + 98
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _33 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg2.length) + 97]:
            revert with 'NH{q', 50
        _35 = mem[(32 * idx) + floor32(arg2.length) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_33)
        mem[mem[64] + 68] = _35
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_33), _35
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_38] == bool(mem[_38])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_db050c36(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    mem[floor32(('cd', 4).length) + 97] = 26
    mem[floor32(('cd', 4).length) + 129] = 'SafeMath: division by zero'
    if ('cd', 4).length <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not ('cd', 4).length:
        revert with 'NH{q', 18
    if var78003 < 1:
        revert with 'NH{q', 17
    if var82002 >= var82001:
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        call mem[(32 * ('cd', 4).length - 1) + 140 len 20] with:
           value var82004 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if var84001 >= ('cd', 4).length:
        revert with 'NH{q', 50
    call mem[(32 * var86001) + 140 len 20] with:
       value msg.value / ('cd', 4).length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + 161] = 30
    mem[floor32(('cd', 4).length) + 193] = 'SafeMath: subtraction overflow'
    if msg.value / ('cd', 4).length <= var92003:
        # nil
    else:
        mem[floor32(('cd', 4).length) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 229] = 32
        _255 = mem[var92001]
        mem[floor32(('cd', 4).length) + 261] = mem[var92001]
        mem[floor32(('cd', 4).length) + 293 len ceil32(_255)] = mem[var92001 + 32 len ceil32(_255)]
        if ceil32(_255) > _255:
            mem[floor32(('cd', 4).length) + _255 + 293] = 0
        revert with 0, 32, mem[floor32(('cd', 4).length) + 261 len ceil32(_255) + 32]
}



}
