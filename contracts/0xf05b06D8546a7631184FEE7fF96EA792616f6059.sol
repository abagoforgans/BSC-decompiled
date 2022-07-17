contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor2;
array of address stor3;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
array of struct stor7;
array of struct stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;

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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_d94d6f40(?) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'ERC20: No permission'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        stor6 = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            stor6 = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            stor6 = arg1 * s * t
}

function name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
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
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if balanceOf[address(msg.sender)] != arg2:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if not balanceOf[arg1]:
            stor3.length++
            stor3[stor3.length] = arg1
        if stor9 == msg.sender:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if stor10 == msg.sender:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if stor11 == msg.sender:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                else:
                    if stor12 == msg.sender:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                    else:
                        if stor13 == msg.sender:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                        else:
                            if stor14 == msg.sender:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                            else:
                                if stor15 == msg.sender:
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] += arg2
                                else:
                                    if stor16 == msg.sender:
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] += arg2
                                    else:
                                        if stor17 == msg.sender:
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                        else:
                                            if stor18 == msg.sender:
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                            else:
                                                if not stor2[address(arg1)].field_0:
                                                    stor2[address(arg1)].field_0 = msg.sender
                                                    stor2[address(arg1)].field_256 = stor2[msg.sender].field_0
                                                if arg2 and 3 > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 and 3 > -1 / arg2:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > !(arg2 / 25):
                                                    revert with 0, 17
                                                balanceOf[stor17] += arg2 / 25
                                                if balanceOf[stor18] > !(3 * arg2 / 100):
                                                    revert with 0, 17
                                                balanceOf[stor18] += 3 * arg2 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 4 * 10^6:
                                                            if 0 > !balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * 10^decimals:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * t * u:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if arg2 / 50 > !(arg2 / 100):
                                                    revert with 0, 17
                                                if (arg2 / 50) + (arg2 / 100) > !(3 * arg2 / 100):
                                                    revert with 0, 17
                                                if (arg2 / 50) + (arg2 / 100) + (3 * arg2 / 100) > !(arg2 / 50):
                                                    revert with 0, 17
                                                if (2 * arg2 / 50) + (arg2 / 100) + (3 * arg2 / 100) > !(arg2 / 25):
                                                    revert with 0, 17
                                                if (2 * arg2 / 50) + (arg2 / 100) + (3 * arg2 / 100) + (arg2 / 25) > !(3 * arg2 / 100):
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 < (2 * arg2 / 50) + (arg2 / 100) + (2 * 3 * arg2 / 100) + (arg2 / 25):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 50) - (arg2 / 100) - (2 * 3 * arg2 / 100) - (arg2 / 25)
                                                if totalSupply < 3 * arg2 / 100:
                                                    revert with 0, 17
                                                totalSupply -= 3 * arg2 / 100
                                                if stor2[address(msg.sender)].field_0:
                                                    if balanceOf[stor2[address(msg.sender)].field_0] > !(arg2 / 50):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(msg.sender)].field_0] += arg2 / 50
                                                if stor2[address(msg.sender)].field_256:
                                                    if balanceOf[stor2[address(msg.sender)].field_256] > !(arg2 / 100):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(msg.sender)].field_256] += arg2 / 100
                                                if not stor2[address(msg.sender)].field_0:
                                                    if totalSupply < arg2 / 50:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 / 50
                                                if not stor2[address(msg.sender)].field_256:
                                                    if totalSupply < arg2 / 100:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 400000:
                                                            if balanceOf[stor3[idx]] and arg2 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                            revert with 0, 18
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * 10^decimals:
                                                                if balanceOf[stor3[idx]] and arg2 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * t * u:
                                                                if balanceOf[stor3[idx]] and arg2 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 < 10:
            revert with 0, 17
        if balanceOf[address(msg.sender)] < arg2 - 10:
            revert with 0, 17
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg2 + 10
        if not balanceOf[arg1]:
            stor3.length++
            stor3[stor3.length] = arg1
        if stor9 == msg.sender:
            if balanceOf[address(arg1)] > !(arg2 - 10):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
        else:
            if stor10 == msg.sender:
                if balanceOf[address(arg1)] > !(arg2 - 10):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
            else:
                if stor11 == msg.sender:
                    if balanceOf[address(arg1)] > !(arg2 - 10):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                else:
                    if stor12 == msg.sender:
                        if balanceOf[address(arg1)] > !(arg2 - 10):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                    else:
                        if stor13 == msg.sender:
                            if balanceOf[address(arg1)] > !(arg2 - 10):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                        else:
                            if stor14 == msg.sender:
                                if balanceOf[address(arg1)] > !(arg2 - 10):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                            else:
                                if stor15 == msg.sender:
                                    if balanceOf[address(arg1)] > !(arg2 - 10):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                                else:
                                    if stor16 == msg.sender:
                                        if balanceOf[address(arg1)] > !(arg2 - 10):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                                    else:
                                        if stor17 == msg.sender:
                                            if balanceOf[address(arg1)] > !(arg2 - 10):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                                        else:
                                            if stor18 == msg.sender:
                                                if balanceOf[address(arg1)] > !(arg2 - 10):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - 10
                                            else:
                                                if not stor2[address(arg1)].field_0:
                                                    stor2[address(arg1)].field_0 = msg.sender
                                                    stor2[address(arg1)].field_256 = stor2[msg.sender].field_0
                                                if arg2 - 10 and 3 > -1 / arg2 - 10:
                                                    revert with 0, 17
                                                if arg2 - 10 and 3 > -1 / arg2 - 10:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > !(arg2 - 10 / 25):
                                                    revert with 0, 17
                                                balanceOf[stor17] += arg2 - 10 / 25
                                                if balanceOf[stor18] > !((3 * arg2) - 30 / 100):
                                                    revert with 0, 17
                                                balanceOf[stor18] += (3 * arg2) - 30 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 4 * 10^6:
                                                            if 0 > !balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * 10^decimals:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * t * u:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if arg2 - 10 / 50 > !(arg2 - 10 / 100):
                                                    revert with 0, 17
                                                if (arg2 - 10 / 50) + (arg2 - 10 / 100) > !((3 * arg2) - 30 / 100):
                                                    revert with 0, 17
                                                if (arg2 - 10 / 50) + (arg2 - 10 / 100) + ((3 * arg2) - 30 / 100) > !(arg2 - 10 / 50):
                                                    revert with 0, 17
                                                if (2 * arg2 - 10 / 50) + (arg2 - 10 / 100) + ((3 * arg2) - 30 / 100) > !(arg2 - 10 / 25):
                                                    revert with 0, 17
                                                if (2 * arg2 - 10 / 50) + (arg2 - 10 / 100) + ((3 * arg2) - 30 / 100) + (arg2 - 10 / 25) > !((3 * arg2) - 30 / 100):
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - 10):
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 - 10 < (2 * arg2 - 10 / 50) + (arg2 - 10 / 100) + (2 * (3 * arg2) - 30 / 100) + (arg2 - 10 / 25):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 + (-2 * arg2 - 10 / 50) + -(arg2 - 10 / 100) + (-2 * (3 * arg2) - 30 / 100) + -(arg2 - 10 / 25) - 10
                                                if totalSupply < (3 * arg2) - 30 / 100:
                                                    revert with 0, 17
                                                totalSupply -= (3 * arg2) - 30 / 100
                                                if stor2[address(msg.sender)].field_0:
                                                    if balanceOf[stor2[address(msg.sender)].field_0] > !(arg2 - 10 / 50):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(msg.sender)].field_0] += arg2 - 10 / 50
                                                if stor2[address(msg.sender)].field_256:
                                                    if balanceOf[stor2[address(msg.sender)].field_256] > !(arg2 - 10 / 100):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(msg.sender)].field_256] += arg2 - 10 / 100
                                                if not stor2[address(msg.sender)].field_0:
                                                    if totalSupply < arg2 - 10 / 50:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 - 10 / 50
                                                if not stor2[address(msg.sender)].field_256:
                                                    if totalSupply < arg2 - 10 / 100:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 - 10 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 400000:
                                                            if balanceOf[stor3[idx]] and arg2 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                            revert with 0, 18
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * 10^decimals:
                                                                if balanceOf[stor3[idx]] and arg2 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * t * u:
                                                                if balanceOf[stor3[idx]] and arg2 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
        emit Transfer((arg2 - 10), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if balanceOf[address(arg1)] != arg3:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if not balanceOf[arg2]:
            stor3.length++
            stor3[stor3.length] = arg2
        if stor9 == arg1:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
        else:
            if stor10 == arg1:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if stor11 == arg1:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                else:
                    if stor12 == arg1:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                    else:
                        if stor13 == arg1:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                        else:
                            if stor14 == arg1:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                            else:
                                if stor15 == arg1:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                else:
                                    if stor16 == arg1:
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                    else:
                                        if stor17 == arg1:
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)] += arg3
                                        else:
                                            if stor18 == arg1:
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] += arg3
                                            else:
                                                if not stor2[address(arg2)].field_0:
                                                    stor2[address(arg2)].field_0 = arg1
                                                    stor2[address(arg2)].field_256 = stor2[arg1].field_0
                                                if arg3 and 3 > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 and 3 > -1 / arg3:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > !(arg3 / 25):
                                                    revert with 0, 17
                                                balanceOf[stor17] += arg3 / 25
                                                if balanceOf[stor18] > !(3 * arg3 / 100):
                                                    revert with 0, 17
                                                balanceOf[stor18] += 3 * arg3 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 4 * 10^6:
                                                            if 0 > !balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * 10^decimals:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * t * u:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if arg3 / 50 > !(arg3 / 100):
                                                    revert with 0, 17
                                                if (arg3 / 50) + (arg3 / 100) > !(3 * arg3 / 100):
                                                    revert with 0, 17
                                                if (arg3 / 50) + (arg3 / 100) + (3 * arg3 / 100) > !(arg3 / 50):
                                                    revert with 0, 17
                                                if (2 * arg3 / 50) + (arg3 / 100) + (3 * arg3 / 100) > !(arg3 / 25):
                                                    revert with 0, 17
                                                if (2 * arg3 / 50) + (arg3 / 100) + (3 * arg3 / 100) + (arg3 / 25) > !(3 * arg3 / 100):
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 < (2 * arg3 / 50) + (arg3 / 100) + (2 * 3 * arg3 / 100) + (arg3 / 25):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 50) - (arg3 / 100) - (2 * 3 * arg3 / 100) - (arg3 / 25)
                                                if totalSupply < 3 * arg3 / 100:
                                                    revert with 0, 17
                                                totalSupply -= 3 * arg3 / 100
                                                if stor2[address(arg1)].field_0:
                                                    if balanceOf[stor2[address(arg1)].field_0] > !(arg3 / 50):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(arg1)].field_0] += arg3 / 50
                                                if stor2[address(arg1)].field_256:
                                                    if balanceOf[stor2[address(arg1)].field_256] > !(arg3 / 100):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(arg1)].field_256] += arg3 / 100
                                                if not stor2[address(arg1)].field_0:
                                                    if totalSupply < arg3 / 50:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 / 50
                                                if not stor2[address(arg1)].field_256:
                                                    if totalSupply < arg3 / 100:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 400000:
                                                            if balanceOf[stor3[idx]] and arg3 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                            revert with 0, 18
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * 10^decimals:
                                                                if balanceOf[stor3[idx]] and arg3 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * t * u:
                                                                if balanceOf[stor3[idx]] and arg3 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 < 10:
            revert with 0, 17
        if balanceOf[address(arg1)] < arg3 - 10:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -arg3 + 10
        if not balanceOf[arg2]:
            stor3.length++
            stor3[stor3.length] = arg2
        if stor9 == arg1:
            if balanceOf[address(arg2)] > !(arg3 - 10):
                revert with 0, 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
        else:
            if stor10 == arg1:
                if balanceOf[address(arg2)] > !(arg3 - 10):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
            else:
                if stor11 == arg1:
                    if balanceOf[address(arg2)] > !(arg3 - 10):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                else:
                    if stor12 == arg1:
                        if balanceOf[address(arg2)] > !(arg3 - 10):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                    else:
                        if stor13 == arg1:
                            if balanceOf[address(arg2)] > !(arg3 - 10):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                        else:
                            if stor14 == arg1:
                                if balanceOf[address(arg2)] > !(arg3 - 10):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                            else:
                                if stor15 == arg1:
                                    if balanceOf[address(arg2)] > !(arg3 - 10):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                                else:
                                    if stor16 == arg1:
                                        if balanceOf[address(arg2)] > !(arg3 - 10):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                                    else:
                                        if stor17 == arg1:
                                            if balanceOf[address(arg2)] > !(arg3 - 10):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                                        else:
                                            if stor18 == arg1:
                                                if balanceOf[address(arg2)] > !(arg3 - 10):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - 10
                                            else:
                                                if not stor2[address(arg2)].field_0:
                                                    stor2[address(arg2)].field_0 = arg1
                                                    stor2[address(arg2)].field_256 = stor2[arg1].field_0
                                                if arg3 - 10 and 3 > -1 / arg3 - 10:
                                                    revert with 0, 17
                                                if arg3 - 10 and 3 > -1 / arg3 - 10:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > !(arg3 - 10 / 25):
                                                    revert with 0, 17
                                                balanceOf[stor17] += arg3 - 10 / 25
                                                if balanceOf[stor18] > !((3 * arg3) - 30 / 100):
                                                    revert with 0, 17
                                                balanceOf[stor18] += (3 * arg3) - 30 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 4 * 10^6:
                                                            if 0 > !balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * 10^decimals:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x431bde82d7b634dad31fcd24e160d887ebf22c01e68a0d349be8ff327aa:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 4 * 10^6 * t * u:
                                                                if 0 > !balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if arg3 - 10 / 50 > !(arg3 - 10 / 100):
                                                    revert with 0, 17
                                                if (arg3 - 10 / 50) + (arg3 - 10 / 100) > !((3 * arg3) - 30 / 100):
                                                    revert with 0, 17
                                                if (arg3 - 10 / 50) + (arg3 - 10 / 100) + ((3 * arg3) - 30 / 100) > !(arg3 - 10 / 50):
                                                    revert with 0, 17
                                                if (2 * arg3 - 10 / 50) + (arg3 - 10 / 100) + ((3 * arg3) - 30 / 100) > !(arg3 - 10 / 25):
                                                    revert with 0, 17
                                                if (2 * arg3 - 10 / 50) + (arg3 - 10 / 100) + ((3 * arg3) - 30 / 100) + (arg3 - 10 / 25) > !((3 * arg3) - 30 / 100):
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] > !(arg3 - 10):
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 - 10 < (2 * arg3 - 10 / 50) + (arg3 - 10 / 100) + (2 * (3 * arg3) - 30 / 100) + (arg3 - 10 / 25):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 + (-2 * arg3 - 10 / 50) + -(arg3 - 10 / 100) + (-2 * (3 * arg3) - 30 / 100) + -(arg3 - 10 / 25) - 10
                                                if totalSupply < (3 * arg3) - 30 / 100:
                                                    revert with 0, 17
                                                totalSupply -= (3 * arg3) - 30 / 100
                                                if stor2[address(arg1)].field_0:
                                                    if balanceOf[stor2[address(arg1)].field_0] > !(arg3 - 10 / 50):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(arg1)].field_0] += arg3 - 10 / 50
                                                if stor2[address(arg1)].field_256:
                                                    if balanceOf[stor2[address(arg1)].field_256] > !(arg3 - 10 / 100):
                                                        revert with 0, 17
                                                    balanceOf[stor2[address(arg1)].field_256] += arg3 - 10 / 100
                                                if not stor2[address(arg1)].field_0:
                                                    if totalSupply < arg3 - 10 / 50:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 - 10 / 50
                                                if not stor2[address(arg1)].field_256:
                                                    if totalSupply < arg3 - 10 / 100:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 - 10 / 100
                                                idx = 0
                                                while idx < stor3.length:
                                                    mem[0] = stor3[idx]
                                                    mem[32] = 0
                                                    if not decimals:
                                                        if balanceOf[stor3[idx]] >= 400000:
                                                            if balanceOf[stor3[idx]] and arg3 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                revert with 0, 17
                                                            revert with 0, 18
                                                    else:
                                                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                                            if 10^decimals > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * 10^decimals:
                                                                if balanceOf[stor3[idx]] and arg3 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                        else:
                                                            t = 10
                                                            u = 1
                                                            s = decimals
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 0, 17
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                t = t * t
                                                                u = t * u
                                                                s = uint255(s) * 0.5
                                                                continue 
                                                            if u > -1 / t:
                                                                revert with 0, 17
                                                            if t * u > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca8:
                                                                revert with 0, 17
                                                            if balanceOf[stor3[idx]] >= 400000 * t * u:
                                                                if balanceOf[stor3[idx]] and arg3 - 10 / 50 > -1 / balanceOf[stor3[idx]]:
                                                                    revert with 0, 17
                                                                revert with 0, 18
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
        emit Transfer((arg3 - 10), arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
