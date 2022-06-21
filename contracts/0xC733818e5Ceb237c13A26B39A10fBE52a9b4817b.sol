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
mapping of struct balanceOf;
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
    return balanceOf[address(arg1)].field_0
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
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
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
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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
    if stor7:
        stor12[stor10[stor6]] = stor6
        stor10[stor6] = arg1
        if stor6 >= stor13[address(arg1)]:
            if not stor13[address(msg.sender)]:
                if _taxFee <= 0:
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor13[address(msg.sender)]:
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and _taxFee > -1 / arg2:
                                    revert with 0, 17
                                if arg2 < arg2 * _taxFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                    revert with 0, 17
                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
            else:
                if uniswapV2PairAddress == arg1:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if arg2 > stor6:
                        stor13[address(arg1)] = arg2
                    else:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
        else:
            if stor13[address(msg.sender)] <= stor6:
                if not stor13[address(msg.sender)]:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if uniswapV2PairAddress == arg1:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if arg2 > stor6:
                            stor13[address(arg1)] = arg2
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
            else:
                if balanceOf[this.address].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[this.address].field_0 += arg2
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
                s = ceil32(return_data.size) + 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
    else:
        if stor13[address(msg.sender)]:
            stor12[stor10[stor6]] = stor6
            stor10[stor6] = arg1
            if stor6 >= stor13[address(arg1)]:
                if not stor13[address(msg.sender)]:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if uniswapV2PairAddress == arg1:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if arg2 > stor6:
                            stor13[address(arg1)] = arg2
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
            else:
                if stor13[address(msg.sender)] <= stor6:
                    if not stor13[address(msg.sender)]:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if uniswapV2PairAddress == arg1:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 > stor6:
                                stor13[address(arg1)] = arg2
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if balanceOf[this.address].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg2
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
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
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
        else:
            if uniswapV2PairAddress == msg.sender:
                stor12[stor10[stor6]] = stor6
                stor10[stor6] = arg1
                if stor6 >= stor13[address(arg1)]:
                    if not stor13[address(msg.sender)]:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if uniswapV2PairAddress == arg1:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 > stor6:
                                stor13[address(arg1)] = arg2
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                else:
                    if stor13[address(msg.sender)] <= stor6:
                        if not stor13[address(msg.sender)]:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if uniswapV2PairAddress == arg1:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 > stor6:
                                    stor13[address(arg1)] = arg2
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if balanceOf[this.address].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2
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
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
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
            else:
                if not stor12[address(msg.sender)]:
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = arg1
                    if stor6 >= stor13[address(arg1)]:
                        if not stor13[address(msg.sender)]:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if uniswapV2PairAddress == arg1:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 > stor6:
                                    stor13[address(arg1)] = arg2
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)] <= stor6:
                            if not stor13[address(msg.sender)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                            else:
                                if uniswapV2PairAddress == arg1:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 > stor6:
                                        stor13[address(arg1)] = arg2
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if balanceOf[this.address].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2
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
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                else:
                    if stor13[address(msg.sender)] < stor6:
                        revert with 0, 17
                    stor12[address(msg.sender)] = stor13[address(msg.sender)] - stor6
                    stor7 = 1
                    mem[96] = 2
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
                    allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                    emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not routerAddress:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                    emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 292] = 0
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, address(this.address), block.timestamp
                    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    stor7 = 0
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = arg1
                    if stor6 >= stor13[address(arg1)]:
                        if not stor13[address(msg.sender)]:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if uniswapV2PairAddress == arg1:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 > stor6:
                                    stor13[address(arg1)] = arg2
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)] <= stor6:
                            if not stor13[address(msg.sender)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                            else:
                                if uniswapV2PairAddress == arg1:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 > stor6:
                                        stor13[address(arg1)] = arg2
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                        else:
                            if balanceOf[this.address].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2
                            mem[(2 * ceil32(return_data.size)) + 192] = 2
                            mem[(2 * ceil32(return_data.size)) + 224] = this.address
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve from the zero address'
                            mem[0] = routerAddress
                            mem[32] = sha3(address(this.address), 11)
                            allowance[address(this.address)][stor8] = arg2
                            emit Approval(arg2, this.address, routerAddress);
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg2
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 484
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = arg1
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor7:
        stor12[stor10[stor6]] = stor6
        stor10[stor6] = arg2
        if stor6 >= stor13[address(arg2)]:
            if not stor13[address(arg1)]:
                if _taxFee <= 0:
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor13[address(arg1)]:
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor7:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg2)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and _taxFee > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < arg3 * _taxFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                    revert with 0, 17
                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
            else:
                if uniswapV2PairAddress == arg2:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                else:
                    if arg3 > stor6:
                        stor13[address(arg2)] = arg3
                    else:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        else:
            if stor13[address(arg1)] <= stor6:
                if not stor13[address(arg1)]:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                else:
                    if uniswapV2PairAddress == arg2:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    else:
                        if arg3 > stor6:
                            stor13[address(arg2)] = arg3
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            else:
                if balanceOf[this.address].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[this.address].field_0 += arg3
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
                s = ceil32(return_data.size) + 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
    else:
        if stor13[address(arg1)]:
            stor12[stor10[stor6]] = stor6
            stor10[stor6] = arg2
            if stor6 >= stor13[address(arg2)]:
                if not stor13[address(arg1)]:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                else:
                    if uniswapV2PairAddress == arg2:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    else:
                        if arg3 > stor6:
                            stor13[address(arg2)] = arg3
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            else:
                if stor13[address(arg1)] <= stor6:
                    if not stor13[address(arg1)]:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    else:
                        if uniswapV2PairAddress == arg2:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if arg3 > stor6:
                                stor13[address(arg2)] = arg3
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                else:
                    if balanceOf[this.address].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg3
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
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
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
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
        else:
            if uniswapV2PairAddress == arg1:
                stor12[stor10[stor6]] = stor6
                stor10[stor6] = arg2
                if stor6 >= stor13[address(arg2)]:
                    if not stor13[address(arg1)]:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    else:
                        if uniswapV2PairAddress == arg2:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if arg3 > stor6:
                                stor13[address(arg2)] = arg3
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                else:
                    if stor13[address(arg1)] <= stor6:
                        if not stor13[address(arg1)]:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if uniswapV2PairAddress == arg2:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            else:
                                if arg3 > stor6:
                                    stor13[address(arg2)] = arg3
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    else:
                        if balanceOf[this.address].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3
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
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
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
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
            else:
                if not stor12[address(arg1)]:
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = arg2
                    if stor6 >= stor13[address(arg2)]:
                        if not stor13[address(arg1)]:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if uniswapV2PairAddress == arg2:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            else:
                                if arg3 > stor6:
                                    stor13[address(arg2)] = arg3
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    else:
                        if stor13[address(arg1)] <= stor6:
                            if not stor13[address(arg1)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            else:
                                if uniswapV2PairAddress == arg2:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                else:
                                    if arg3 > stor6:
                                        stor13[address(arg2)] = arg3
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        else:
                            if balanceOf[this.address].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3
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
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve from the zero address'
                else:
                    if stor13[address(arg1)] < stor6:
                        revert with 0, 17
                    stor12[address(arg1)] = stor13[address(arg1)] - stor6
                    stor7 = 1
                    mem[96] = 2
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
                    allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                    emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not routerAddress:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                    emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 292] = 0
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, address(this.address), block.timestamp
                    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    stor7 = 0
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = arg2
                    if stor6 >= stor13[address(arg2)]:
                        if not stor13[address(arg1)]:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if uniswapV2PairAddress == arg2:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            else:
                                if arg3 > stor6:
                                    stor13[address(arg2)] = arg3
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                    else:
                        if stor13[address(arg1)] <= stor6:
                            if not stor13[address(arg1)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                            else:
                                if uniswapV2PairAddress == arg2:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                else:
                                    if arg3 > stor6:
                                        stor13[address(arg2)] = arg3
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                        else:
                            if balanceOf[this.address].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3
                            mem[(2 * ceil32(return_data.size)) + 192] = 2
                            mem[(2 * ceil32(return_data.size)) + 224] = this.address
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve from the zero address'
                            mem[0] = routerAddress
                            mem[32] = sha3(address(this.address), 11)
                            allowance[address(this.address)][stor8] = arg3
                            emit Approval(arg3, this.address, routerAddress);
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 484
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = arg2
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)].field_0
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if bool(stor1.length):
                if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor1.length):
                    if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1.length):
                        if 31 < uint255(stor1.length) * 0.5:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor1.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                        mem[160] = 256 * stor1.length.field_8
                else:
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 0, 34
                    if stor1.length.field_1:
                        if 31 < stor1.length.field_1:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while stor1.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                        mem[160] = 256 * stor1.length.field_8
                mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                    mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if bool(stor1.length):
                if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor1.length):
                    if 31 < uint255(stor1.length) * 0.5:
                        mem[160] = uint256(stor1.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor1.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                    mem[160] = 256 * stor1.length.field_8
            else:
                if bool(stor1.length) == stor1.length.field_1 < 32:
                    revert with 0, 34
                if stor1.length.field_1:
                    if 31 < stor1.length.field_1:
                        mem[160] = uint256(stor1.field_0)
                        idx = 160
                        s = 0
                        while stor1.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                    mem[160] = 256 * stor1.length.field_8
            mem[ceil32(stor1.length.field_1) + 224 len ceil32(stor1.length.field_1)] = mem[160 len ceil32(stor1.length.field_1)]
            if ceil32(stor1.length.field_1) > stor1.length.field_1:
                mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 224] = 0
            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 224 len 2 * ceil32(stor1.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                require unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return routerAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(arg1)
            emit OwnershipTransferred(owner, address(arg1));
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor7:
            stor12[stor10[stor6]] = stor6
            stor10[stor6] = address(arg1)
            if stor6 >= stor13[address(arg1)]:
                if not stor13[address(msg.sender)]:
                    if _taxFee <= 0:
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if stor13[address(msg.sender)]:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if stor7:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if arg2 and _taxFee > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                else:
                    if uniswapV2PairAddress == address(arg1):
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                    else:
                        if arg2 > stor6:
                            stor13[address(arg1)] = arg2
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
            else:
                if stor13[address(msg.sender)] <= stor6:
                    if not stor13[address(msg.sender)]:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                    else:
                        if uniswapV2PairAddress == address(arg1):
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if arg2 > stor6:
                                stor13[address(arg1)] = arg2
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                else:
                    if balanceOf[this.address].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg2
                    mem[160] = this.address
                    staticcall routerAddress.WETH() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not routerAddress:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][stor8] = arg2
                    emit Approval(arg2, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg2
                    idx = 0
                    s = ceil32(return_data.size) + 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor13[address(msg.sender)]:
                stor12[stor10[stor6]] = stor6
                stor10[stor6] = address(arg1)
                if stor6 >= stor13[address(arg1)]:
                    if not stor13[address(msg.sender)]:
                        if _taxFee <= 0:
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if stor13[address(msg.sender)]:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor7:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and _taxFee > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                    else:
                        if uniswapV2PairAddress == address(arg1):
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if arg2 > stor6:
                                stor13[address(arg1)] = arg2
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                else:
                    if stor13[address(msg.sender)] <= stor6:
                        if not stor13[address(msg.sender)]:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if uniswapV2PairAddress == address(arg1):
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if arg2 > stor6:
                                    stor13[address(arg1)] = arg2
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                    else:
                        if balanceOf[this.address].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2
                        mem[160] = this.address
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = arg2
                        emit Approval(arg2, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg2
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if uniswapV2PairAddress == msg.sender:
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = address(arg1)
                    if stor6 >= stor13[address(arg1)]:
                        if not stor13[address(msg.sender)]:
                            if _taxFee <= 0:
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor13[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and _taxFee > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if uniswapV2PairAddress == address(arg1):
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if arg2 > stor6:
                                    stor13[address(arg1)] = arg2
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                    else:
                        if stor13[address(msg.sender)] <= stor6:
                            if not stor13[address(msg.sender)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if uniswapV2PairAddress == address(arg1):
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                else:
                                    if arg2 > stor6:
                                        stor13[address(arg1)] = arg2
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if balanceOf[this.address].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2
                            mem[160] = this.address
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][stor8] = arg2
                            emit Approval(arg2, this.address, routerAddress);
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = arg2
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor12[address(msg.sender)]:
                        stor12[stor10[stor6]] = stor6
                        stor10[stor6] = address(arg1)
                        if stor6 >= stor13[address(arg1)]:
                            if not stor13[address(msg.sender)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if uniswapV2PairAddress == address(arg1):
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                else:
                                    if arg2 > stor6:
                                        stor13[address(arg1)] = arg2
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if stor13[address(msg.sender)] <= stor6:
                                if not stor13[address(msg.sender)]:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                else:
                                    if uniswapV2PairAddress == address(arg1):
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                    else:
                                        if arg2 > stor6:
                                            stor13[address(arg1)] = arg2
                                        else:
                                            if _taxFee <= 0:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor7:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if stor13[address(arg1)]:
                                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 += arg2
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if arg2 and _taxFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * _taxFee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if balanceOf[this.address].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2
                                mem[160] = this.address
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][stor8] = arg2
                                emit Approval(arg2, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = arg2
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor13[address(msg.sender)] < stor6:
                            revert with 0, 17
                        stor12[address(msg.sender)] = stor13[address(msg.sender)] - stor6
                        stor7 = 1
                        mem[128] = 2
                        mem[160] = this.address
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 292] = 0
                        mem[ceil32(return_data.size) + 324] = 0
                        mem[ceil32(return_data.size) + 356] = this.address
                        mem[ceil32(return_data.size) + 388] = block.timestamp
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, address(this.address), block.timestamp
                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        stor7 = 0
                        stor12[stor10[stor6]] = stor6
                        stor10[stor6] = address(arg1)
                        if stor6 >= stor13[address(arg1)]:
                            if not stor13[address(msg.sender)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor13[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor7:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and _taxFee > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if uniswapV2PairAddress == address(arg1):
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                else:
                                    if arg2 > stor6:
                                        stor13[address(arg1)] = arg2
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                        else:
                            if stor13[address(msg.sender)] <= stor6:
                                if not stor13[address(msg.sender)]:
                                    if _taxFee <= 0:
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor7:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if arg2 and _taxFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                else:
                                    if uniswapV2PairAddress == address(arg1):
                                        if _taxFee <= 0:
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor13[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor13[address(arg1)]:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if arg2 and _taxFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                                    else:
                                        if arg2 > stor6:
                                            stor13[address(arg1)] = arg2
                                        else:
                                            if _taxFee <= 0:
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if stor13[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if stor7:
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 += arg2
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if stor13[address(arg1)]:
                                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                                            if balanceOf[address(arg1)].field_0 > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 += arg2
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if arg2 and _taxFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * _taxFee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)].field_0 < arg2 * _taxFee / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 -= arg2 * _taxFee / 100
                                                            if balanceOf[0].field_0 > !(arg2 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0].field_0 += arg2 * _taxFee / 100
                                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * _taxFee / 100)
                                                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * _taxFee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * _taxFee / 100)
                                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, address(arg1));
                            else:
                                if balanceOf[this.address].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2
                                mem[(2 * ceil32(return_data.size)) + 224] = 2
                                mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 320
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve from the zero address'
                                mem[0] = routerAddress
                                mem[32] = sha3(address(this.address), 11)
                                allowance[address(this.address)][stor8] = arg2
                                emit Approval(arg2, this.address, routerAddress);
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = arg2
                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                mem[(4 * ceil32(return_data.size)) + 388] = 160
                                mem[(4 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 516
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg1), block.timestamp, mem[(4 * ceil32(return_data.size)) + 484 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
                return 1
            require not msg.value
            if bool(stor2.length):
                if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2.length):
                        if 31 < uint255(stor2.length) * 0.5:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor2.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                        mem[160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 0, 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                        mem[160] = 256 * stor2.length.field_8
                mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[160 len ceil32(uint255(stor2.length) * 0.5)]
                if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
                    mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if bool(stor2.length):
                if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor2.length):
                    if 31 < uint255(stor2.length) * 0.5:
                        mem[160] = uint256(stor2.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor2.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                    mem[160] = 256 * stor2.length.field_8
            else:
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 0, 34
                if stor2.length.field_1:
                    if 31 < stor2.length.field_1:
                        mem[160] = uint256(stor2.field_0)
                        idx = 160
                        s = 0
                        while stor2.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                    mem[160] = 256 * stor2.length.field_8
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[160 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
            return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if unknown_0x3b124fe7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _taxFee
            require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return uniswapV2PairAddress
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if stor7:
            stor12[stor10[stor6]] = stor6
            stor10[stor6] = address(arg2)
            if stor6 >= stor13[address(arg2)]:
                if not stor13[address(arg1)]:
                    if _taxFee <= 0:
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if stor13[address(arg1)]:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if stor7:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg2)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if arg3 and _taxFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                else:
                    if uniswapV2PairAddress == address(arg2):
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                    else:
                        if arg3 > stor6:
                            stor13[address(arg2)] = arg3
                        else:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
            else:
                if stor13[address(arg1)] <= stor6:
                    if not stor13[address(arg1)]:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                    else:
                        if uniswapV2PairAddress == address(arg2):
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if arg3 > stor6:
                                stor13[address(arg2)] = arg3
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                else:
                    if balanceOf[this.address].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg3
                    mem[160] = this.address
                    staticcall routerAddress.WETH() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not routerAddress:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][stor8] = arg3
                    emit Approval(arg3, this.address, routerAddress);
                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg3
                    idx = 0
                    s = ceil32(return_data.size) + 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(arg2), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor13[address(arg1)]:
                stor12[stor10[stor6]] = stor6
                stor10[stor6] = address(arg2)
                if stor6 >= stor13[address(arg2)]:
                    if not stor13[address(arg1)]:
                        if _taxFee <= 0:
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if stor13[address(arg1)]:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor7:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg2)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and _taxFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                    else:
                        if uniswapV2PairAddress == address(arg2):
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if arg3 > stor6:
                                stor13[address(arg2)] = arg3
                            else:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                else:
                    if stor13[address(arg1)] <= stor6:
                        if not stor13[address(arg1)]:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if uniswapV2PairAddress == address(arg2):
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if arg3 > stor6:
                                    stor13[address(arg2)] = arg3
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                    else:
                        if balanceOf[this.address].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3
                        mem[160] = this.address
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = arg3
                        emit Approval(arg3, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg3
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(arg2), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if uniswapV2PairAddress == address(arg1):
                    stor12[stor10[stor6]] = stor6
                    stor10[stor6] = address(arg2)
                    if stor6 >= stor13[address(arg2)]:
                        if not stor13[address(arg1)]:
                            if _taxFee <= 0:
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor13[address(arg1)]:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor7:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg2)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and _taxFee > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if uniswapV2PairAddress == address(arg2):
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if arg3 > stor6:
                                    stor13[address(arg2)] = arg3
                                else:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                    else:
                        if stor13[address(arg1)] <= stor6:
                            if not stor13[address(arg1)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if uniswapV2PairAddress == address(arg2):
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                else:
                                    if arg3 > stor6:
                                        stor13[address(arg2)] = arg3
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if balanceOf[this.address].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3
                            mem[160] = this.address
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][stor8] = arg3
                            emit Approval(arg3, this.address, routerAddress);
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = arg3
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor12[address(arg1)]:
                        stor12[stor10[stor6]] = stor6
                        stor10[stor6] = address(arg2)
                        if stor6 >= stor13[address(arg2)]:
                            if not stor13[address(arg1)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if uniswapV2PairAddress == address(arg2):
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                else:
                                    if arg3 > stor6:
                                        stor13[address(arg2)] = arg3
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if stor13[address(arg1)] <= stor6:
                                if not stor13[address(arg1)]:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                else:
                                    if uniswapV2PairAddress == address(arg2):
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                    else:
                                        if arg3 > stor6:
                                            stor13[address(arg2)] = arg3
                                        else:
                                            if _taxFee <= 0:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor7:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if stor13[address(arg2)]:
                                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 -= arg3
                                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)].field_0 += arg3
                                                            emit Transfer(arg3, address(arg1), address(arg2));
                                                        else:
                                                            if arg3 and _taxFee > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * _taxFee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if balanceOf[this.address].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3
                                mem[160] = this.address
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][stor8] = arg3
                                emit Approval(arg3, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = arg3
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor13[address(arg1)] < stor6:
                            revert with 0, 17
                        stor12[address(arg1)] = stor13[address(arg1)] - stor6
                        stor7 = 1
                        mem[128] = 2
                        mem[160] = this.address
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][stor8] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 292] = 0
                        mem[ceil32(return_data.size) + 324] = 0
                        mem[ceil32(return_data.size) + 356] = this.address
                        mem[ceil32(return_data.size) + 388] = block.timestamp
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, address(this.address), block.timestamp
                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        stor7 = 0
                        stor12[stor10[stor6]] = stor6
                        stor10[stor6] = address(arg2)
                        if stor6 >= stor13[address(arg2)]:
                            if not stor13[address(arg1)]:
                                if _taxFee <= 0:
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if stor13[address(arg1)]:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg2)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and _taxFee > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if uniswapV2PairAddress == address(arg2):
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                else:
                                    if arg3 > stor6:
                                        stor13[address(arg2)] = arg3
                                    else:
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                        else:
                            if stor13[address(arg1)] <= stor6:
                                if not stor13[address(arg1)]:
                                    if _taxFee <= 0:
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor13[address(arg1)]:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor7:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg2)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 and _taxFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                    if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                else:
                                    if uniswapV2PairAddress == address(arg2):
                                        if _taxFee <= 0:
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if stor13[address(arg1)]:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor7:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor13[address(arg2)]:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if arg3 and _taxFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                        if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                                    else:
                                        if arg3 > stor6:
                                            stor13[address(arg2)] = arg3
                                        else:
                                            if _taxFee <= 0:
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor13[address(arg1)]:
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if stor7:
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if stor13[address(arg2)]:
                                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 -= arg3
                                                            if balanceOf[address(arg2)].field_0 > !arg3:
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)].field_0 += arg3
                                                            emit Transfer(arg3, address(arg1), address(arg2));
                                                        else:
                                                            if arg3 and _taxFee > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * _taxFee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)].field_0 < arg3 * _taxFee / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 -= arg3 * _taxFee / 100
                                                            if balanceOf[0].field_0 > !(arg3 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0].field_0 += arg3 * _taxFee / 100
                                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * _taxFee / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * _taxFee / 100)
                                                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * _taxFee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _taxFee / 100)
                                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), address(arg1), address(arg2));
                            else:
                                if balanceOf[this.address].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3
                                mem[(2 * ceil32(return_data.size)) + 224] = 2
                                mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 320
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve from the zero address'
                                mem[0] = routerAddress
                                mem[32] = sha3(address(this.address), 11)
                                allowance[address(this.address)][stor8] = arg3
                                emit Approval(arg3, this.address, routerAddress);
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = arg3
                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                mem[(4 * ceil32(return_data.size)) + 388] = 160
                                mem[(4 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 516
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 420] = address(arg2)
                                mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 512]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve from the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
