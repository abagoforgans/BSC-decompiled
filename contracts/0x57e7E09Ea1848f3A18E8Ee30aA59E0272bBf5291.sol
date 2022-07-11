contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address devAddress;
address wethAddress;
uint256 stor12; offset 1
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
address stor13;
address sub_90fcdb36Address; offset 16
uint256 stor13; offset 8
address sub_de0c9d57Address;
mapping of uint8 stor15;

function totalSupply() {
    return totalSupply
}

function devAddress() {
    return devAddress
}

function weth() {
    return wethAddress
}

function swapAndLiquifyEnabled() {
    return bool(uint8(stor13.field_0))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_90fcdb36(?) {
    return sub_90fcdb36Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_de0c9d57(?) {
    return sub_de0c9d57Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f93e4635(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not permitted'
    uint256(stor12.field_0) = arg1
}

function removeWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not permitted'
    stor15[address(arg1)] = 0
    emit 0xd7137e80: arg1, msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function addWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor1 != msg.sender:
        revert with 0, 'not permitted'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'invalid zero address'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg1.length) + 97] = 32
    mem[floor32(arg1.length) + 129] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x5e7546b1: mem[mem[64] len floor32(arg1.length) + (32 * arg1.length) + -mem[64] + 161], msg.sender
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() {
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < uint256(stor12.field_0):
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    else:
        if uint8(stor13.field_8):
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            if msg.sender == sub_de0c9d57Address:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            else:
                if not uint8(stor13.field_0):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    Mask(248, 0, stor13.field_8) = 1
                    if uint256(stor12.field_0) < uint255(stor12.field_1):
                        revert with 'NH{q', 17
                    mem[128] = this.address
                    mem[160] = wethAddress
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_90fcdb36Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor13.field_0)] = uint255(stor12.field_1)
                    emit Approval(uint255(stor12.field_1), this.address, sub_90fcdb36Address);
                    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[196] = uint255(stor12.field_1)
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_90fcdb36Address)
                    call sub_90fcdb36Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2 * Mask(256, -1, uint255(stor12.field_1)), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_90fcdb36Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor13.field_0)] = uint256(stor12.field_0) - uint255(stor12.field_1)
                    emit Approval((uint256(stor12.field_0) - uint255(stor12.field_1)), this.address, sub_90fcdb36Address);
                    call sub_90fcdb36Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), uint256(stor12.field_0) - uint255(stor12.field_1), 0, 0, 0, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_call.return_data[64] > 0
                    emit SwapAndLiquify(2 * Mask(256, -1, uint255(stor12.field_1)), 0, uint256(stor12.field_0) - uint255(stor12.field_1));
                    Mask(248, 0, stor13.field_8) = 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 2))), ('param', 'arg2'))
    balanceOf[address(msg.sender)] -= arg2
    if stor15[address(msg.sender)]:
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor15[address(arg1)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not sub_de0c9d57Address:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if sub_de0c9d57Address == msg.sender:
                    if arg2 and stor8 > -1 / arg2:
                        revert with 'NH{q', 17
                    if balanceOf[stor10] > -(arg2 * stor8 / 1000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor10] += arg2 * stor8 / 1000
                    if arg2 and stor9 > -1 / arg2:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -(arg2 * stor9 / 1000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[0] += arg2 * stor9 / 1000
                    emit Transfer((arg2 * stor9 / 1000), msg.sender, 0);
                    emit Transfer((arg2 * stor8 / 1000), msg.sender, devAddress);
                    if arg2 and stor7 > -1 / arg2:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] > -(arg2 * stor7 / 1000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 * stor7 / 1000
                    emit Transfer((arg2 * stor7 / 1000), msg.sender, this.address);
                    if arg2 < arg2 * stor8 / 1000:
                        revert with 'NH{q', 17
                    if arg2 - (arg2 * stor8 / 1000) < arg2 * stor9 / 1000:
                        revert with 'NH{q', 17
                    if arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) < arg2 * stor7 / 1000:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor8 / 1000) + (arg2 * stor9 / 1000) + (arg2 * stor7 / 1000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) - (arg2 * stor7 / 1000)
                    emit Transfer((arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) - (arg2 * stor7 / 1000)), msg.sender, arg1);
                else:
                    if sub_de0c9d57Address != arg1:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and stor8 > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[stor10] > -(arg2 * stor8 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor10] += arg2 * stor8 / 1000
                        if arg2 and stor9 > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg2 * stor9 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg2 * stor9 / 1000
                        emit Transfer((arg2 * stor9 / 1000), msg.sender, 0);
                        emit Transfer((arg2 * stor8 / 1000), msg.sender, devAddress);
                        if arg2 and stor7 > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > -(arg2 * stor7 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 * stor7 / 1000
                        emit Transfer((arg2 * stor7 / 1000), msg.sender, this.address);
                        if arg2 < arg2 * stor8 / 1000:
                            revert with 'NH{q', 17
                        if arg2 - (arg2 * stor8 / 1000) < arg2 * stor9 / 1000:
                            revert with 'NH{q', 17
                        if arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) < arg2 * stor7 / 1000:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor8 / 1000) + (arg2 * stor9 / 1000) + (arg2 * stor7 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) - (arg2 * stor7 / 1000)
                        emit Transfer((arg2 - (arg2 * stor8 / 1000) - (arg2 * stor9 / 1000) - (arg2 * stor7 / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < uint256(stor12.field_0):
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if stor15[address(arg1)]:
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor15[address(arg2)]:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if not sub_de0c9d57Address:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if sub_de0c9d57Address == arg1:
                        if arg3 and stor8 > -1 / arg3:
                            revert with 'NH{q', 17
                        if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor10] += arg3 * stor8 / 1000
                        if arg3 and stor9 > -1 / arg3:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg3 * stor9 / 1000
                        emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                        emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                        if arg3 and stor7 > -1 / arg3:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor7 / 1000
                        emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                        if arg3 < arg3 * stor8 / 1000:
                            revert with 'NH{q', 17
                        if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                            revert with 'NH{q', 17
                        if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                        emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                    else:
                        if sub_de0c9d57Address != arg2:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and stor8 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg3 * stor8 / 1000
                            if arg3 and stor9 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg3 * stor9 / 1000
                            emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                            emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                            if arg3 and stor7 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor7 / 1000
                            emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                            if arg3 < arg3 * stor8 / 1000:
                                revert with 'NH{q', 17
                            if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                revert with 'NH{q', 17
                            if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                            emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if uint8(stor13.field_8):
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if stor15[address(arg1)]:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor15[address(arg2)]:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not sub_de0c9d57Address:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if sub_de0c9d57Address == arg1:
                            if arg3 and stor8 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg3 * stor8 / 1000
                            if arg3 and stor9 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg3 * stor9 / 1000
                            emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                            emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                            if arg3 and stor7 > -1 / arg3:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor7 / 1000
                            emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                            if arg3 < arg3 * stor8 / 1000:
                                revert with 'NH{q', 17
                            if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                revert with 'NH{q', 17
                            if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                            emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                        else:
                            if sub_de0c9d57Address != arg2:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and stor8 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += arg3 * stor8 / 1000
                                if arg3 and stor9 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg3 * stor9 / 1000
                                emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                if arg3 and stor7 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                if arg3 < arg3 * stor8 / 1000:
                                    revert with 'NH{q', 17
                                if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                    revert with 'NH{q', 17
                                if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if arg1 == sub_de0c9d57Address:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if stor15[address(arg1)]:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor15[address(arg2)]:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not sub_de0c9d57Address:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if sub_de0c9d57Address == arg1:
                                if arg3 and stor8 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += arg3 * stor8 / 1000
                                if arg3 and stor9 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg3 * stor9 / 1000
                                emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                if arg3 and stor7 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                if arg3 < arg3 * stor8 / 1000:
                                    revert with 'NH{q', 17
                                if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                    revert with 'NH{q', 17
                                if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                            else:
                                if sub_de0c9d57Address != arg2:
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and stor8 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[stor10] += arg3 * stor8 / 1000
                                    if arg3 and stor9 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg3 * stor9 / 1000
                                    emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                    emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                    if arg3 and stor7 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                    emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                    if arg3 < arg3 * stor8 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                    emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not uint8(stor13.field_0):
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if stor15[address(arg1)]:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor15[address(arg2)]:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if not sub_de0c9d57Address:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_de0c9d57Address == arg1:
                                    if arg3 and stor8 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[stor10] += arg3 * stor8 / 1000
                                    if arg3 and stor9 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg3 * stor9 / 1000
                                    emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                    emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                    if arg3 and stor7 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                    emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                    if arg3 < arg3 * stor8 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                    emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                                else:
                                    if sub_de0c9d57Address != arg2:
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and stor8 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[stor10] += arg3 * stor8 / 1000
                                        if arg3 and stor9 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * stor9 / 1000
                                        emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                        emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                        if arg3 and stor7 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                        emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                        if arg3 < arg3 * stor8 / 1000:
                                            revert with 'NH{q', 17
                                        if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                            revert with 'NH{q', 17
                                        if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                        emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    Mask(248, 0, stor13.field_8) = 1
                    if uint256(stor12.field_0) < uint255(stor12.field_1):
                        revert with 'NH{q', 17
                    mem[128] = this.address
                    mem[160] = wethAddress
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_90fcdb36Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor13.field_0)] = uint255(stor12.field_1)
                    emit Approval(uint255(stor12.field_1), this.address, sub_90fcdb36Address);
                    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[196] = uint255(stor12.field_1)
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_90fcdb36Address)
                    call sub_90fcdb36Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2 * Mask(256, -1, uint255(stor12.field_1)), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_90fcdb36Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor13.field_0)] = uint256(stor12.field_0) - uint255(stor12.field_1)
                    emit Approval((uint256(stor12.field_0) - uint255(stor12.field_1)), this.address, sub_90fcdb36Address);
                    call sub_90fcdb36Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), uint256(stor12.field_0) - uint255(stor12.field_1), 0, 0, 0, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_call.return_data[64] > 0
                    emit SwapAndLiquify(2 * Mask(256, -1, uint255(stor12.field_1)), 0, uint256(stor12.field_0) - uint255(stor12.field_1));
                    Mask(248, 0, stor13.field_8) = 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if stor15[address(arg1)]:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor15[address(arg2)]:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if not sub_de0c9d57Address:
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_de0c9d57Address == arg1:
                                    if arg3 and stor8 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[stor10] += arg3 * stor8 / 1000
                                    if arg3 and stor9 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg3 * stor9 / 1000
                                    emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                    emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                    if arg3 and stor7 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                    emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                    if arg3 < arg3 * stor8 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                        revert with 'NH{q', 17
                                    if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                    emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                                else:
                                    if sub_de0c9d57Address != arg2:
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and stor8 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[stor10] > -(arg3 * stor8 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[stor10] += arg3 * stor8 / 1000
                                        if arg3 and stor9 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * stor9 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * stor9 / 1000
                                        emit Transfer((arg3 * stor9 / 1000), arg1, 0);
                                        emit Transfer((arg3 * stor8 / 1000), arg1, devAddress);
                                        if arg3 and stor7 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -(arg3 * stor7 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3 * stor7 / 1000
                                        emit Transfer((arg3 * stor7 / 1000), arg1, this.address);
                                        if arg3 < arg3 * stor8 / 1000:
                                            revert with 'NH{q', 17
                                        if arg3 - (arg3 * stor8 / 1000) < arg3 * stor9 / 1000:
                                            revert with 'NH{q', 17
                                        if arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) < arg3 * stor7 / 1000:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor8 / 1000) + (arg3 * stor9 / 1000) + (arg3 * stor7 / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)
                                        emit Transfer((arg3 - (arg3 * stor8 / 1000) - (arg3 * stor9 / 1000) - (arg3 * stor7 / 1000)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
