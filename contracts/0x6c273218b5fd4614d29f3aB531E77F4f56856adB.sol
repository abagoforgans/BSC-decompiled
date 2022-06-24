contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
uint8 F; offset 8
array of struct stor6;
array of struct stor7;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
address stor9;
address stor11;
address stor12;
address stor13;

function getF() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return F
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2673ca9d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    F = uint8(arg1)
}

function sub_0aede85b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor8.field_0):
        uint8(stor8.field_0) = 1
    else:
        uint8(stor8.field_0) = 0
}

function sub_874faf7f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor8.field_8):
        Mask(248, 0, stor8.field_8) = 1
    else:
        Mask(248, 0, stor8.field_8) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[160 len 1024] = 32, mem[160 len 992]
    return 32, 32, mem[160 len 1024]
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor8.field_0):
        revert with 'NH{q', 1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 / 100 and F > -1 / arg2 / 100:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if arg2 < arg2 / 100 * F:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * F) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * F)
    if balanceOf[stor9] > (-1 * arg2 / 100 * F) - 1:
        revert with 'NH{q', 17
    mem[0] = stor9
    mem[32] = 1
    balanceOf[stor9] += arg2 / 100 * F
    stor12 = this.address
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2 / 100 * F
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2 / 100 * F
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor12
    mem[ceil32(return_data.size) + 160] = stor13
    mem[ceil32(return_data.size) + 196] = stor11
    mem[ceil32(return_data.size) + 228] = arg2 / 100 * F
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg2 / 100 * F
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 100 * F
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = stor9
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    call stor11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _36 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _37 = mem[_36]
    require mem[_36] <= test266151307()
    require _36 + mem[_36] + 31 < _36 + return_data.size
    _38 = mem[_36 + mem[_36]]
    if mem[_36 + mem[_36]] > test266151307():
        revert with 'NH{q', 65
    if _36 + ceil32(return_data.size) + floor32(mem[_36 + mem[_36]]) + 1 > test266151307() or floor32(mem[_36 + mem[_36]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _36 + ceil32(return_data.size) + floor32(mem[_36 + mem[_36]]) + 1
    mem[_36 + ceil32(return_data.size)] = _38
    require _37 + (32 * _38) + 32 <= return_data.size
    idx = _36 + _37 + 32
    s = _36 + ceil32(return_data.size) + 32
    while idx < _36 + _37 + (32 * _38) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    emit Transfer((arg2 - (arg2 / 100 * F)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor8.field_8):
        revert with 'NH{q', 1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 / 100 and F > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if arg3 < arg3 / 100 * F:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * F) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
    if balanceOf[stor9] > (-1 * arg3 / 100 * F) - 1:
        revert with 'NH{q', 17
    mem[0] = stor9
    mem[32] = 1
    balanceOf[stor9] += arg3 / 100 * F
    stor12 = this.address
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3 / 100 * F
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3 / 100 * F
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor12
    mem[ceil32(return_data.size) + 160] = stor13
    mem[ceil32(return_data.size) + 196] = stor11
    mem[ceil32(return_data.size) + 228] = arg3 / 100 * F
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg3 / 100 * F
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 100 * F
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = stor9
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    call stor11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _35 = mem[_34]
    require mem[_34] <= test266151307()
    require _34 + mem[_34] + 31 < _34 + return_data.size
    _36 = mem[_34 + mem[_34]]
    if mem[_34 + mem[_34]] > test266151307():
        revert with 'NH{q', 65
    if _34 + ceil32(return_data.size) + floor32(mem[_34 + mem[_34]]) + 1 > test266151307() or floor32(mem[_34 + mem[_34]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _34 + ceil32(return_data.size) + floor32(mem[_34 + mem[_34]]) + 1
    mem[_34 + ceil32(return_data.size)] = _36
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = _34 + _35 + 32
    s = _34 + ceil32(return_data.size) + 32
    while idx < _34 + _35 + (32 * _36) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
