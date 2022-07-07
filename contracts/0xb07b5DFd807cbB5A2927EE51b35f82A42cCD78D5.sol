contract main {




// =====================  Runtime code  =====================


#
#  - sub_56fcd3c4(?)
#
address _owner;
mapping of struct rate;
mapping of struct stor2;
mapping of struct stor3;
mapping of struct stor4;
mapping of uint8 stor6;
mapping of uint16 borrowRate;
mapping of uint256 stor99;

function getRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint16(rate[address(arg1)].field_0), 
           uint16(rate[address(arg1)].field_0),
           uint16(rate[address(arg1)].field_0),
           uint16(rate[address(arg1)].field_0),
           uint16(rate[address(arg1)].field_64)
}

function owner() payable {
    return _owner
}

function sub_b1b0be2f(?) payable {
    return bool(stor6[msg.sender])
}

function _owner() payable {
    return _owner
}

function getBorrowRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return borrowRate[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: _owner, 0
    _owner = 0
}

function sub_ab2b3a80(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(bool(arg2))
    return 1
}

function sub_6fb573d0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    borrowRate[address(arg1)] = uint16(arg2)
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: _owner, arg1
    _owner = arg1
}

function sub_471c46c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(arg2) != 1:
        return uint16(stor3[address(arg1)].field_0), uint16(stor3[address(arg1)].field_0), uint16(stor3[address(arg1)].field_32)
    return uint16(stor2[address(arg1)].field_0), uint16(stor2[address(arg1)].field_0), uint16(stor2[address(arg1)].field_32)
}

function sub_f1d4e932(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(rate[address(arg1)].field_0) = uint16(arg2)
    uint16(rate[address(arg1)].field_16) = uint16(arg3)
    uint16(rate[address(arg1)].field_32) = uint16(arg4)
    uint16(rate[address(arg1)].field_48) = uint16(arg5)
    uint16(rate[address(arg1)].field_64) = uint16(arg6)
    return 1
}

function sub_a5fa3837(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg2) != 1:
        uint16(stor3[address(arg1)].field_0) = uint16(arg3)
        uint16(stor3[address(arg1)].field_16) = uint16(arg4)
        uint16(stor3[address(arg1)].field_32) = uint16(arg5)
    else:
        uint16(stor2[address(arg1)].field_0) = uint16(arg3)
        uint16(stor2[address(arg1)].field_16) = uint16(arg4)
        uint16(stor2[address(arg1)].field_32) = uint16(arg5)
    return 1
}

function getPrice(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function setPrice(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
    return 1
}

function sub_6920dae8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    if arg1.length != arg2.length:
        return 0
    if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) != sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256):
        return 0
    return 1
}

function sub_50a5466b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Error address(0)'
    if bool(stor4[address(arg1)].field_0):
        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
            revert with 0, 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while uint255(stor4[address(arg1)].field_1) + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while stor4[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 5
    stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = arg3
    return 1
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[address(arg1)].field_0):
        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
            revert with 0, 34
        if not bool(stor4[address(arg1)].field_0):
            mem[96] = Mask(248, 8, stor4[address(arg1)].field_0)
            mem[uint255(stor4[address(arg1)].field_1) + 96] = 5
            return stor[mem[128 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)]
        if bool(stor4[address(arg1)].field_0) != 1:
            mem[96] = stor[sha3(mem[96 len -64])]
        else:
            idx = 0
            s = 0
            while idx < uint255(stor4[address(arg1)].field_1):
                mem[idx + 96] = stor4[address(arg1)][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[uint255(stor4[address(arg1)].field_1) + 96] = 5
            mem[96] = stor[sha3(mem[96 len uint255(stor4[address(arg1)].field_1) + 32])]
    else:
        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor4[address(arg1)].field_0):
            mem[96] = Mask(248, 8, stor4[address(arg1)].field_0)
            mem[stor4[address(arg1)].field_1 % 128 + 96] = 5
            return stor[mem[128 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)]
        if bool(stor4[address(arg1)].field_0) != 1:
            mem[96] = stor[sha3(mem[96 len -64])]
        else:
            idx = 0
            s = 0
            while idx < stor4[address(arg1)].field_1 % 128:
                mem[idx + 96] = stor4[address(arg1)][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[stor4[address(arg1)].field_1 % 128 + 96] = 5
            mem[96] = stor[sha3(mem[96 len stor4[address(arg1)].field_1 % 128 + 32])]
    return memory
      from 96
       len 32
}

function getSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[address(arg1)].field_0):
        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
            revert with 0, 34
        if bool(stor4[address(arg1)].field_0):
            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                revert with 0, 34
            if uint255(stor4[address(arg1)].field_1):
                if 31 < uint255(stor4[address(arg1)].field_1):
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while uint255(stor4[address(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
        else:
            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)].field_1 % 128:
                if 31 < stor4[address(arg1)].field_1 % 128:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
        if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))], mem[(2 * ceil32(uint255(stor4[address(arg1)].field_1))) + 192 len 2 * ceil32(uint255(stor4[address(arg1)].field_1))]), 
    if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4[address(arg1)].field_0):
        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
            revert with 0, 34
        if uint255(stor4[address(arg1)].field_1):
            if 31 < uint255(stor4[address(arg1)].field_1):
                mem[128] = stor4[address(arg1)].field_0
                idx = 128
                s = 0
                while uint255(stor4[address(arg1)].field_1) + 96 > idx:
                    mem[idx + 32] = stor4[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
    else:
        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)].field_1 % 128:
            if 31 < stor4[address(arg1)].field_1 % 128:
                mem[128] = stor4[address(arg1)].field_0
                idx = 128
                s = 0
                while stor4[address(arg1)].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
    mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
    if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
        mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 192] = 0
    return Array(len=stor4[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)], mem[(2 * ceil32(stor4[address(arg1)].field_1 % 128)) + 192 len 2 * ceil32(stor4[address(arg1)].field_1 % 128)]), 
}

function sub_3a5fc0f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if bool(stor6[msg.sender]) != 1:
        return 0
    if not arg1.length:
        if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(None):
            return 0
    if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] <= arg2:
        if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] >= arg2:
            if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] != arg2:
                return 0
        else:
            if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10:
                revert with 0, 17
            if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] < arg2 - (stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10):
                if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] != arg2:
                    return 0
    else:
        if arg2 > !(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10):
            revert with 0, 17
        if arg2 + (stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] > arg2 + (stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10):
            if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] >= arg2:
                if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] != arg2:
                    return 0
            else:
                if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 < stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10:
                    revert with 0, 17
                if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] < arg2 - (stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] / 10):
                    if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] != arg2:
                        return 0
    return 1
}

function setPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Error address(0)'
    if bool(stor4[address(arg1)].field_0):
        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
            revert with 0, 34
        if bool(stor4[address(arg1)].field_0):
            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                revert with 0, 34
            if not uint255(stor4[address(arg1)].field_1):
                if uint255(stor4[address(arg1)].field_1):
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                            stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                            stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                    if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                    if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                        revert with 0, 'Error contract'
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                            stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
            else:
                if 31 >= uint255(stor4[address(arg1)].field_1):
                    mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
                    if uint255(stor4[address(arg1)].field_1):
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                        if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                        if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while uint255(stor4[address(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor4[address(arg1)].field_1):
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                        var43001 = ceil32(uint255(stor4[address(arg1)].field_1))
                        if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                        if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
        else:
            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)].field_1 % 128:
                if uint255(stor4[address(arg1)].field_1):
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                            stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                            stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                    if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                    if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                        revert with 0, 'Error contract'
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                            stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
            else:
                if 31 >= stor4[address(arg1)].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
                    if uint255(stor4[address(arg1)].field_1):
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                        if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                        if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor4[address(arg1)].field_1):
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len -ceil32(uint255(stor4[address(arg1)].field_1)) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(uint255(stor4[address(arg1)].field_1)) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len ceil32(uint255(stor4[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor4[address(arg1)].field_1))]
                        var44001 = ceil32(uint255(stor4[address(arg1)].field_1))
                        if ceil32(uint255(stor4[address(arg1)].field_1)) > uint255(stor4[address(arg1)].field_1):
                            mem[ceil32(uint255(stor4[address(arg1)].field_1)) + uint255(stor4[address(arg1)].field_1) + 224] = 0
                        if sha3(mem[128 len uint255(stor4[address(arg1)].field_1)]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * uint255(stor4[address(arg1)].field_1)) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                stor[mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len -uint255(stor4[address(arg1)].field_1) + -ceil32(uint255(stor4[address(arg1)].field_1)) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + stor4[address(arg1)].field_1 % 128 + 224] = 5
                                    stor[sha3(mem[uint255(stor4[address(arg1)].field_1) + ceil32(uint255(stor4[address(arg1)].field_1)) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
    else:
        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor4[address(arg1)].field_0):
            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                revert with 0, 34
            if not uint255(stor4[address(arg1)].field_1):
                if stor4[address(arg1)].field_1 % 128:
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                            stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                            stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                    if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                    if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                        revert with 0, 'Error contract'
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                            stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
            else:
                if 31 >= uint255(stor4[address(arg1)].field_1):
                    mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
                    if stor4[address(arg1)].field_1 % 128:
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                        if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                        if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while uint255(stor4[address(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[address(arg1)].field_1 % 128:
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                        var44001 = ceil32(stor4[address(arg1)].field_1 % 128)
                        if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                        if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
        else:
            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)].field_1 % 128:
                if stor4[address(arg1)].field_1 % 128:
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                            stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                            stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                    if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                    if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                        revert with 0, 'Error contract'
                    if bool(stor4[address(arg1)].field_0):
                        if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                            mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                            stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[address(arg1)].field_1):
                                    mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                    else:
                        if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor4[address(arg1)].field_0):
                            stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) != 1:
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[address(arg1)].field_1 % 128:
                                    mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
            else:
                if 31 >= stor4[address(arg1)].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[address(arg1)].field_8)
                    if stor4[address(arg1)].field_1 % 128:
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                        if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                        if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[address(arg1)].field_1 % 128:
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                stor[mem[ceil32(stor4[address(arg1)].field_1 % 128) + 192 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len -ceil32(stor4[address(arg1)].field_1 % 128) - 128])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + ceil32(stor4[address(arg1)].field_1 % 128) + 160] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 160] = 5
                                    stor[sha3(mem[ceil32(stor4[address(arg1)].field_1 % 128) + 160 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
                    else:
                        mem[ceil32(stor4[address(arg1)].field_1 % 128) + 224 len ceil32(stor4[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor4[address(arg1)].field_1 % 128)]
                        var45001 = ceil32(stor4[address(arg1)].field_1 % 128)
                        if ceil32(stor4[address(arg1)].field_1 % 128) > stor4[address(arg1)].field_1 % 128:
                            mem[ceil32(stor4[address(arg1)].field_1 % 128) + stor4[address(arg1)].field_1 % 128 + 224] = 0
                        if sha3(mem[128 len stor4[address(arg1)].field_1 % 128]) == sha3(None):
                            revert with 0, 'Error contract'
                        if bool(stor4[address(arg1)].field_0):
                            if bool(stor4[address(arg1)].field_0) == uint255(stor4[address(arg1)].field_1) < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = Mask(248, 8, stor4[address(arg1)].field_0)
                                mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len uint255(stor4[address(arg1)].field_1)]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor4[address(arg1)].field_1):
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + uint255(stor4[address(arg1)].field_1) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len uint255(stor4[address(arg1)].field_1) + 32])] = arg2
                        else:
                            if bool(stor4[address(arg1)].field_0) == stor4[address(arg1)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor4[address(arg1)].field_0):
                                stor[mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 256 len stor4[address(arg1)].field_1 % 128]][Mask(248, 8, stor4[address(arg1)].field_0)] = arg2
                            else:
                                if bool(stor4[address(arg1)].field_0) != 1:
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len -stor4[address(arg1)].field_1 % 128 + -ceil32(stor4[address(arg1)].field_1 % 128) - 192])] = arg2
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor4[address(arg1)].field_1 % 128:
                                        mem[idx + stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = stor4[address(arg1)][s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(2 * stor4[address(arg1)].field_1 % 128) + ceil32(stor4[address(arg1)].field_1 % 128) + 224] = 5
                                    stor[sha3(mem[stor4[address(arg1)].field_1 % 128 + ceil32(stor4[address(arg1)].field_1 % 128) + 224 len stor4[address(arg1)].field_1 % 128 + 32])] = arg2
    return 1
}



}
