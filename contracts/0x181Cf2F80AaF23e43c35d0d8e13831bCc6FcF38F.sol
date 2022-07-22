contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address _owner;
address sub_1faa5142Address;
address bnbTokenAddress;
address pancakePairAddress;
address stor9;
mapping of uint8 stor10;
array of address sub_8a0075d2;
mapping of address sub_ead391a1;
uint256 currentSupply;
mapping of uint8 stor14;

function totalSupply() payable {
    return totalSupply
}

function sub_1faa5142(?) payable {
    return sub_1faa5142Address
}

function bnbToken() payable {
    return bnbTokenAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function currentSupply() payable {
    return currentSupply
}

function sub_8a0075d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8a0075d2.length
    return sub_8a0075d2[arg1]
}

function owner() payable {
    return _owner
}

function addressExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function _owner() payable {
    return _owner
}

function pancakePair() payable {
    return pancakePairAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ead391a1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ead391a1[arg1]
}

function destroy() payable {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of this Contract could destroy It!'
    selfdestruct(_owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of this Contract could destroy It!'
    _owner = arg1
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

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of this Contract could destroy It!'
    require currentSupply <= totalSupply
    if totalSupply < currentSupply:
        revert with 'NH{q', 17
    if totalSupply - currentSupply < arg1:
        if currentSupply > -totalSupply + currentSupply - 1:
            revert with 'NH{q', 17
        require totalSupply >= currentSupply
        currentSupply = totalSupply
        if balanceOf[address(arg2)] > -totalSupply + currentSupply - 1:
            revert with 'NH{q', 17
        require balanceOf[address(arg2)] + totalSupply - currentSupply >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + totalSupply - currentSupply
        emit Transfer((totalSupply - currentSupply), 0, arg2);
    else:
        if balanceOf[address(arg2)] > -arg1 - 1:
            revert with 'NH{q', 17
        require balanceOf[address(arg2)] + arg1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg1
        if currentSupply > -arg1 - 1:
            revert with 'NH{q', 17
        require currentSupply + arg1 >= currentSupply
        currentSupply += arg1
        emit Transfer(arg1, 0, arg2);
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    if not arg3:
        if not stor10[address(arg2)]:
            stor10[address(arg2)] = 1
            sub_8a0075d2.length++
            sub_8a0075d2[sub_8a0075d2.length] = arg2
        if arg1 != pancakePairAddress:
            if arg2 != pancakePairAddress:
                require arg3 <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                if not stor14[address(arg2)]:
                    if balanceOf[address(arg2)] <= 0:
                        if not sub_ead391a1[address(arg2)]:
                            sub_ead391a1[address(arg2)] = arg1
                if not stor14[address(arg2)]:
                    stor14[address(arg2)] = 1
            else:
                if arg3 > -1:
                    revert with 'NH{q', 17
                require arg3 >= arg3
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                if not sub_ead391a1[address(arg1)]:
                    if arg3 > -1:
                        revert with 'NH{q', 17
                    require arg3 >= arg3
                    if arg3 > -1:
                        revert with 'NH{q', 17
                    require arg3 >= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                else:
                    if not arg3:
                        if balanceOf[stor12[address(arg1)]] > -1:
                            revert with 'NH{q', 17
                        require balanceOf[stor12[address(arg1)]] >= balanceOf[stor12[address(arg1)]]
                        emit Transfer(0, arg1, sub_ead391a1[address(arg1)]);
                        if arg3 > -1:
                            revert with 'NH{q', 17
                        require arg3 >= arg3
                        if arg3 > -1:
                            revert with 'NH{q', 17
                        require arg3 >= arg3
                        require arg3 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                    else:
                        if arg3 and 5 > -1 / arg3:
                            revert with 'NH{q', 17
                        if not arg3:
                            revert with 'NH{q', 18
                        require 5 * arg3 / arg3 == 5
                        if balanceOf[stor12[address(arg1)]] > -(5 * arg3 / 1000) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor12[address(arg1)]] + (5 * arg3 / 1000) >= balanceOf[stor12[address(arg1)]]
                        balanceOf[stor12[address(arg1)]] += 5 * arg3 / 1000
                        emit Transfer((5 * arg3 / 1000), arg1, sub_ead391a1[address(arg1)]);
                        if arg3 > -1:
                            revert with 'NH{q', 17
                        require arg3 >= arg3
                        if arg3 > -(5 * arg3 / 1000) - 1:
                            revert with 'NH{q', 17
                        require arg3 + (5 * arg3 / 1000) >= arg3
                        require arg3 + (5 * arg3 / 1000) <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] < arg3 + (5 * arg3 / 1000):
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - (5 * arg3 / 1000)
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                if not arg3:
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[0] >= balanceOf[0]
                    emit Transfer(0, arg1, 0);
                else:
                    if arg3 and 6 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 6 * arg3 / arg3 == 6
                    if balanceOf[0] > -(6 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[0] + (6 * arg3 / 100) >= balanceOf[0]
                    balanceOf[0] += 6 * arg3 / 100
                    emit Transfer((6 * arg3 / 100), arg1, 0);
                if not arg3:
                    if balanceOf[stor9] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[stor9] >= balanceOf[stor9]
                else:
                    if arg3 and 4 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 4 * arg3 / arg3 == 4
                    if balanceOf[stor9] > -(4 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor9] + (4 * arg3 / 100) >= balanceOf[stor9]
                    balanceOf[stor9] += 4 * arg3 / 100
                if not arg3:
                    idx = 0
                    while idx < sub_8a0075d2.length:
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 0 / totalSupply
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if arg3 and 5 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 5 * arg3 / arg3 == 5
                    idx = 0
                    while idx < sub_8a0075d2.length:
                        if not 5 * arg3 / 100:
                            require totalSupply > 0
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                            mem[0] = sub_8a0075d2[idx]
                            mem[32] = 1
                            balanceOf[stor11[idx]] += 0 / totalSupply
                        else:
                            if 5 * arg3 / 100 and balanceOf[stor11[idx]] > -1 / 5 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg3 / 100:
                                revert with 'NH{q', 18
                            require 5 * arg3 / 100 * balanceOf[stor11[idx]] / 5 * arg3 / 100 == balanceOf[stor11[idx]]
                            require totalSupply > 0
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if balanceOf[stor11[idx]] > -(5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) - 1:
                                revert with 'NH{q', 17
                            require balanceOf[stor11[idx]] + (5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) >= balanceOf[stor11[idx]]
                            mem[0] = sub_8a0075d2[idx]
                            mem[32] = 1
                            balanceOf[stor11[idx]] += 5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
        else:
            if not sub_ead391a1[address(arg2)]:
                require arg3 <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                require 0 <= arg3
                if arg3 < 0:
                    revert with 'NH{q', 17
                require 0 <= arg3
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
            else:
                if not arg3:
                    if balanceOf[stor12[address(arg2)]] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[stor12[address(arg2)]] >= balanceOf[stor12[address(arg2)]]
                    emit Transfer(0, arg2, sub_ead391a1[address(arg2)]);
                    require arg3 <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    require 0 <= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    require 0 <= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                else:
                    if arg3 and 5 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 5 * arg3 / arg3 == 5
                    if balanceOf[stor12[address(arg2)]] > -(5 * arg3 / 1000) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor12[address(arg2)]] + (5 * arg3 / 1000) >= balanceOf[stor12[address(arg2)]]
                    balanceOf[stor12[address(arg2)]] += 5 * arg3 / 1000
                    emit Transfer((5 * arg3 / 1000), arg2, sub_ead391a1[address(arg2)]);
                    require arg3 <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    require 0 <= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    require 5 * arg3 / 1000 <= arg3
                    if arg3 < 5 * arg3 / 1000:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 + (5 * arg3 / 1000) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[address(arg2)] + arg3 - (5 * arg3 / 1000) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (5 * arg3 / 1000)
            if not arg3:
                if balanceOf[0] > -1:
                    revert with 'NH{q', 17
                require balanceOf[0] >= balanceOf[0]
                emit Transfer(0, arg2, 0);
            else:
                if arg3 and 6 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 6 * arg3 / arg3 == 6
                if balanceOf[0] > -(6 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require balanceOf[0] + (6 * arg3 / 100) >= balanceOf[0]
                balanceOf[0] += 6 * arg3 / 100
                emit Transfer((6 * arg3 / 100), arg2, 0);
            if not arg3:
                if balanceOf[stor9] > -1:
                    revert with 'NH{q', 17
                require balanceOf[stor9] >= balanceOf[stor9]
            else:
                if arg3 and 4 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 4 * arg3 / arg3 == 4
                if balanceOf[stor9] > -(4 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require balanceOf[stor9] + (4 * arg3 / 100) >= balanceOf[stor9]
                balanceOf[stor9] += 4 * arg3 / 100
            if not arg3:
                idx = 0
                while idx < sub_8a0075d2.length:
                    require totalSupply > 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                    mem[0] = sub_8a0075d2[idx]
                    mem[32] = 1
                    balanceOf[stor11[idx]] += 0 / totalSupply
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if arg3 and 5 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 5 * arg3 / arg3 == 5
                idx = 0
                while idx < sub_8a0075d2.length:
                    if not 5 * arg3 / 100:
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 0 / totalSupply
                    else:
                        if 5 * arg3 / 100 and balanceOf[stor11[idx]] > -1 / 5 * arg3 / 100:
                            revert with 'NH{q', 17
                        if not 5 * arg3 / 100:
                            revert with 'NH{q', 18
                        require 5 * arg3 / 100 * balanceOf[stor11[idx]] / 5 * arg3 / 100 == balanceOf[stor11[idx]]
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            if not stor14[address(arg2)]:
                stor14[address(arg2)] = 1
            require 0 <= arg3
            if arg3 < 0:
                revert with 'NH{q', 17
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 and 15 > -1 / arg3:
            revert with 'NH{q', 17
        if not arg3:
            revert with 'NH{q', 18
        require 15 * arg3 / arg3 == 15
        if not stor10[address(arg2)]:
            stor10[address(arg2)] = 1
            sub_8a0075d2.length++
            sub_8a0075d2[sub_8a0075d2.length] = arg2
        if arg1 != pancakePairAddress:
            if arg2 != pancakePairAddress:
                require arg3 <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                if not stor14[address(arg2)]:
                    if balanceOf[address(arg2)] <= 0:
                        if not sub_ead391a1[address(arg2)]:
                            sub_ead391a1[address(arg2)] = arg1
                if not stor14[address(arg2)]:
                    stor14[address(arg2)] = 1
            else:
                if arg3 > -(15 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require arg3 + (15 * arg3 / 100) >= arg3
                if balanceOf[address(arg1)] < arg3 + (15 * arg3 / 100):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                if not sub_ead391a1[address(arg1)]:
                    if arg3 > -(15 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require arg3 + (15 * arg3 / 100) >= arg3
                    if arg3 + (15 * arg3 / 100) > -1:
                        revert with 'NH{q', 17
                    require arg3 + (15 * arg3 / 100) <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3 + (15 * arg3 / 100):
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - (15 * arg3 / 100)
                else:
                    if not arg3:
                        if balanceOf[stor12[address(arg1)]] > -1:
                            revert with 'NH{q', 17
                        require balanceOf[stor12[address(arg1)]] >= balanceOf[stor12[address(arg1)]]
                        emit Transfer(0, arg1, sub_ead391a1[address(arg1)]);
                        if arg3 > -(15 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        require arg3 + (15 * arg3 / 100) >= arg3
                        if arg3 + (15 * arg3 / 100) > -1:
                            revert with 'NH{q', 17
                        require arg3 + (15 * arg3 / 100) <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] < arg3 + (15 * arg3 / 100):
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - (15 * arg3 / 100)
                    else:
                        if arg3 and 5 > -1 / arg3:
                            revert with 'NH{q', 17
                        if not arg3:
                            revert with 'NH{q', 18
                        require 5 * arg3 / arg3 == 5
                        if balanceOf[stor12[address(arg1)]] > -(5 * arg3 / 1000) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor12[address(arg1)]] + (5 * arg3 / 1000) >= balanceOf[stor12[address(arg1)]]
                        balanceOf[stor12[address(arg1)]] += 5 * arg3 / 1000
                        emit Transfer((5 * arg3 / 1000), arg1, sub_ead391a1[address(arg1)]);
                        if arg3 > -(15 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        require arg3 + (15 * arg3 / 100) >= arg3
                        if arg3 + (15 * arg3 / 100) > -(5 * arg3 / 1000) - 1:
                            revert with 'NH{q', 17
                        require 5 * arg3 / 1000 >= 0
                        require arg3 + (15 * arg3 / 100) + (5 * arg3 / 1000) <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] < arg3 + (15 * arg3 / 100) + (5 * arg3 / 1000):
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - (15 * arg3 / 100) - (5 * arg3 / 1000)
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                if not arg3:
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[0] >= balanceOf[0]
                    emit Transfer(0, arg1, 0);
                else:
                    if arg3 and 6 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 6 * arg3 / arg3 == 6
                    if balanceOf[0] > -(6 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[0] + (6 * arg3 / 100) >= balanceOf[0]
                    balanceOf[0] += 6 * arg3 / 100
                    emit Transfer((6 * arg3 / 100), arg1, 0);
                if not arg3:
                    if balanceOf[stor9] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[stor9] >= balanceOf[stor9]
                else:
                    if arg3 and 4 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 4 * arg3 / arg3 == 4
                    if balanceOf[stor9] > -(4 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor9] + (4 * arg3 / 100) >= balanceOf[stor9]
                    balanceOf[stor9] += 4 * arg3 / 100
                if not arg3:
                    idx = 0
                    while idx < sub_8a0075d2.length:
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 0 / totalSupply
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if arg3 and 5 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 5 * arg3 / arg3 == 5
                    idx = 0
                    while idx < sub_8a0075d2.length:
                        if not 5 * arg3 / 100:
                            require totalSupply > 0
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                            mem[0] = sub_8a0075d2[idx]
                            mem[32] = 1
                            balanceOf[stor11[idx]] += 0 / totalSupply
                        else:
                            if 5 * arg3 / 100 and balanceOf[stor11[idx]] > -1 / 5 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg3 / 100:
                                revert with 'NH{q', 18
                            require 5 * arg3 / 100 * balanceOf[stor11[idx]] / 5 * arg3 / 100 == balanceOf[stor11[idx]]
                            require totalSupply > 0
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if balanceOf[stor11[idx]] > -(5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) - 1:
                                revert with 'NH{q', 17
                            require balanceOf[stor11[idx]] + (5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) >= balanceOf[stor11[idx]]
                            mem[0] = sub_8a0075d2[idx]
                            mem[32] = 1
                            balanceOf[stor11[idx]] += 5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            emit Transfer(arg3, arg1, arg2);
        else:
            if not sub_ead391a1[address(arg2)]:
                require arg3 <= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                require 15 * arg3 / 100 <= arg3
                if arg3 < 15 * arg3 / 100:
                    revert with 'NH{q', 17
                require 0 <= arg3 - (15 * arg3 / 100)
                if arg3 - (15 * arg3 / 100) < 0:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (15 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100)
            else:
                if not arg3:
                    if balanceOf[stor12[address(arg2)]] > -1:
                        revert with 'NH{q', 17
                    require balanceOf[stor12[address(arg2)]] >= balanceOf[stor12[address(arg2)]]
                    emit Transfer(0, arg2, sub_ead391a1[address(arg2)]);
                    require arg3 <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    require 15 * arg3 / 100 <= arg3
                    if arg3 < 15 * arg3 / 100:
                        revert with 'NH{q', 17
                    require 0 <= arg3 - (15 * arg3 / 100)
                    if arg3 - (15 * arg3 / 100) < 0:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 + (15 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100)
                else:
                    if arg3 and 5 > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    require 5 * arg3 / arg3 == 5
                    if balanceOf[stor12[address(arg2)]] > -(5 * arg3 / 1000) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor12[address(arg2)]] + (5 * arg3 / 1000) >= balanceOf[stor12[address(arg2)]]
                    balanceOf[stor12[address(arg2)]] += 5 * arg3 / 1000
                    emit Transfer((5 * arg3 / 1000), arg2, sub_ead391a1[address(arg2)]);
                    require arg3 <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    require 15 * arg3 / 100 <= arg3
                    if arg3 < 15 * arg3 / 100:
                        revert with 'NH{q', 17
                    require 5 * arg3 / 1000 <= arg3 - (15 * arg3 / 100)
                    if arg3 - (15 * arg3 / 100) < 5 * arg3 / 1000:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 + (15 * arg3 / 100) + (5 * arg3 / 1000) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) - (5 * arg3 / 1000) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) - (5 * arg3 / 1000)
            if not arg3:
                if balanceOf[0] > -1:
                    revert with 'NH{q', 17
                require balanceOf[0] >= balanceOf[0]
                emit Transfer(0, arg2, 0);
            else:
                if arg3 and 6 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 6 * arg3 / arg3 == 6
                if balanceOf[0] > -(6 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require balanceOf[0] + (6 * arg3 / 100) >= balanceOf[0]
                balanceOf[0] += 6 * arg3 / 100
                emit Transfer((6 * arg3 / 100), arg2, 0);
            if not arg3:
                if balanceOf[stor9] > -1:
                    revert with 'NH{q', 17
                require balanceOf[stor9] >= balanceOf[stor9]
            else:
                if arg3 and 4 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 4 * arg3 / arg3 == 4
                if balanceOf[stor9] > -(4 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                require balanceOf[stor9] + (4 * arg3 / 100) >= balanceOf[stor9]
                balanceOf[stor9] += 4 * arg3 / 100
            if not arg3:
                idx = 0
                while idx < sub_8a0075d2.length:
                    require totalSupply > 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                        revert with 'NH{q', 17
                    require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                    mem[0] = sub_8a0075d2[idx]
                    mem[32] = 1
                    balanceOf[stor11[idx]] += 0 / totalSupply
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if arg3 and 5 > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                require 5 * arg3 / arg3 == 5
                idx = 0
                while idx < sub_8a0075d2.length:
                    if not 5 * arg3 / 100:
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(0 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (0 / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 0 / totalSupply
                    else:
                        if 5 * arg3 / 100 and balanceOf[stor11[idx]] > -1 / 5 * arg3 / 100:
                            revert with 'NH{q', 17
                        if not 5 * arg3 / 100:
                            revert with 'NH{q', 18
                        require 5 * arg3 / 100 * balanceOf[stor11[idx]] / 5 * arg3 / 100 == balanceOf[stor11[idx]]
                        require totalSupply > 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if balanceOf[stor11[idx]] > -(5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) - 1:
                            revert with 'NH{q', 17
                        require balanceOf[stor11[idx]] + (5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply) >= balanceOf[stor11[idx]]
                        mem[0] = sub_8a0075d2[idx]
                        mem[32] = 1
                        balanceOf[stor11[idx]] += 5 * arg3 / 100 * balanceOf[stor11[idx]] / totalSupply
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            if not stor14[address(arg2)]:
                stor14[address(arg2)] = 1
            require 15 * arg3 / 100 <= arg3
            if arg3 < 15 * arg3 / 100:
                revert with 'NH{q', 17
            emit Transfer((arg3 - (15 * arg3 / 100)), arg1, arg2);
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
