contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
uint8 decimals;
address stor7;
address feeAccount; offset 8
uint256 burnFee;
uint256 stor9;
uint256 taxFee;
uint256 stor11;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getFeeAccount() {
    return feeAccount
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getBurnFee() {
    return burnFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getTaxFee() {
    return taxFee
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

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function name() {
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

function symbol() {
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if stor6[address(msg.sender)]:
        if taxFee:
            stor11 = taxFee
            stor9 = burnFee
            taxFee = 0
            burnFee = 0
        else:
            if burnFee:
                stor11 = taxFee
                stor9 = burnFee
                taxFee = 0
                burnFee = 0
        if taxFee > -burnFee - 1:
            revert with 'NH{q', 17
        if arg2 and taxFee + burnFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < (taxFee * arg2) + (burnFee * arg2) / 100:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 + ((taxFee * arg2) + (burnFee * arg2) / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)
        if arg2 and burnFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * burnFee / 100 > 0:
            if totalSupply < arg2 * burnFee / 100:
                revert with 'NH{q', 17
            totalSupply -= arg2 * burnFee / 100
            emit Transfer((arg2 * burnFee / 100), msg.sender, 0);
        if arg2 and taxFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * taxFee / 100 > 0:
            if balanceOf[stor7] > -(arg2 * taxFee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor7] += arg2 * taxFee / 100
            emit Transfer((arg2 * taxFee / 100), msg.sender, feeAccount);
        emit Transfer((arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)), msg.sender, arg1);
        taxFee = stor11
        burnFee = stor9
    else:
        if not stor6[address(arg1)]:
            if taxFee > -burnFee - 1:
                revert with 'NH{q', 17
            if arg2 and taxFee + burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 < (taxFee * arg2) + (burnFee * arg2) / 100:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 + ((taxFee * arg2) + (burnFee * arg2) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)
            if arg2 and burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * burnFee / 100 > 0:
                if totalSupply < arg2 * burnFee / 100:
                    revert with 'NH{q', 17
                totalSupply -= arg2 * burnFee / 100
                emit Transfer((arg2 * burnFee / 100), msg.sender, 0);
            if arg2 and taxFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * taxFee / 100 > 0:
                if balanceOf[stor7] > -(arg2 * taxFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += arg2 * taxFee / 100
                emit Transfer((arg2 * taxFee / 100), msg.sender, feeAccount);
            emit Transfer((arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)), msg.sender, arg1);
        else:
            if taxFee:
                stor11 = taxFee
                stor9 = burnFee
                taxFee = 0
                burnFee = 0
            else:
                if burnFee:
                    stor11 = taxFee
                    stor9 = burnFee
                    taxFee = 0
                    burnFee = 0
            if taxFee > -burnFee - 1:
                revert with 'NH{q', 17
            if arg2 and taxFee + burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 < (taxFee * arg2) + (burnFee * arg2) / 100:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 + ((taxFee * arg2) + (burnFee * arg2) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)
            if arg2 and burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * burnFee / 100 > 0:
                if totalSupply < arg2 * burnFee / 100:
                    revert with 'NH{q', 17
                totalSupply -= arg2 * burnFee / 100
                emit Transfer((arg2 * burnFee / 100), msg.sender, 0);
            if arg2 and taxFee > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * taxFee / 100 > 0:
                if balanceOf[stor7] > -(arg2 * taxFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += arg2 * taxFee / 100
                emit Transfer((arg2 * taxFee / 100), msg.sender, feeAccount);
            emit Transfer((arg2 - ((taxFee * arg2) + (burnFee * arg2) / 100)), msg.sender, arg1);
            taxFee = stor11
            burnFee = stor9
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
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if stor6[address(arg1)]:
        if taxFee:
            stor11 = taxFee
            stor9 = burnFee
            taxFee = 0
            burnFee = 0
        else:
            if burnFee:
                stor11 = taxFee
                stor9 = burnFee
                taxFee = 0
                burnFee = 0
        if taxFee > -burnFee - 1:
            revert with 'NH{q', 17
        if arg3 and taxFee + burnFee > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 < (taxFee * arg3) + (burnFee * arg3) / 100:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 + ((taxFee * arg3) + (burnFee * arg3) / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)
        if arg3 and burnFee > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 * burnFee / 100 > 0:
            if totalSupply < arg3 * burnFee / 100:
                revert with 'NH{q', 17
            totalSupply -= arg3 * burnFee / 100
            emit Transfer((arg3 * burnFee / 100), arg1, 0);
        if arg3 and taxFee > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 * taxFee / 100 > 0:
            if balanceOf[stor7] > -(arg3 * taxFee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor7] += arg3 * taxFee / 100
            emit Transfer((arg3 * taxFee / 100), arg1, feeAccount);
        emit Transfer((arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)), arg1, arg2);
        taxFee = stor11
        burnFee = stor9
    else:
        if not stor6[address(arg2)]:
            if taxFee > -burnFee - 1:
                revert with 'NH{q', 17
            if arg3 and taxFee + burnFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < (taxFee * arg3) + (burnFee * arg3) / 100:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 + ((taxFee * arg3) + (burnFee * arg3) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)
            if arg3 and burnFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 * burnFee / 100 > 0:
                if totalSupply < arg3 * burnFee / 100:
                    revert with 'NH{q', 17
                totalSupply -= arg3 * burnFee / 100
                emit Transfer((arg3 * burnFee / 100), arg1, 0);
            if arg3 and taxFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 * taxFee / 100 > 0:
                if balanceOf[stor7] > -(arg3 * taxFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += arg3 * taxFee / 100
                emit Transfer((arg3 * taxFee / 100), arg1, feeAccount);
            emit Transfer((arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)), arg1, arg2);
        else:
            if taxFee:
                stor11 = taxFee
                stor9 = burnFee
                taxFee = 0
                burnFee = 0
            else:
                if burnFee:
                    stor11 = taxFee
                    stor9 = burnFee
                    taxFee = 0
                    burnFee = 0
            if taxFee > -burnFee - 1:
                revert with 'NH{q', 17
            if arg3 and taxFee + burnFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < (taxFee * arg3) + (burnFee * arg3) / 100:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 + ((taxFee * arg3) + (burnFee * arg3) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)
            if arg3 and burnFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 * burnFee / 100 > 0:
                if totalSupply < arg3 * burnFee / 100:
                    revert with 'NH{q', 17
                totalSupply -= arg3 * burnFee / 100
                emit Transfer((arg3 * burnFee / 100), arg1, 0);
            if arg3 and taxFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 * taxFee / 100 > 0:
                if balanceOf[stor7] > -(arg3 * taxFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor7] += arg3 * taxFee / 100
                emit Transfer((arg3 * taxFee / 100), arg1, feeAccount);
            emit Transfer((arg3 - ((taxFee * arg3) + (burnFee * arg3) / 100)), arg1, arg2);
            taxFee = stor11
            burnFee = stor9
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
