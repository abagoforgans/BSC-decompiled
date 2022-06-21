contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address sub_c016caa1Address;
address sub_ffb0aa42Address;
address sub_c41d28c5Address;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 sub_de2b11aa;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isInBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_afa4709d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[address(arg1)])
}

function sub_c016caa1(?) payable {
    return sub_c016caa1Address
}

function sub_c41d28c5(?) payable {
    return sub_c41d28c5Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_de2b11aa(?) payable {
    return sub_de2b11aa
}

function sub_ffb0aa42(?) payable {
    return sub_ffb0aa42Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addToBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
}

function removeFromBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 0
}

function sub_18a4f8fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function setFeeAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c016caa1Address = arg1
    sub_ffb0aa42Address = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) payable {
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function sub_1dc486c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_de2b11aa:
        revert with 0, 'Locked unFinished'
    if balanceOf[address(this.address)] < arg1:
        revert with 0, 'Balance exceed'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(this.address)] -= arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, this.address, msg.sender);
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor10[address(msg.sender)]) == 1:
        revert with 0, 'blackList address'
    if not stor9[address(msg.sender)]:
        if not stor9[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 and stor12 > -1 / arg2:
                revert with 'NH{q', 17
            if 0 > -(arg2 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor12 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor12 / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor12 / 100)
            emit Transfer((arg2 - (arg2 * stor12 / 100)), msg.sender, arg1);
            if arg2 * stor12 / 100 > 0:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 40 * arg2 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 40 * arg2 * stor12 / 100 / 100
                if balanceOf[stor8] > -(40 * arg2 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += 40 * arg2 * stor12 / 100 / 100
                emit Transfer((40 * arg2 * stor12 / 100 / 100), msg.sender, sub_c41d28c5Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 50 * arg2 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 50 * arg2 * stor12 / 100 / 100
                if balanceOf[stor6] > -(50 * arg2 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += 50 * arg2 * stor12 / 100 / 100
                emit Transfer((50 * arg2 * stor12 / 100 / 100), msg.sender, sub_c016caa1Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 10 * arg2 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 10 * arg2 * stor12 / 100 / 100
                if balanceOf[stor7] > -(10 * arg2 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += 10 * arg2 * stor12 / 100 / 100
                emit Transfer((10 * arg2 * stor12 / 100 / 100), msg.sender, sub_ffb0aa42Address);
    else:
        if arg2 and stor11 > -1 / arg2:
            revert with 'NH{q', 17
        if 0 > -(arg2 * stor11 / 100) - 1:
            revert with 'NH{q', 17
        if not stor9[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor11 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor11 / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor11 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100)
            emit Transfer((arg2 - (arg2 * stor11 / 100)), msg.sender, arg1);
            if arg2 * stor11 / 100 > 0:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 40 * arg2 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 40 * arg2 * stor11 / 100 / 100
                if balanceOf[stor8] > -(40 * arg2 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += 40 * arg2 * stor11 / 100 / 100
                emit Transfer((40 * arg2 * stor11 / 100 / 100), msg.sender, sub_c41d28c5Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 50 * arg2 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 50 * arg2 * stor11 / 100 / 100
                if balanceOf[stor6] > -(50 * arg2 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += 50 * arg2 * stor11 / 100 / 100
                emit Transfer((50 * arg2 * stor11 / 100 / 100), msg.sender, sub_c016caa1Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 10 * arg2 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 10 * arg2 * stor11 / 100 / 100
                if balanceOf[stor7] > -(10 * arg2 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += 10 * arg2 * stor11 / 100 / 100
                emit Transfer((10 * arg2 * stor11 / 100 / 100), msg.sender, sub_ffb0aa42Address);
        else:
            if arg2 and stor12 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * stor11 / 100 > -(arg2 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor11 / 100) - (arg2 * stor12 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor11 / 100) + (arg2 * stor12 / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor11 / 100) + (arg2 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100) - (arg2 * stor12 / 100)
            emit Transfer((arg2 - (arg2 * stor11 / 100) - (arg2 * stor12 / 100)), msg.sender, arg1);
            if (arg2 * stor11 / 100) + (arg2 * stor12 / 100) > 0:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (40 * arg2 * stor11 / 100) + (40 * arg2 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= (40 * arg2 * stor11 / 100) + (40 * arg2 * stor12 / 100) / 100
                if balanceOf[stor8] > -((40 * arg2 * stor11 / 100) + (40 * arg2 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += (40 * arg2 * stor11 / 100) + (40 * arg2 * stor12 / 100) / 100
                emit Transfer(((40 * arg2 * stor11 / 100) + (40 * arg2 * stor12 / 100) / 100), msg.sender, sub_c41d28c5Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (50 * arg2 * stor11 / 100) + (50 * arg2 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= (50 * arg2 * stor11 / 100) + (50 * arg2 * stor12 / 100) / 100
                if balanceOf[stor6] > -((50 * arg2 * stor11 / 100) + (50 * arg2 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += (50 * arg2 * stor11 / 100) + (50 * arg2 * stor12 / 100) / 100
                emit Transfer(((50 * arg2 * stor11 / 100) + (50 * arg2 * stor12 / 100) / 100), msg.sender, sub_c016caa1Address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (10 * arg2 * stor11 / 100) + (10 * arg2 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= (10 * arg2 * stor11 / 100) + (10 * arg2 * stor12 / 100) / 100
                if balanceOf[stor7] > -((10 * arg2 * stor11 / 100) + (10 * arg2 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += (10 * arg2 * stor11 / 100) + (10 * arg2 * stor12 / 100) / 100
                emit Transfer(((10 * arg2 * stor11 / 100) + (10 * arg2 * stor12 / 100) / 100), msg.sender, sub_ffb0aa42Address);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor10[address(arg1)]) == 1:
        revert with 0, 'blackList address'
    if not stor9[address(arg1)]:
        if not stor9[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg3 and stor12 > -1 / arg3:
                revert with 'NH{q', 17
            if 0 > -(arg3 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (arg3 * stor12 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor12 / 100)
            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor12 / 100)
            emit Transfer((arg3 - (arg3 * stor12 / 100)), arg1, arg2);
            if arg3 * stor12 / 100 > 0:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 40 * arg3 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 40 * arg3 * stor12 / 100 / 100
                if balanceOf[stor8] > -(40 * arg3 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += 40 * arg3 * stor12 / 100 / 100
                emit Transfer((40 * arg3 * stor12 / 100 / 100), arg1, sub_c41d28c5Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 50 * arg3 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 50 * arg3 * stor12 / 100 / 100
                if balanceOf[stor6] > -(50 * arg3 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += 50 * arg3 * stor12 / 100 / 100
                emit Transfer((50 * arg3 * stor12 / 100 / 100), arg1, sub_c016caa1Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 10 * arg3 * stor12 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 10 * arg3 * stor12 / 100 / 100
                if balanceOf[stor7] > -(10 * arg3 * stor12 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += 10 * arg3 * stor12 / 100 / 100
                emit Transfer((10 * arg3 * stor12 / 100 / 100), arg1, sub_ffb0aa42Address);
    else:
        if arg3 and stor11 > -1 / arg3:
            revert with 'NH{q', 17
        if 0 > -(arg3 * stor11 / 100) - 1:
            revert with 'NH{q', 17
        if not stor9[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (arg3 * stor11 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
            if arg3 * stor11 / 100 > 0:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 40 * arg3 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 40 * arg3 * stor11 / 100 / 100
                if balanceOf[stor8] > -(40 * arg3 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += 40 * arg3 * stor11 / 100 / 100
                emit Transfer((40 * arg3 * stor11 / 100 / 100), arg1, sub_c41d28c5Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 50 * arg3 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 50 * arg3 * stor11 / 100 / 100
                if balanceOf[stor6] > -(50 * arg3 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += 50 * arg3 * stor11 / 100 / 100
                emit Transfer((50 * arg3 * stor11 / 100 / 100), arg1, sub_c016caa1Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 10 * arg3 * stor11 / 100 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 10 * arg3 * stor11 / 100 / 100
                if balanceOf[stor7] > -(10 * arg3 * stor11 / 100 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += 10 * arg3 * stor11 / 100 / 100
                emit Transfer((10 * arg3 * stor11 / 100 / 100), arg1, sub_ffb0aa42Address);
        else:
            if arg3 and stor12 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 * stor11 / 100 > -(arg3 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (arg3 * stor11 / 100) - (arg3 * stor12 / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100) + (arg3 * stor12 / 100)
            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) + (arg3 * stor12 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100) - (arg3 * stor12 / 100)
            emit Transfer((arg3 - (arg3 * stor11 / 100) - (arg3 * stor12 / 100)), arg1, arg2);
            if (arg3 * stor11 / 100) + (arg3 * stor12 / 100) > 0:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c41d28c5Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < (40 * arg3 * stor11 / 100) + (40 * arg3 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= (40 * arg3 * stor11 / 100) + (40 * arg3 * stor12 / 100) / 100
                if balanceOf[stor8] > -((40 * arg3 * stor11 / 100) + (40 * arg3 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor8] += (40 * arg3 * stor11 / 100) + (40 * arg3 * stor12 / 100) / 100
                emit Transfer(((40 * arg3 * stor11 / 100) + (40 * arg3 * stor12 / 100) / 100), arg1, sub_c41d28c5Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_c016caa1Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < (50 * arg3 * stor11 / 100) + (50 * arg3 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= (50 * arg3 * stor11 / 100) + (50 * arg3 * stor12 / 100) / 100
                if balanceOf[stor6] > -((50 * arg3 * stor11 / 100) + (50 * arg3 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor6] += (50 * arg3 * stor11 / 100) + (50 * arg3 * stor12 / 100) / 100
                emit Transfer(((50 * arg3 * stor11 / 100) + (50 * arg3 * stor12 / 100) / 100), arg1, sub_c016caa1Address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not sub_ffb0aa42Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < (10 * arg3 * stor11 / 100) + (10 * arg3 * stor12 / 100) / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= (10 * arg3 * stor11 / 100) + (10 * arg3 * stor12 / 100) / 100
                if balanceOf[stor7] > -((10 * arg3 * stor11 / 100) + (10 * arg3 * stor12 / 100) / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += (10 * arg3 * stor11 / 100) + (10 * arg3 * stor12 / 100) / 100
                emit Transfer(((10 * arg3 * stor11 / 100) + (10 * arg3 * stor12 / 100) / 100), arg1, sub_ffb0aa42Address);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
