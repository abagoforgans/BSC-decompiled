contract main {




// =====================  Runtime code  =====================


#
#  - sub_43f6a210(?)
#  - sub_f9773f92(?)
#
const decimals = 6


mapping of uint256 balanceOf;
mapping of uint256 stor1;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 stor8;
uint8 stor9;
uint256 stor10;
array of struct sub_4e095d3e;
uint256 currentTotalSupply;
uint256 sub_69668fe9;
uint256 launchDate;
uint256 sub_1311f2b5;
uint256 sub_b4aee2a6;
uint256 sub_6ca92769;
uint256 sub_5a123c85;
uint256 firstType;
uint256 secondType;
uint256 thirdType;
address owner;
mapping of struct buyers;
mapping of struct stor25;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_1311f2b5(?) payable {
    return sub_1311f2b5
}

function totalSupply() payable {
    return totalSupply
}

function currentTotalSupply() payable {
    return currentTotalSupply
}

function sub_4e095d3e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4e095d3e.length
    return sub_4e095d3e[arg1].field_0
}

function getBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(buyers[address(arg1)].field_0) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot find this address. Contact info@futiracoin.com for help.'
    return address(buyers[address(arg1)].field_0), 
           buyers[address(arg1)].field_256,
           buyers[address(arg1)].field_512,
           buyers[address(arg1)].field_768,
           buyers[address(arg1)].field_1024,
           buyers[address(arg1)].field_1280
}

function sub_5a123c85(?) payable {
    return sub_5a123c85
}

function result() payable {
    return bool(stor9)
}

function sub_69668fe9(?) payable {
    return sub_69668fe9
}

function sub_6ca92769(?) payable {
    return sub_6ca92769
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function signers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function secondType() payable {
    return secondType
}

function owner() payable {
    return owner
}

function buyers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(buyers[arg1].field_0), 
           buyers[arg1].field_256,
           buyers[arg1].field_512,
           buyers[arg1].field_768,
           buyers[arg1].field_1024,
           buyers[arg1].field_1280
}

function sub_b4aee2a6(?) payable {
    return sub_b4aee2a6
}

function firstType() payable {
    return firstType
}

function launchDate() payable {
    return launchDate
}

function thirdType() payable {
    return thirdType
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the owner of this smart contract. Contact info@futiracoin.com for help.'
    else:
        return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the owner of this smart contract. Contact info@futiracoin.com for help.'
    else:
        return 0
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    stor1[address(msg.sender)][address(arg1)] += arg2
    emit Approval((stor1[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    stor1[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((stor1[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_c0c9f787(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if bool(stor6[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are not the owner or signer of this smart contract. Contact info@futiracoin.com for help.'
    idx = 0
    s = 0
    while idx < sub_4e095d3e.length:
        mem[0] = 11
        if 0 == sub_4e095d3e[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return sub_4e095d3e.length, s
}

function sub_5f19e80a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
    if bool(arg1) != 1:
        if not stor8:
            if stor8 >= 1:
                stor9 = 1
            else:
                if not stor8:
                    stor9 = 0
        else:
            if stor8 < 1:
                revert with 0, 17
            stor8--
            stor9 = 1
    else:
        if stor8 < 2:
            if stor8 > -2:
                revert with 0, 17
            stor8++
        if stor8 >= 1:
            stor9 = 1
        else:
            if not stor8:
                stor9 = 0
}

function sub_e6f2e42f(?) payable {
    if owner != msg.sender:
        if bool(stor6[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are not the owner or signer of this smart contract. Contact info@futiracoin.com for help.'
    if sub_4e095d3e.length:
        mem[128] = uint256(sub_4e095d3e.field_0)
        idx = 128
        s = 0
        while (32 * sub_4e095d3e.length) + 96 > idx:
            mem[idx + 32] = sub_4e095d3e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_4e095d3e.length, data=mem[128 len 32 * sub_4e095d3e.length])
    mem[(32 * sub_4e095d3e.length) + 128] = 32
    mem[(32 * sub_4e095d3e.length) + 160] = sub_4e095d3e.length
    mem[(32 * sub_4e095d3e.length) + 192 len 32 * sub_4e095d3e.length] = mem[128 len 32 * sub_4e095d3e.length]
    return memory
      from (32 * sub_4e095d3e.length) + 128
       len (96 * sub_4e095d3e.length) + 64
}

function sub_ebf0ede4(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor25[arg1].field_512):
        if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
            revert with 0, 34
        if bool(stor25[arg1].field_512):
            if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_513):
                if 31 >= uint255(stor25[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
                else:
                    mem[128] = stor25[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor25[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor25[arg1].field_513 % 128:
                if 31 >= stor25[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
                else:
                    mem[128] = stor25[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor25[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor25[arg1].field_0), 
               stor25[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_513)), data=mem[128 len ceil32(uint255(stor25[arg1].field_513))]),
               stor25[arg1].field_768
    if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor25[arg1].field_512):
        if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
            revert with 0, 34
        if uint255(stor25[arg1].field_513):
            if 31 >= uint255(stor25[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
            else:
                mem[128] = stor25[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor25[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_513 % 128:
            if 31 >= stor25[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
            else:
                mem[128] = stor25[arg1][2].field_0
                idx = 128
                s = 0
                while stor25[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor25[arg1].field_0), 
           stor25[arg1].field_256,
           Array(len=stor25[arg1].field_512 % 128, data=mem[128 len ceil32(stor25[arg1].field_513 % 128)]),
           stor25[arg1].field_768
}

function getPendingTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if bool(stor6[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are not the owner or signer of this smart contract. Contact info@futiracoin.com for help.'
    if bool(stor25[arg1].field_512):
        if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
            revert with 0, 34
        if bool(stor25[arg1].field_512):
            if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_513):
                if 31 >= uint255(stor25[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
                else:
                    mem[128] = stor25[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor25[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor25[arg1].field_513 % 128:
                if 31 >= stor25[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
                else:
                    mem[128] = stor25[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor25[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor25[arg1].field_0), 
               stor25[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_513)), data=mem[128 len ceil32(uint255(stor25[arg1].field_513))]),
               stor25[arg1].field_768
    if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor25[arg1].field_512):
        if bool(stor25[arg1].field_512) == uint255(stor25[arg1].field_513) < 32:
            revert with 0, 34
        if uint255(stor25[arg1].field_513):
            if 31 >= uint255(stor25[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
            else:
                mem[128] = stor25[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor25[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor25[arg1].field_512) == stor25[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_513 % 128:
            if 31 >= stor25[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor25[arg1].field_520)
            else:
                mem[128] = stor25[arg1][2].field_0
                idx = 128
                s = 0
                while stor25[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor25[arg1].field_0), 
           stor25[arg1].field_256,
           Array(len=stor25[arg1].field_512 % 128, data=mem[128 len ceil32(stor25[arg1].field_513 % 128)]),
           stor25[arg1].field_768
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor3.length.field_1):
                if 31 < uint255(stor3.length.field_1):
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length.field_1)) + 192 len ceil32(uint255(stor3.length.field_1))] = mem[128 len ceil32(uint255(stor3.length.field_1))]
        if ceil32(uint255(stor3.length.field_1)) > uint255(stor3.length.field_1):
            mem[ceil32(uint255(stor3.length.field_1)) + uint255(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))], mem[(2 * ceil32(uint255(stor3.length.field_1))) + 192 len 2 * ceil32(uint255(stor3.length.field_1))]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor3.length.field_1):
            if 31 < uint255(stor3.length.field_1):
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while uint255(stor3.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor4.length.field_1):
                if 31 < uint255(stor4.length.field_1):
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length.field_1)) + 192 len ceil32(uint255(stor4.length.field_1))] = mem[128 len ceil32(uint255(stor4.length.field_1))]
        if ceil32(uint255(stor4.length.field_1)) > uint255(stor4.length.field_1):
            mem[ceil32(uint255(stor4.length.field_1)) + uint255(stor4.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))], mem[(2 * ceil32(uint255(stor4.length.field_1))) + 192 len 2 * ceil32(uint255(stor4.length.field_1))]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor4.length.field_1):
            if 31 < uint255(stor4.length.field_1):
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while uint255(stor4.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the owner of this smart contract. Contact info@futiracoin.com for help.'
    if owner == arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if currentTotalSupply > !arg3:
            revert with 0, 17
        currentTotalSupply += arg3
        if buyers[address(arg1)].field_1024 < arg3:
            revert with 0, 17
        buyers[address(arg1)].field_1024 -= arg3
        if arg3 <= buyers[address(arg1)].field_256:
            if buyers[address(arg1)].field_256 < arg3:
                revert with 0, 17
            buyers[address(arg1)].field_256 -= arg3
        else:
            buyers[address(arg1)].field_256 = 0
            if arg3 < 0:
                revert with 0, 17
            if arg3:
                if arg3 <= buyers[address(arg1)].field_512:
                    if buyers[address(arg1)].field_512 < arg3:
                        revert with 0, 17
                    buyers[address(arg1)].field_512 -= arg3
                else:
                    if arg3 < buyers[address(arg1)].field_512:
                        revert with 0, 17
                    buyers[address(arg1)].field_512 = 0
                    if arg3 - buyers[address(arg1)].field_512:
                        if arg3 - buyers[address(arg1)].field_512 > buyers[address(arg1)].field_768:
                            if arg3 - buyers[address(arg1)].field_512 < buyers[address(arg1)].field_768:
                                revert with 0, 17
                            buyers[address(arg1)].field_768 = 0
                        else:
                            if buyers[address(arg1)].field_768 < arg3 - buyers[address(arg1)].field_512:
                                revert with 0, 17
                            buyers[address(arg1)].field_768 = buyers[address(arg1)].field_768 - arg3 + buyers[address(arg1)].field_512
    else:
        if owner == arg1:
            idx = 0
            while idx < sub_4e095d3e.length:
                s = 0
                while s < sub_4e095d3e.length:
                    mem[0] = 11
                    if sub_4e095d3e[s].field_0 != idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    mem[0] = idx
                    mem[32] = 25
                    if block.timestamp > stor25[idx].field_768:
                        _204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_204] = 6
                        mem[_204 + 32] = 0x6661696c65640000000000000000000000000000000000000000000000000000
                        mem[32] = 25
                        if bool(stor25[idx].field_512):
                            if bool(stor25[idx].field_512) == uint255(stor25[idx].field_513) < 32:
                                revert with 0, 34
                            bool(stor25[idx].field_512) = 0
                            uint255(stor25[idx].field_513) = 6
                            stor25[idx].field_720 % 281474976710656 = 112568566572388
                            s = sha3(sha3(idx, 25) + 2)
                            while sha3(sha3(idx, 25) + 2) + (uint255(stor25[idx].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor25[idx].field_512) == stor25[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            bool(stor25[idx].field_512) = 0
                            uint255(stor25[idx].field_513) = 6
                            stor25[idx].field_720 % 281474976710656 = 112568566572388
                            s = sha3(sha3(idx, 25) + 2)
                            while sha3(sha3(idx, 25) + 2) + (stor25[idx].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if idx >= sub_4e095d3e.length:
                            revert with 0, 50
                        mem[0] = 11
                        sub_4e095d3e[idx].field_0 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            address(stor25[stor10].field_0) = arg2
            stor25[stor10].field_256 = arg3
            if bool(stor25[stor10].field_512):
                if bool(stor25[stor10].field_512) == uint255(stor25[stor10].field_513) < 32:
                    revert with 0, 34
                bool(stor25[stor10].field_512) = 0
                uint255(stor25[stor10].field_513) = 7
                Mask(248, 0, stor25[stor10].field_520) = 'pending' / 256
                idx = 0
                while uint255(stor25[stor10].field_513) + 31 / 32 > idx:
                    stor25[stor10][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if bool(stor25[stor10].field_512) == stor25[stor10].field_513 % 128 < 32:
                    revert with 0, 34
                bool(stor25[stor10].field_512) = 0
                uint255(stor25[stor10].field_513) = 7
                Mask(248, 0, stor25[stor10].field_520) = 'pending' / 256
                idx = 0
                while stor25[stor10].field_513 % 128 + 31 / 32 > idx:
                    stor25[stor10][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor25[stor10].field_768 = block.timestamp + 300
            sub_4e095d3e.length++
            stor175B[stor11.length] = stor10
            if 1 > !stor10:
                revert with 0, 17
            stor10++
        else:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if buyers[address(arg1)].field_1024 < arg3:
                revert with 0, 17
            buyers[address(arg1)].field_1024 -= arg3
            address(buyers[address(arg2)].field_0) = arg2
            if buyers[address(arg2)].field_1024 > !arg3:
                revert with 0, 17
            buyers[address(arg2)].field_1024 += arg3
            if arg3 <= buyers[address(arg1)].field_256:
                if buyers[address(arg1)].field_256 < arg3:
                    revert with 0, 17
                buyers[address(arg1)].field_256 -= arg3
            else:
                buyers[address(arg1)].field_256 = 0
                if arg3 < 0:
                    revert with 0, 17
                if arg3:
                    if arg3 <= buyers[address(arg1)].field_512:
                        if buyers[address(arg1)].field_512 < arg3:
                            revert with 0, 17
                        buyers[address(arg1)].field_512 -= arg3
                    else:
                        if arg3 < buyers[address(arg1)].field_512:
                            revert with 0, 17
                        buyers[address(arg1)].field_512 = 0
                        if arg3 - buyers[address(arg1)].field_512:
                            if arg3 - buyers[address(arg1)].field_512 > buyers[address(arg1)].field_768:
                                if arg3 - buyers[address(arg1)].field_512 < buyers[address(arg1)].field_768:
                                    revert with 0, 17
                                buyers[address(arg1)].field_768 = 0
                            else:
                                if buyers[address(arg1)].field_768 < arg3 - buyers[address(arg1)].field_512:
                                    revert with 0, 17
                                buyers[address(arg1)].field_768 = buyers[address(arg1)].field_768 - arg3 + buyers[address(arg1)].field_512
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if buyers[msg.sender].field_256 > !buyers[msg.sender].field_512:
        revert with 0, 17
    if buyers[msg.sender].field_256 + buyers[msg.sender].field_512 > !buyers[msg.sender].field_768:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < buyers[msg.sender].field_256 + buyers[msg.sender].field_512 + buyers[msg.sender].field_768:
        revert with 0, 17
    if stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your address has been hold from transfering the token. Contact info@futiracoin.com for help.'
    if msg.sender == owner:
        idx = 0
        while idx < sub_4e095d3e.length:
            s = 0
            while s < sub_4e095d3e.length:
                mem[0] = 11
                if sub_4e095d3e[s].field_0 != idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[0] = idx
                mem[32] = 25
                if block.timestamp > stor25[idx].field_768:
                    _751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_751] = 6
                    mem[_751 + 32] = 0x6661696c65640000000000000000000000000000000000000000000000000000
                    mem[32] = 25
                    if bool(stor25[idx].field_512):
                        if bool(stor25[idx].field_512) == uint255(stor25[idx].field_513) < 32:
                            revert with 0, 34
                        bool(stor25[idx].field_512) = 0
                        uint255(stor25[idx].field_513) = 6
                        stor25[idx].field_720 % 281474976710656 = 112568566572388
                        s = sha3(sha3(idx, 25) + 2)
                        while sha3(sha3(idx, 25) + 2) + (uint255(stor25[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor25[idx].field_512) == stor25[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        bool(stor25[idx].field_512) = 0
                        uint255(stor25[idx].field_513) = 6
                        stor25[idx].field_720 % 281474976710656 = 112568566572388
                        s = sha3(sha3(idx, 25) + 2)
                        while sha3(sha3(idx, 25) + 2) + (stor25[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if idx >= sub_4e095d3e.length:
                        revert with 0, 50
                    mem[0] = 11
                    sub_4e095d3e[idx].field_0 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 300 > !block.timestamp:
            revert with 0, 17
        address(stor25[stor10].field_0) = arg1
        stor25[stor10].field_256 = arg2
        if bool(stor25[stor10].field_512):
            if bool(stor25[stor10].field_512) == uint255(stor25[stor10].field_513) < 32:
                revert with 0, 34
            bool(stor25[stor10].field_512) = 0
            uint255(stor25[stor10].field_513) = 7
            Mask(248, 0, stor25[stor10].field_520) = 'pending' / 256
            idx = 0
            while uint255(stor25[stor10].field_513) + 31 / 32 > idx:
                stor25[stor10][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if bool(stor25[stor10].field_512) == stor25[stor10].field_513 % 128 < 32:
                revert with 0, 34
            bool(stor25[stor10].field_512) = 0
            uint255(stor25[stor10].field_513) = 7
            Mask(248, 0, stor25[stor10].field_520) = 'pending' / 256
            idx = 0
            while stor25[stor10].field_513 % 128 + 31 / 32 > idx:
                stor25[stor10][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        stor25[stor10].field_768 = block.timestamp + 300
        sub_4e095d3e.length++
        stor175B[stor11.length] = stor10
        if 1 > !stor10:
            revert with 0, 17
        stor10++
    else:
        if block.timestamp > sub_5a123c85:
            if buyers[msg.sender].field_256 > !buyers[msg.sender].field_512:
                revert with 0, 17
            if buyers[msg.sender].field_256 + buyers[msg.sender].field_512 > !buyers[msg.sender].field_768:
                revert with 0, 17
            if arg2 > buyers[msg.sender].field_256 + buyers[msg.sender].field_512 + buyers[msg.sender].field_768:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'The amount you want to transfer is higher than your allowed. Contact info@futiracoin.com for help.'
            if buyers[address(arg1)].field_1024 > !arg2:
                revert with 0, 17
            if buyers[msg.sender].field_1024 < arg2:
                revert with 0, 17
            buyers[msg.sender].field_1024 -= arg2
            address(buyers[address(arg1)].field_0) = arg1
            buyers[address(arg1)].field_1024 += arg2
            if arg2 <= buyers[address(msg.sender)].field_256:
                if buyers[address(msg.sender)].field_256 < arg2:
                    revert with 0, 17
                buyers[address(msg.sender)].field_256 -= arg2
            else:
                buyers[address(msg.sender)].field_256 = 0
                if arg2 < 0:
                    revert with 0, 17
                if arg2:
                    if arg2 <= buyers[address(msg.sender)].field_512:
                        if buyers[address(msg.sender)].field_512 < arg2:
                            revert with 0, 17
                        buyers[address(msg.sender)].field_512 -= arg2
                    else:
                        if arg2 < buyers[address(msg.sender)].field_512:
                            revert with 0, 17
                        buyers[address(msg.sender)].field_512 = 0
                        if arg2 - buyers[address(msg.sender)].field_512:
                            if arg2 - buyers[address(msg.sender)].field_512 > buyers[address(msg.sender)].field_768:
                                if arg2 - buyers[address(msg.sender)].field_512 < buyers[address(msg.sender)].field_768:
                                    revert with 0, 17
                                buyers[address(msg.sender)].field_768 = 0
                            else:
                                if buyers[address(msg.sender)].field_768 < arg2 - buyers[address(msg.sender)].field_512:
                                    revert with 0, 17
                                buyers[address(msg.sender)].field_768 = buyers[address(msg.sender)].field_768 - arg2 + buyers[address(msg.sender)].field_512
        else:
            if block.timestamp <= sub_6ca92769:
                if block.timestamp <= sub_b4aee2a6:
                    if block.timestamp <= sub_1311f2b5:
                        if block.timestamp <= launchDate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'You can't transfer these tokens. Contact info@futiracoin.com for help.'
                        if buyers[msg.sender].field_768 > !(balanceOf[address(msg.sender)] - buyers[msg.sender].field_256 - buyers[msg.sender].field_512 - buyers[msg.sender].field_768):
                            revert with 0, 17
                        if arg2 > balanceOf[address(msg.sender)] - buyers[msg.sender].field_256 - buyers[msg.sender].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'The amount you want to sell is higher than you're allowed. Contact info@futiracoin.com for help.'
                        if buyers[msg.sender].field_1024 < arg2:
                            revert with 0, 17
                        buyers[msg.sender].field_1024 -= arg2
                        address(buyers[address(arg1)].field_0) = arg1
                        if buyers[address(arg1)].field_1024 > !arg2:
                            revert with 0, 17
                        buyers[address(arg1)].field_1024 += arg2
                        if arg2 > buyers[address(msg.sender)].field_768:
                            if arg2 < buyers[address(msg.sender)].field_768:
                                revert with 0, 17
                            buyers[address(msg.sender)].field_768 = 0
                        else:
                            if buyers[address(msg.sender)].field_768 < arg2:
                                revert with 0, 17
                            buyers[address(msg.sender)].field_768 -= arg2
                    else:
                        if buyers[msg.sender].field_512 > !buyers[msg.sender].field_768:
                            revert with 0, 17
                        if buyers[msg.sender].field_512 + buyers[msg.sender].field_768 > !(balanceOf[address(msg.sender)] - buyers[msg.sender].field_256 - buyers[msg.sender].field_512 - buyers[msg.sender].field_768):
                            revert with 0, 17
                        if arg2 > balanceOf[address(msg.sender)] - buyers[msg.sender].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'The amount you want to sell is higher than you're allowed. Contact info@futiracoin.com for help.'
                        if buyers[msg.sender].field_1024 < arg2:
                            revert with 0, 17
                        buyers[msg.sender].field_1024 -= arg2
                        address(buyers[address(arg1)].field_0) = arg1
                        if buyers[address(arg1)].field_1024 > !arg2:
                            revert with 0, 17
                        buyers[address(arg1)].field_1024 += arg2
                        if arg2 <= buyers[address(msg.sender)].field_512:
                            if buyers[address(msg.sender)].field_512 < arg2:
                                revert with 0, 17
                            buyers[address(msg.sender)].field_512 -= arg2
                        else:
                            if arg2 < buyers[address(msg.sender)].field_512:
                                revert with 0, 17
                            buyers[address(msg.sender)].field_512 = 0
                            if arg2 - buyers[address(msg.sender)].field_512:
                                if arg2 - buyers[address(msg.sender)].field_512 > buyers[address(msg.sender)].field_768:
                                    if arg2 - buyers[address(msg.sender)].field_512 < buyers[address(msg.sender)].field_768:
                                        revert with 0, 17
                                    buyers[address(msg.sender)].field_768 = 0
                                else:
                                    if buyers[address(msg.sender)].field_768 < arg2 - buyers[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    buyers[address(msg.sender)].field_768 = buyers[address(msg.sender)].field_768 - arg2 + buyers[address(msg.sender)].field_512
                else:
                    if buyers[msg.sender].field_1280 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if 10 * buyers[msg.sender].field_1280 / 100 > !buyers[msg.sender].field_512:
                        revert with 0, 17
                    if (10 * buyers[msg.sender].field_1280 / 100) + buyers[msg.sender].field_512 > !buyers[msg.sender].field_768:
                        revert with 0, 17
                    if (10 * buyers[msg.sender].field_1280 / 100) + buyers[msg.sender].field_512 + buyers[msg.sender].field_768 > !(balanceOf[address(msg.sender)] - buyers[msg.sender].field_256 - buyers[msg.sender].field_512 - buyers[msg.sender].field_768):
                        revert with 0, 17
                    if arg2 > (10 * buyers[msg.sender].field_1280 / 100) + balanceOf[address(msg.sender)] - buyers[msg.sender].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'The amount you want to sell is higher than you're allowed. Contact info@futiracoin.com for help.'
                    if buyers[msg.sender].field_1024 < arg2:
                        revert with 0, 17
                    buyers[msg.sender].field_1024 -= arg2
                    address(buyers[address(arg1)].field_0) = arg1
                    if buyers[address(arg1)].field_1024 > !arg2:
                        revert with 0, 17
                    buyers[address(arg1)].field_1024 += arg2
                    if buyers[address(msg.sender)].field_1280 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if 10 * buyers[address(msg.sender)].field_1280 / 100 >= arg2:
                        if buyers[address(msg.sender)].field_256 < arg2:
                            revert with 0, 17
                        buyers[address(msg.sender)].field_256 -= arg2
                    else:
                        if buyers[address(msg.sender)].field_1280 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if arg2 < 10 * buyers[address(msg.sender)].field_1280 / 100:
                            revert with 0, 17
                        if buyers[address(msg.sender)].field_1280 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if buyers[address(msg.sender)].field_256 < 10 * buyers[address(msg.sender)].field_1280 / 100:
                            revert with 0, 17
                        buyers[address(msg.sender)].field_256 -= 10 * buyers[address(msg.sender)].field_1280 / 100
                        if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100):
                            if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) <= buyers[address(msg.sender)].field_512:
                                if buyers[address(msg.sender)].field_512 < arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100):
                                    revert with 0, 17
                                buyers[address(msg.sender)].field_512 = buyers[address(msg.sender)].field_512 - arg2 + (10 * buyers[address(msg.sender)].field_1280 / 100)
                            else:
                                if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) < buyers[address(msg.sender)].field_512:
                                    revert with 0, 17
                                buyers[address(msg.sender)].field_512 = 0
                                if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) - buyers[address(msg.sender)].field_512:
                                    if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) - buyers[address(msg.sender)].field_512 > buyers[address(msg.sender)].field_768:
                                        if arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) - buyers[address(msg.sender)].field_512 < buyers[address(msg.sender)].field_768:
                                            revert with 0, 17
                                        buyers[address(msg.sender)].field_768 = 0
                                    else:
                                        if buyers[address(msg.sender)].field_768 < arg2 - (10 * buyers[address(msg.sender)].field_1280 / 100) - buyers[address(msg.sender)].field_512:
                                            revert with 0, 17
                                        buyers[address(msg.sender)].field_768 = buyers[address(msg.sender)].field_768 - arg2 + (10 * buyers[address(msg.sender)].field_1280 / 100) + buyers[address(msg.sender)].field_512
            else:
                if buyers[msg.sender].field_1280 < buyers[msg.sender].field_256:
                    revert with 0, 17
                if buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 and buyers[msg.sender].field_1280 > -1 / buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100:
                    revert with 0, 17
                if 55 < buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280:
                    revert with 0, 17
                if buyers[msg.sender].field_256 and (-1 * buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280) + 55 > -1 / buyers[msg.sender].field_256:
                    revert with 0, 17
                if (55 * buyers[msg.sender].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[msg.sender].field_256) / 100 > !buyers[msg.sender].field_512:
                    revert with 0, 17
                if ((55 * buyers[msg.sender].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[msg.sender].field_256) / 100) + buyers[msg.sender].field_512 > !buyers[msg.sender].field_768:
                    revert with 0, 17
                if ((55 * buyers[msg.sender].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[msg.sender].field_256) / 100) + buyers[msg.sender].field_512 + buyers[msg.sender].field_768 > !(balanceOf[address(msg.sender)] - buyers[msg.sender].field_256 - buyers[msg.sender].field_512 - buyers[msg.sender].field_768):
                    revert with 0, 17
                if arg2 > ((55 * buyers[msg.sender].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[msg.sender].field_256) / 100) + balanceOf[address(msg.sender)] - buyers[msg.sender].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'The amount you want to sell is higher than you're allowed. Contact info@futiracoin.com for help.'
                if buyers[msg.sender].field_1024 < arg2:
                    revert with 0, 17
                buyers[msg.sender].field_1024 -= arg2
                address(buyers[address(arg1)].field_0) = arg1
                if buyers[address(arg1)].field_1024 > !arg2:
                    revert with 0, 17
                buyers[address(arg1)].field_1024 += arg2
                if buyers[msg.sender].field_1280 < buyers[msg.sender].field_256:
                    revert with 0, 17
                if buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 and buyers[msg.sender].field_1280 > -1 / buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100:
                    revert with 0, 17
                if 55 < buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280:
                    revert with 0, 17
                if buyers[address(msg.sender)].field_256 and (-1 * buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280) + 55 > -1 / buyers[address(msg.sender)].field_256:
                    revert with 0, 17
                if (55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100 >= arg2:
                    if buyers[address(msg.sender)].field_256 < arg2:
                        revert with 0, 17
                    buyers[address(msg.sender)].field_256 -= arg2
                else:
                    if buyers[address(msg.sender)].field_256 and (-1 * buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280) + 55 > -1 / buyers[address(msg.sender)].field_256:
                        revert with 0, 17
                    if arg2 < (55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100:
                        revert with 0, 17
                    if buyers[address(msg.sender)].field_1280 and (-1 * buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280) + 55 > -1 / buyers[address(msg.sender)].field_1280:
                        revert with 0, 17
                    if buyers[address(msg.sender)].field_256 < (55 * buyers[address(msg.sender)].field_1280) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_1280) / 100:
                        revert with 0, 17
                    buyers[address(msg.sender)].field_256 -= (55 * buyers[address(msg.sender)].field_1280) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_1280) / 100
                    if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100):
                        if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) <= buyers[address(msg.sender)].field_512:
                            if buyers[address(msg.sender)].field_512 < arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100):
                                revert with 0, 17
                            buyers[address(msg.sender)].field_512 = buyers[address(msg.sender)].field_512 - arg2 + ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100)
                        else:
                            if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) < buyers[address(msg.sender)].field_512:
                                revert with 0, 17
                            buyers[address(msg.sender)].field_512 = 0
                            if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) - buyers[address(msg.sender)].field_512:
                                if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) - buyers[address(msg.sender)].field_512 > buyers[address(msg.sender)].field_768:
                                    if arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) - buyers[address(msg.sender)].field_512 < buyers[address(msg.sender)].field_768:
                                        revert with 0, 17
                                    buyers[address(msg.sender)].field_768 = 0
                                else:
                                    if buyers[address(msg.sender)].field_768 < arg2 - ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) - buyers[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    buyers[address(msg.sender)].field_768 = buyers[address(msg.sender)].field_768 - arg2 + ((55 * buyers[address(msg.sender)].field_256) - (buyers[msg.sender].field_1280 - buyers[msg.sender].field_256 / 100 * buyers[msg.sender].field_1280 * buyers[address(msg.sender)].field_256) / 100) + buyers[address(msg.sender)].field_512
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if owner == arg1:
            buyers[address(arg1)].field_1024 = balanceOf[address(arg1)]
    return 1
}



}
