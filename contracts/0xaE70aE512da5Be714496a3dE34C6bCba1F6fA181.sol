contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of address sub_b3f9a2a2;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 _liquidityFee;
address _pairAddress;
address stor12;
address stor13;
address stor14;
uint256 stor15;

function sub_0d53e5f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function _liquidityFee() payable {
    return _liquidityFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_b3f9a2a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_b3f9a2a2[arg1])
}

function _pair() payable {
    return _pairAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function sub_685ae894(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require stor6[msg.sender]
    stor6[address(arg1)] = uint8(bool(arg2))
}

function sub_d5756361(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require stor6[msg.sender]
    stor7[address(arg1)] = uint8(bool(arg2))
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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
    if not address(sub_b3f9a2a2[address(arg2)]):
        if _pairAddress != msg.sender:
            uint256(sub_b3f9a2a2[address(arg2)]) = msg.sender or Mask(96, 160, uint256(sub_b3f9a2a2[address(arg2)]))
    if stor7[msg.sender]:
        revert with 0, 'blacklist'
    if _pairAddress == arg1:
        if _pairAddress == arg2:
            if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if balanceOf[address(arg1)] < 10 * arg3 / 9:
                revert with 0, 'You need to keep 10% of the coin'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if totalSupply <= stor15:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit 0xfeddf252: arg3, arg1, arg2
        else:
            if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if totalSupply < 2 * arg3 / 100:
                revert with 0, 17
            totalSupply -= 2 * arg3 / 100
            if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if balanceOf[stor12] > !(2 * arg3 / 100):
                revert with 0, 17
            balanceOf[stor12] += 2 * arg3 / 100
            if balanceOf[stor13] > !(arg3 / 100):
                revert with 0, 17
            balanceOf[stor13] += arg3 / 100
            if balanceOf[stor14] > !(arg3 / 100):
                revert with 0, 17
            balanceOf[stor14] += arg3 / 100
            if arg3 / 100 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            if _pairAddress != arg2:
                if not address(sub_b3f9a2a2[tx.origin]):
                    if 7 * arg3 / 100:
                        emit 0xfeddf252: (7 * arg3 / 100), tx.origin, 0
                else:
                    if 7 * arg3 / 100 / 7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if balanceOf[address(stor5[tx.origin])] > !(2 * 7 * arg3 / 100 / 7):
                        revert with 0, 17
                    balanceOf[address(stor5[tx.origin])] += 2 * 7 * arg3 / 100 / 7
                    if 7 * arg3 / 100 < 2 * 7 * arg3 / 100 / 7:
                        revert with 0, 17
                    emit 0xfeddf252: (2 * 7 * arg3 / 100 / 7), tx.origin, address(sub_b3f9a2a2[tx.origin])
                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])]):
                        if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7):
                            emit 0xfeddf252: ((7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7)), tx.origin, 0
                    else:
                        if balanceOf[address(stor5[address(stor5[tx.origin])])] > !uint255(7 * arg3 / 100 / 7):
                            revert with 0, 17
                        balanceOf[address(stor5[address(stor5[tx.origin])])] += uint255(7 * arg3 / 100 / 7)
                        if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7) < uint255(7 * arg3 / 100 / 7):
                            revert with 0, 17
                        emit 0xfeddf252: uint255(7 * arg3 / 100 / 7), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])
                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])]):
                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7):
                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7)), tx.origin, 0
                        else:
                            if balanceOf[address(stor5[address(stor5[address(stor5[tx.origin])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                revert with 0, 17
                            balanceOf[address(stor5[address(stor5[address(stor5[tx.origin])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                revert with 0, 17
                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])
                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])]):
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                            else:
                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    revert with 0, 17
                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                    revert with 0, 17
                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])
                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])]):
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                else:
                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        revert with 0, 17
                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                        revert with 0, 17
                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])
                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])]):
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                    else:
                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            revert with 0, 17
                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                            revert with 0, 17
                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])
                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])]):
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                        else:
                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                revert with 0, 17
                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                revert with 0, 17
                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])
                                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])]):
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                            else:
                                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    revert with 0, 17
                                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                    revert with 0, 17
                                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])
                                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])]):
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                                else:
                                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        revert with 0, 17
                                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                        revert with 0, 17
                                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])
                                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])]):
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                                    else:
                                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            revert with 0, 17
                                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                            revert with 0, 17
                                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])])
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
            else:
                if not address(sub_b3f9a2a2[address(arg1)]):
                    if 7 * arg3 / 100:
                        emit 0xfeddf252: (7 * arg3 / 100), arg1, 0
                else:
                    if 7 * arg3 / 100 / 7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if balanceOf[address(stor5[address(arg1)])] > !(2 * 7 * arg3 / 100 / 7):
                        revert with 0, 17
                    balanceOf[address(stor5[address(arg1)])] += 2 * 7 * arg3 / 100 / 7
                    if 7 * arg3 / 100 < 2 * 7 * arg3 / 100 / 7:
                        revert with 0, 17
                    emit 0xfeddf252: (2 * 7 * arg3 / 100 / 7), arg1, address(sub_b3f9a2a2[address(arg1)])
                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])]):
                        if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7):
                            emit 0xfeddf252: ((7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7)), arg1, 0
                    else:
                        if balanceOf[address(stor5[address(stor5[address(arg1)])])] > !uint255(7 * arg3 / 100 / 7):
                            revert with 0, 17
                        balanceOf[address(stor5[address(stor5[address(arg1)])])] += uint255(7 * arg3 / 100 / 7)
                        if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7) < uint255(7 * arg3 / 100 / 7):
                            revert with 0, 17
                        emit 0xfeddf252: uint255(7 * arg3 / 100 / 7), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])
                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])]):
                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7):
                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7)), arg1, 0
                        else:
                            if balanceOf[address(stor5[address(stor5[address(stor5[address(arg1)])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                revert with 0, 17
                            balanceOf[address(stor5[address(stor5[address(stor5[address(arg1)])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                revert with 0, 17
                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])
                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])]):
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                            else:
                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    revert with 0, 17
                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                    revert with 0, 17
                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])
                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])]):
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                else:
                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        revert with 0, 17
                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                        revert with 0, 17
                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])
                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])]):
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                    else:
                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            revert with 0, 17
                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                            revert with 0, 17
                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])
                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])]):
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                        else:
                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                revert with 0, 17
                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                revert with 0, 17
                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])
                                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])]):
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                            else:
                                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    revert with 0, 17
                                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                    revert with 0, 17
                                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])
                                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])]):
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                                else:
                                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        revert with 0, 17
                                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                        revert with 0, 17
                                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])
                                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])]):
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                                    else:
                                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            revert with 0, 17
                                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                            revert with 0, 17
                                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])])
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
            if arg3 / 100 > 0x2f149902f149902f149902f149902f149902f149902f149902f149902f14990:
                revert with 0, 17
            if balanceOf[address(arg2)] > !(87 * arg3 / 100):
                revert with 0, 17
            balanceOf[address(arg2)] += 87 * arg3 / 100
            if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            emit 0xfeddf252: (2 * arg3 / 100), arg1, 0
            emit 0xfeddf252: (2 * arg3 / 100), arg1, stor12
            emit 0xfeddf252: (arg3 / 100), arg1, stor13
            emit 0xfeddf252: (arg3 / 100), arg1, stor14
            if arg3 / 100 > 0x2f149902f149902f149902f149902f149902f149902f149902f149902f14990:
                revert with 0, 17
            emit 0xfeddf252: (87 * arg3 / 100), arg1, arg2
    else:
        if _pairAddress != arg2:
            emit 0xfeddf252: arg3, arg1, arg2
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
        else:
            if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if balanceOf[address(arg1)] < 10 * arg3 / 9:
                revert with 0, 'You need to keep 10% of the coin'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if totalSupply <= stor15:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit 0xfeddf252: arg3, arg1, arg2
            else:
                if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if totalSupply < 2 * arg3 / 100:
                    revert with 0, 17
                totalSupply -= 2 * arg3 / 100
                if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if balanceOf[stor12] > !(2 * arg3 / 100):
                    revert with 0, 17
                balanceOf[stor12] += 2 * arg3 / 100
                if balanceOf[stor13] > !(arg3 / 100):
                    revert with 0, 17
                balanceOf[stor13] += arg3 / 100
                if balanceOf[stor14] > !(arg3 / 100):
                    revert with 0, 17
                balanceOf[stor14] += arg3 / 100
                if arg3 / 100 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                    revert with 0, 17
                if _pairAddress != arg2:
                    if not address(sub_b3f9a2a2[tx.origin]):
                        if 7 * arg3 / 100:
                            emit 0xfeddf252: (7 * arg3 / 100), tx.origin, 0
                    else:
                        if 7 * arg3 / 100 / 7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if balanceOf[address(stor5[tx.origin])] > !(2 * 7 * arg3 / 100 / 7):
                            revert with 0, 17
                        balanceOf[address(stor5[tx.origin])] += 2 * 7 * arg3 / 100 / 7
                        if 7 * arg3 / 100 < 2 * 7 * arg3 / 100 / 7:
                            revert with 0, 17
                        emit 0xfeddf252: (2 * 7 * arg3 / 100 / 7), tx.origin, address(sub_b3f9a2a2[tx.origin])
                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])]):
                            if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7):
                                emit 0xfeddf252: ((7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7)), tx.origin, 0
                        else:
                            if balanceOf[address(stor5[address(stor5[tx.origin])])] > !uint255(7 * arg3 / 100 / 7):
                                revert with 0, 17
                            balanceOf[address(stor5[address(stor5[tx.origin])])] += uint255(7 * arg3 / 100 / 7)
                            if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7) < uint255(7 * arg3 / 100 / 7):
                                revert with 0, 17
                            emit 0xfeddf252: uint255(7 * arg3 / 100 / 7), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])
                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])]):
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7):
                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7)), tx.origin, 0
                            else:
                                if balanceOf[address(stor5[address(stor5[address(stor5[tx.origin])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    revert with 0, 17
                                balanceOf[address(stor5[address(stor5[address(stor5[tx.origin])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                    revert with 0, 17
                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])
                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])]):
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                else:
                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        revert with 0, 17
                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                        revert with 0, 17
                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])
                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])]):
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                    else:
                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            revert with 0, 17
                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                            revert with 0, 17
                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])
                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])]):
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                        else:
                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                revert with 0, 17
                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                revert with 0, 17
                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])
                                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])]):
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                            else:
                                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    revert with 0, 17
                                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                    revert with 0, 17
                                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])
                                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])]):
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                                else:
                                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        revert with 0, 17
                                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                        revert with 0, 17
                                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])
                                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])]):
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                                    else:
                                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            revert with 0, 17
                                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                            revert with 0, 17
                                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])
                                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])]):
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                                                        else:
                                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                revert with 0, 17
                                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[tx.origin])])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                                revert with 0, 17
                                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), tx.origin, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[tx.origin])])])])])])])])])])
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), tx.origin, 0
                else:
                    if not address(sub_b3f9a2a2[address(arg1)]):
                        if 7 * arg3 / 100:
                            emit 0xfeddf252: (7 * arg3 / 100), arg1, 0
                    else:
                        if 7 * arg3 / 100 / 7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if balanceOf[address(stor5[address(arg1)])] > !(2 * 7 * arg3 / 100 / 7):
                            revert with 0, 17
                        balanceOf[address(stor5[address(arg1)])] += 2 * 7 * arg3 / 100 / 7
                        if 7 * arg3 / 100 < 2 * 7 * arg3 / 100 / 7:
                            revert with 0, 17
                        emit 0xfeddf252: (2 * 7 * arg3 / 100 / 7), arg1, address(sub_b3f9a2a2[address(arg1)])
                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])]):
                            if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7):
                                emit 0xfeddf252: ((7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7)), arg1, 0
                        else:
                            if balanceOf[address(stor5[address(stor5[address(arg1)])])] > !uint255(7 * arg3 / 100 / 7):
                                revert with 0, 17
                            balanceOf[address(stor5[address(stor5[address(arg1)])])] += uint255(7 * arg3 / 100 / 7)
                            if (7 * arg3 / 100) - (2 * 7 * arg3 / 100 / 7) < uint255(7 * arg3 / 100 / 7):
                                revert with 0, 17
                            emit 0xfeddf252: uint255(7 * arg3 / 100 / 7), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])
                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])]):
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7):
                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7)), arg1, 0
                            else:
                                if balanceOf[address(stor5[address(stor5[address(stor5[address(arg1)])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                    revert with 0, 17
                                balanceOf[address(stor5[address(stor5[address(stor5[address(arg1)])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                    revert with 0, 17
                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])
                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])]):
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                else:
                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                        revert with 0, 17
                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                        revert with 0, 17
                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])
                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])]):
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                    else:
                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                            revert with 0, 17
                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (2 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                            revert with 0, 17
                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])
                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])]):
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                        else:
                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                revert with 0, 17
                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (3 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                revert with 0, 17
                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])
                                            if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])]):
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                            else:
                                                if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                    revert with 0, 17
                                                balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (4 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                    revert with 0, 17
                                                emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])
                                                if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])]):
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                                else:
                                                    if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                        revert with 0, 17
                                                    balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                    if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (5 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                        revert with 0, 17
                                                    emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])
                                                    if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])]):
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                                    else:
                                                        if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                            revert with 0, 17
                                                        balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                        if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (6 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                            revert with 0, 17
                                                        emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])
                                                        if not address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])]):
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                                                        else:
                                                            if balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])])] > !(Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                revert with 0, 17
                                                            balanceOf[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(stor5[address(arg1)])])])])])])])])])])] += Mask(254, 1, 7 * arg3 / 100 / 7) >> 1
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (7 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1) < Mask(254, 1, 7 * arg3 / 100 / 7) >> 1:
                                                                revert with 0, 17
                                                            emit 0xfeddf252: (Mask(254, 1, 7 * arg3 / 100 / 7) >> 1), arg1, address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(sub_b3f9a2a2[address(arg1)])])])])])])])])])])
                                                            if (7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1):
                                                                emit 0xfeddf252: ((7 * arg3 / 100) + Mask(1, 255, 7 * arg3 / 100 / 7) - (8 * Mask(254, 1, 7 * arg3 / 100 / 7) >> 1)), arg1, 0
                if arg3 / 100 > 0x2f149902f149902f149902f149902f149902f149902f149902f149902f14990:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(87 * arg3 / 100):
                    revert with 0, 17
                balanceOf[address(arg2)] += 87 * arg3 / 100
                if arg3 / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit 0xfeddf252: (2 * arg3 / 100), arg1, 0
                emit 0xfeddf252: (2 * arg3 / 100), arg1, stor12
                emit 0xfeddf252: (arg3 / 100), arg1, stor13
                emit 0xfeddf252: (arg3 / 100), arg1, stor14
                if arg3 / 100 > 0x2f149902f149902f149902f149902f149902f149902f149902f149902f14990:
                    revert with 0, 17
                emit 0xfeddf252: (87 * arg3 / 100), arg1, arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
