contract main {




// =====================  Runtime code  =====================


const decimals = 6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint8 stor5;
uint256 stor6;
uint256 sub_aca9608a;
array of uint256 sub_11e68f98;
uint256 currentTotalSupply;
address owner;
address sub_4bccac27Address;
mapping of struct stor12;

function sub_11e68f98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_11e68f98.length
    return sub_11e68f98[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function currentTotalSupply() payable {
    return currentTotalSupply
}

function sub_4bccac27(?) payable {
    return sub_4bccac27Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function signers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function sub_aca9608a(?) payable {
    return sub_aca9608a
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
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    return 1
}

function sub_9bd77e47(?) payable {
    if sub_4bccac27Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the VestingWallet of this smart contract. Contact info@futiracoin.com for help.'
    idx = 0
    while idx < sub_11e68f98.length:
        mem[0] = 8
        if sub_11e68f98[idx] != 0:
            if idx >= sub_11e68f98.length:
                revert with 0, 50
            mem[0] = 8
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_11e68f98[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[160 len 1024] = 32, mem[160 len 992]
    return 32, 32, mem[160 len 1024]
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
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
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

function sub_eccda030(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the owner of this smart contract. Contact info@futiracoin.com for help.'
    address(stor12[stor7].field_0) = address(arg1)
    stor12[stor7].field_256 = arg2
    if bool(stor12[stor7].field_512):
        if bool(stor12[stor7].field_512) == uint255(stor12[stor7].field_513) < 32:
            revert with 0, 34
        bool(stor12[stor7].field_512) = 0
        uint255(stor12[stor7].field_513) = 7
        Mask(248, 0, stor12[stor7].field_520) = 'pending' / 256
        idx = 0
        while uint255(stor12[stor7].field_513) + 31 / 32 > idx:
            stor12[stor7][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor12[stor7].field_512) == stor12[stor7].field_513 % 128 < 32:
            revert with 0, 34
        bool(stor12[stor7].field_512) = 0
        uint255(stor12[stor7].field_513) = 7
        Mask(248, 0, stor12[stor7].field_520) = 'pending' / 256
        idx = 0
        while stor12[stor7].field_513 % 128 + 31 / 32 > idx:
            stor12[stor7][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor12[stor7].field_768 = block.timestamp
    stor12[stor7].field_1024 = arg3
    if 1 > !sub_aca9608a:
        revert with 0, 17
    sub_11e68f98.length++
    sub_11e68f98[sub_11e68f98.length] = sub_aca9608a + 1
    if 1 > !stor6:
        revert with 0, 17
    stor6++
    if 1 > !sub_aca9608a:
        revert with 0, 17
    sub_aca9608a++
    return sub_aca9608a
}

function sub_8fead555(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 0, 34
        if bool(stor12[arg1].field_512):
            if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                revert with 0, 34
            if uint255(stor12[arg1].field_513):
                if 31 >= uint255(stor12[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = stor12[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor12[arg1].field_513 % 128:
                if 31 >= stor12[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = stor12[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor12[arg1].field_0), 
               stor12[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_513)), data=mem[128 len ceil32(uint255(stor12[arg1].field_513))]),
               stor12[arg1].field_1024
    if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 0, 34
        if uint255(stor12[arg1].field_513):
            if 31 >= uint255(stor12[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = stor12[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor12[arg1].field_513 % 128:
            if 31 >= stor12[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = stor12[arg1][2].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor12[arg1].field_0), 
           stor12[arg1].field_256,
           Array(len=stor12[arg1].field_512 % 128, data=mem[128 len ceil32(stor12[arg1].field_513 % 128)]),
           stor12[arg1].field_1024
}

function sub_cbbf9a9e(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 0, 34
        if bool(stor12[arg1].field_512):
            if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                revert with 0, 34
            if uint255(stor12[arg1].field_513):
                if 31 >= uint255(stor12[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = stor12[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor12[arg1].field_513 % 128:
                if 31 >= stor12[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = stor12[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor12[arg1].field_0), 
               stor12[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_513)), data=mem[128 len ceil32(uint255(stor12[arg1].field_513))]),
               stor12[arg1].field_768,
               stor12[arg1].field_1024
    if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 0, 34
        if uint255(stor12[arg1].field_513):
            if 31 >= uint255(stor12[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = stor12[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor12[arg1].field_513 % 128:
            if 31 >= stor12[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = stor12[arg1][2].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor12[arg1].field_0), 
           stor12[arg1].field_256,
           Array(len=stor12[arg1].field_512 % 128, data=mem[128 len ceil32(stor12[arg1].field_513 % 128)]),
           stor12[arg1].field_768,
           stor12[arg1].field_1024
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

function sub_799f22fb(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
    idx = 0
    while idx < sub_11e68f98.length:
        mem[0] = 8
        if sub_11e68f98[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 300 > !stor12[arg1].field_768:
            revert with 0, 17
        if block.timestamp < stor12[arg1].field_768 + 300:
            if bool(stor12[arg1].field_512):
                if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                    revert with 0, 34
                if not bool(stor12[arg1].field_512):
                    mem[167] = Mask(248, 8, stor12[arg1].field_512)
                    if sha3(mem[167 len uint255(stor12[arg1].field_513)]) == sha3('pending'):
                        if bool(stor12[arg1].field_512):
                            if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                revert with 0, 34
                            bool(stor12[arg1].field_512) = 0
                            uint255(stor12[arg1].field_513) = 8
                            uint64(stor12[arg1].field_704) = 7021235455869216100
                            idx = sha3(sha3(arg1, 12) + 2)
                            while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            bool(stor12[arg1].field_512) = 0
                            uint255(stor12[arg1].field_513) = 8
                            uint64(stor12[arg1].field_704) = 7021235455869216100
                            idx = sha3(sha3(arg1, 12) + 2)
                            while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if not owner:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_4bccac27Address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor10] < stor12[arg1].field_256:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor10] -= stor12[arg1].field_256
                        if balanceOf[stor11] > !stor12[arg1].field_256:
                            revert with 0, 17
                        balanceOf[stor11] += stor12[arg1].field_256
                        emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
                else:
                    if bool(stor12[arg1].field_512) != 1:
                        if sha3(mem[167 len -167]) == sha3('pending'):
                            if bool(stor12[arg1].field_512):
                                if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            if not owner:
                                revert with 64, 'ERC20: transfer from the zero address'
                            if not sub_4bccac27Address:
                                revert with 64, 'ERC20: transfer to the zero address'
                            if balanceOf[stor10] < stor12[arg1].field_256:
                                revert with 64, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor10] -= stor12[arg1].field_256
                            if balanceOf[stor11] > !stor12[arg1].field_256:
                                revert with 0, 17
                            balanceOf[stor11] += stor12[arg1].field_256
                            emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
                    else:
                        idx = 0
                        s = sha3(sha3(arg1, 12) + 2)
                        while idx < uint255(stor12[arg1].field_513):
                            mem[idx + 167] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sha3(mem[167 len uint255(stor12[arg1].field_513)]) == sha3('pending'):
                            if bool(stor12[arg1].field_512):
                                if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            if not owner:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not sub_4bccac27Address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor10] < stor12[arg1].field_256:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor10] -= stor12[arg1].field_256
                            if balanceOf[stor11] > !stor12[arg1].field_256:
                                revert with 0, 17
                            balanceOf[stor11] += stor12[arg1].field_256
                            emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
            else:
                if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor12[arg1].field_512):
                    mem[167] = Mask(248, 8, stor12[arg1].field_512)
                    if sha3(mem[167 len stor12[arg1].field_513 % 128]) == sha3('pending'):
                        if bool(stor12[arg1].field_512):
                            if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                revert with 0, 34
                            bool(stor12[arg1].field_512) = 0
                            uint255(stor12[arg1].field_513) = 8
                            uint64(stor12[arg1].field_704) = 7021235455869216100
                            idx = sha3(sha3(arg1, 12) + 2)
                            while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            bool(stor12[arg1].field_512) = 0
                            uint255(stor12[arg1].field_513) = 8
                            uint64(stor12[arg1].field_704) = 7021235455869216100
                            idx = sha3(sha3(arg1, 12) + 2)
                            while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if not owner:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_4bccac27Address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor10] < stor12[arg1].field_256:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor10] -= stor12[arg1].field_256
                        if balanceOf[stor11] > !stor12[arg1].field_256:
                            revert with 0, 17
                        balanceOf[stor11] += stor12[arg1].field_256
                        emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
                else:
                    if bool(stor12[arg1].field_512) != 1:
                        if sha3(mem[167 len -167]) == sha3('pending'):
                            if bool(stor12[arg1].field_512):
                                if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            if not owner:
                                revert with 64, 'ERC20: transfer from the zero address'
                            if not sub_4bccac27Address:
                                revert with 64, 'ERC20: transfer to the zero address'
                            if balanceOf[stor10] < stor12[arg1].field_256:
                                revert with 64, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor10] -= stor12[arg1].field_256
                            if balanceOf[stor11] > !stor12[arg1].field_256:
                                revert with 0, 17
                            balanceOf[stor11] += stor12[arg1].field_256
                            emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
                    else:
                        idx = 0
                        s = sha3(sha3(arg1, 12) + 2)
                        while idx < stor12[arg1].field_513 % 128:
                            mem[idx + 167] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sha3(mem[167 len stor12[arg1].field_513 % 128]) == sha3('pending'):
                            if bool(stor12[arg1].field_512):
                                if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (uint255(stor12[arg1].field_513) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                bool(stor12[arg1].field_512) = 0
                                uint255(stor12[arg1].field_513) = 8
                                uint64(stor12[arg1].field_704) = 7021235455869216100
                                idx = sha3(sha3(arg1, 12) + 2)
                                while sha3(sha3(arg1, 12) + 2) + (stor12[arg1].field_513 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            if not owner:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not sub_4bccac27Address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor10] < stor12[arg1].field_256:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor10] -= stor12[arg1].field_256
                            if balanceOf[stor11] > !stor12[arg1].field_256:
                                revert with 0, 17
                            balanceOf[stor11] += stor12[arg1].field_256
                            emit Transfer(stor12[arg1].field_256, owner, sub_4bccac27Address);
}

function Claim() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < sub_aca9608a:
        mem[0] = idx
        mem[32] = 12
        if block.timestamp < stor12[idx].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 12
        if address(stor12[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        _258 = mem[64]
        mem[mem[64] + 32] = 0x617070726f766564000000000000000000000000000000000000000000000000
        _259 = mem[64]
        mem[mem[64]] = 8
        mem[64] = mem[64] + 40
        _261 = sha3(mem[_259 + 32 len mem[_259]])
        mem[0] = idx
        mem[32] = 12
        if bool(stor12[idx].field_512):
            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                revert with 0, 34
            if not bool(stor12[idx].field_512):
                mem[_258 + 72] = Mask(248, 8, stor12[idx].field_512)
                mem[_258 + 40] = uint255(stor12[idx].field_513)
                mem[64] = _258 + uint255(stor12[idx].field_513) + 72
                if sha3(mem[_258 + 72 len uint255(stor12[idx].field_513)]) == _261:
                    if not sub_4bccac27Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor11] < stor12[idx].field_256:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor11] -= stor12[idx].field_256
                    if balanceOf[msg.sender] > !stor12[idx].field_256:
                        revert with 0, 17
                    balanceOf[msg.sender] += stor12[idx].field_256
                    mem[_258 + uint255(stor12[idx].field_513) + 72] = stor12[idx].field_256
                    emit Transfer(stor12[idx].field_256, sub_4bccac27Address, msg.sender);
                    mem[64] = _258 + uint255(stor12[idx].field_513) + 136
                    mem[_258 + uint255(stor12[idx].field_513) + 72] = 10
                    mem[_258 + uint255(stor12[idx].field_513) + 104] = 0x7375636365737366756c00000000000000000000000000000000000000000000
                    mem[32] = 12
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 12) + 2
                        bool(stor12[idx].field_512) = 0
                        uint255(stor12[idx].field_513) = 10
                        Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                        s = sha3(sha3(idx, 12) + 2)
                        while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 12) + 2
                        bool(stor12[idx].field_512) = 0
                        uint255(stor12[idx].field_513) = 10
                        Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                        s = sha3(sha3(idx, 12) + 2)
                        while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[_258 + uint255(stor12[idx].field_513) + 136] = sub_4bccac27Address
                    mem[_258 + uint255(stor12[idx].field_513) + 168] = address(stor12[idx].field_0)
                    mem[_258 + uint255(stor12[idx].field_513) + 200] = stor12[idx].field_256
                    emit 0x5ef20f13: sub_4bccac27Address, address(stor12[idx].field_0), stor12[idx].field_256
            else:
                if bool(stor12[idx].field_512) != 1:
                    mem[_258 + 40] = -_258 - 72
                    mem[64] = 0
                    if sha3(mem[_258 + 72 len -_258 - 72]) == _261:
                        if not sub_4bccac27Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        12,
                                        0,
                                        uint32('ERC20: transfer from the zero ad'),
                                        0x6472657373000000000000000000000000000000000000000000000000000000
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        12,
                                        0,
                                        uint32('ERC20: transfer to the zero addr'),
                                        0x6573730000000000000000000000000000000000000000000000000000000000
                        if balanceOf[stor11] < stor12[idx].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        0,
                                        0,
                                        uint32('ERC20: transfer amount exceeds b'),
                                        0x616c616e63650000000000000000000000000000000000000000000000000000
                        balanceOf[stor11] -= stor12[idx].field_256
                        if balanceOf[msg.sender] > !stor12[idx].field_256:
                            revert with 0, 17
                        balanceOf[msg.sender] += stor12[idx].field_256
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      stor12[idx].field_256,
                                      None,
                                      sub_4bccac27Address,
                                      msg.sender,
                        mem[32] = 12
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[64] = sub_4bccac27Address
                        mem[96] = address(stor12[idx].field_0)
                        mem[128] = stor12[idx].field_256
                        emit 0x5ef20f13: 64, address(stor12[idx].field_0), stor12[idx].field_256
                else:
                    mem[0] = sha3(idx, 12) + 2
                    s = 0
                    t = sha3(sha3(idx, 12) + 2)
                    while s < uint255(stor12[idx].field_513):
                        mem[s + _258 + 72] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    _519 = mem[64]
                    mem[mem[64]] = _258 + uint255(stor12[idx].field_513) + -mem[64] + 40
                    mem[64] = _258 + uint255(stor12[idx].field_513) + 72
                    if sha3(mem[_519 + 32 len mem[_519]]) == _261:
                        if not sub_4bccac27Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor11] < stor12[idx].field_256:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor11] -= stor12[idx].field_256
                        if balanceOf[msg.sender] > !stor12[idx].field_256:
                            revert with 0, 17
                        balanceOf[msg.sender] += stor12[idx].field_256
                        mem[_258 + uint255(stor12[idx].field_513) + 72] = stor12[idx].field_256
                        emit Transfer(stor12[idx].field_256, sub_4bccac27Address, msg.sender);
                        mem[64] = _258 + uint255(stor12[idx].field_513) + 136
                        mem[_258 + uint255(stor12[idx].field_513) + 72] = 10
                        mem[_258 + uint255(stor12[idx].field_513) + 104] = 0x7375636365737366756c00000000000000000000000000000000000000000000
                        mem[32] = 12
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[_258 + uint255(stor12[idx].field_513) + 136] = sub_4bccac27Address
                        mem[_258 + uint255(stor12[idx].field_513) + 168] = address(stor12[idx].field_0)
                        mem[_258 + uint255(stor12[idx].field_513) + 200] = stor12[idx].field_256
                        emit 0x5ef20f13: sub_4bccac27Address, address(stor12[idx].field_0), stor12[idx].field_256
        else:
            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                revert with 0, 34
            if not bool(stor12[idx].field_512):
                mem[_258 + 72] = Mask(248, 8, stor12[idx].field_512)
                mem[_258 + 40] = stor12[idx].field_513 % 128
                mem[64] = _258 + stor12[idx].field_513 % 128 + 72
                if sha3(mem[_258 + 72 len stor12[idx].field_513 % 128]) == _261:
                    if not sub_4bccac27Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor11] < stor12[idx].field_256:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor11] -= stor12[idx].field_256
                    if balanceOf[msg.sender] > !stor12[idx].field_256:
                        revert with 0, 17
                    balanceOf[msg.sender] += stor12[idx].field_256
                    mem[_258 + stor12[idx].field_513 % 128 + 72] = stor12[idx].field_256
                    emit Transfer(stor12[idx].field_256, sub_4bccac27Address, msg.sender);
                    mem[64] = _258 + stor12[idx].field_513 % 128 + 136
                    mem[_258 + stor12[idx].field_513 % 128 + 72] = 10
                    mem[_258 + stor12[idx].field_513 % 128 + 104] = 0x7375636365737366756c00000000000000000000000000000000000000000000
                    mem[32] = 12
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 12) + 2
                        bool(stor12[idx].field_512) = 0
                        uint255(stor12[idx].field_513) = 10
                        Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                        s = sha3(sha3(idx, 12) + 2)
                        while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 12) + 2
                        bool(stor12[idx].field_512) = 0
                        uint255(stor12[idx].field_513) = 10
                        Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                        s = sha3(sha3(idx, 12) + 2)
                        while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[_258 + stor12[idx].field_513 % 128 + 136] = sub_4bccac27Address
                    mem[_258 + stor12[idx].field_513 % 128 + 168] = address(stor12[idx].field_0)
                    mem[_258 + stor12[idx].field_513 % 128 + 200] = stor12[idx].field_256
                    emit 0x5ef20f13: sub_4bccac27Address, address(stor12[idx].field_0), stor12[idx].field_256
            else:
                if bool(stor12[idx].field_512) != 1:
                    mem[_258 + 40] = -_258 - 72
                    mem[64] = 0
                    if sha3(mem[_258 + 72 len -_258 - 72]) == _261:
                        if not sub_4bccac27Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        12,
                                        0,
                                        uint32('ERC20: transfer from the zero ad'),
                                        0x6472657373000000000000000000000000000000000000000000000000000000
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        12,
                                        0,
                                        uint32('ERC20: transfer to the zero addr'),
                                        0x6573730000000000000000000000000000000000000000000000000000000000
                        if balanceOf[stor11] < stor12[idx].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        0,
                                        0,
                                        uint32('ERC20: transfer amount exceeds b'),
                                        0x616c616e63650000000000000000000000000000000000000000000000000000
                        balanceOf[stor11] -= stor12[idx].field_256
                        if balanceOf[msg.sender] > !stor12[idx].field_256:
                            revert with 0, 17
                        balanceOf[msg.sender] += stor12[idx].field_256
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      stor12[idx].field_256,
                                      None,
                                      sub_4bccac27Address,
                                      msg.sender,
                        mem[32] = 12
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[64] = sub_4bccac27Address
                        mem[96] = address(stor12[idx].field_0)
                        mem[128] = stor12[idx].field_256
                        emit 0x5ef20f13: 64, address(stor12[idx].field_0), stor12[idx].field_256
                else:
                    mem[0] = sha3(idx, 12) + 2
                    s = 0
                    t = sha3(sha3(idx, 12) + 2)
                    while s < stor12[idx].field_513 % 128:
                        mem[s + _258 + 72] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    _534 = mem[64]
                    mem[mem[64]] = _258 + stor12[idx].field_513 % 128 + -mem[64] + 40
                    mem[64] = _258 + stor12[idx].field_513 % 128 + 72
                    if sha3(mem[_534 + 32 len mem[_534]]) == _261:
                        if not sub_4bccac27Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor11] < stor12[idx].field_256:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor11] -= stor12[idx].field_256
                        if balanceOf[msg.sender] > !stor12[idx].field_256:
                            revert with 0, 17
                        balanceOf[msg.sender] += stor12[idx].field_256
                        mem[_258 + stor12[idx].field_513 % 128 + 72] = stor12[idx].field_256
                        emit Transfer(stor12[idx].field_256, sub_4bccac27Address, msg.sender);
                        mem[64] = _258 + stor12[idx].field_513 % 128 + 136
                        mem[_258 + stor12[idx].field_513 % 128 + 72] = 10
                        mem[_258 + stor12[idx].field_513 % 128 + 104] = 0x7375636365737366756c00000000000000000000000000000000000000000000
                        mem[32] = 12
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (uint255(stor12[idx].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 12) + 2
                            bool(stor12[idx].field_512) = 0
                            uint255(stor12[idx].field_513) = 10
                            Mask(80, 0, stor12[idx].field_688) = 545237576266012198073708
                            s = sha3(sha3(idx, 12) + 2)
                            while sha3(sha3(idx, 12) + 2) + (stor12[idx].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[_258 + stor12[idx].field_513 % 128 + 136] = sub_4bccac27Address
                        mem[_258 + stor12[idx].field_513 % 128 + 168] = address(stor12[idx].field_0)
                        mem[_258 + stor12[idx].field_513 % 128 + 200] = stor12[idx].field_256
                        emit 0x5ef20f13: sub_4bccac27Address, address(stor12[idx].field_0), stor12[idx].field_256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'You currently don't have duted transactions . Contact info@futiracoin.com for help.'
    return bool(s)
}

function sub_5a306862(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
    idx = 0
    while idx < sub_11e68f98.length:
        mem[0] = 8
        s = 0
        while s < sub_11e68f98.length:
            mem[0] = 8
            if sub_11e68f98[s] != sub_11e68f98[idx]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            _7979 = mem[64]
            mem[mem[64] + 32] = 'pending' << 200
            _7980 = mem[64]
            mem[mem[64]] = 7
            mem[64] = mem[64] + 39
            _7982 = sha3(mem[_7980 + 32 len mem[_7980]])
            mem[0] = sub_11e68f98[idx]
            mem[32] = 12
            if bool(stor12[stor8[idx]].field_512):
                if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                    revert with 0, 34
                if not bool(stor12[stor8[idx]].field_512):
                    mem[_7979 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                    mem[_7979 + 39] = uint255(stor12[stor8[idx]].field_513)
                    mem[64] = _7979 + uint255(stor12[stor8[idx]].field_513) + 71
                    if sha3(mem[_7979 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _7982:
                        mem[0] = msg.sender
                        mem[32] = 5
                        if bool(stor5[msg.sender]) != 1:
                            revert with 0, 'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
                        s = 0
                        while s < sub_11e68f98.length:
                            mem[0] = 8
                            if sub_11e68f98[s] != sub_11e68f98[idx]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            mem[0] = sub_11e68f98[idx]
                            mem[32] = 12
                            if 300 > !stor12[stor8[idx]].field_768:
                                revert with 0, 17
                            if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                _11984 = mem[64]
                                mem[mem[64] + 32] = 'pending' << 200
                                _11990 = mem[64]
                                mem[mem[64]] = 7
                                mem[64] = mem[64] + 39
                                _11992 = sha3(mem[_11990 + 32 len mem[_11990]])
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if bool(stor12[stor8[idx]].field_512):
                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                        revert with 0, 34
                                    if not bool(stor12[stor8[idx]].field_512):
                                        mem[_11984 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                        mem[_11984 + 39] = uint255(stor12[stor8[idx]].field_513)
                                        mem[64] = _11984 + uint255(stor12[stor8[idx]].field_513) + 71
                                        if sha3(mem[_11984 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _11992:
                                            mem[64] = _11984 + uint255(stor12[stor8[idx]].field_513) + 135
                                            mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                            mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                            if bool(stor12[stor8[idx]].field_512):
                                                if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            if not owner:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not sub_4bccac27Address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            mem[32] = 0
                                            balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                            mem[0] = sub_4bccac27Address
                                            if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                revert with 0, 17
                                            balanceOf[stor11] += stor12[stor8[idx]].field_256
                                            mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                            emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) != 1:
                                            mem[_11984 + 39] = -_11984 - 71
                                            mem[64] = 0
                                            if sha3(mem[_11984 + 71 len -_11984 - 71]) == _11992:
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 64, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 64, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 64, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[64] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                            s = 0
                                            t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                            while s < uint255(stor12[stor8[idx]].field_513):
                                                mem[s + _11984 + 71] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            _15958 = mem[64]
                                            mem[mem[64]] = _11984 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                            mem[64] = _11984 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_15958 + 32 len mem[_15958]]) == _11992:
                                                mem[64] = _11984 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11984 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                else:
                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor12[stor8[idx]].field_512):
                                        mem[_11984 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                        mem[_11984 + 39] = stor12[stor8[idx]].field_513 % 128
                                        mem[64] = _11984 + stor12[stor8[idx]].field_513 % 128 + 71
                                        if sha3(mem[_11984 + 71 len stor12[stor8[idx]].field_513 % 128]) == _11992:
                                            mem[64] = _11984 + stor12[stor8[idx]].field_513 % 128 + 135
                                            mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                            mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                            if bool(stor12[stor8[idx]].field_512):
                                                if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            if not owner:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not sub_4bccac27Address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            mem[32] = 0
                                            balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                            mem[0] = sub_4bccac27Address
                                            if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                revert with 0, 17
                                            balanceOf[stor11] += stor12[stor8[idx]].field_256
                                            mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                            emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) != 1:
                                            mem[_11984 + 39] = -_11984 - 71
                                            mem[64] = 0
                                            if sha3(mem[_11984 + 71 len -_11984 - 71]) == _11992:
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 64, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 64, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 64, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[64] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                            s = 0
                                            t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                            while s < stor12[stor8[idx]].field_513 % 128:
                                                mem[s + _11984 + 71] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            _15973 = mem[64]
                                            mem[mem[64]] = _11984 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                            mem[64] = _11984 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_15973 + 32 len mem[_15973]]) == _11992:
                                                mem[64] = _11984 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11984 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor12[stor8[idx]].field_512) != 1:
                        mem[_7979 + 39] = -_7979 - 71
                        mem[64] = 0
                        if sha3(mem[_7979 + 71 len -_7979 - 71]) == _7982:
                            mem[0] = msg.sender
                            mem[32] = 5
                            if bool(stor5[msg.sender]) != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            5,
                                            0,
                                            uint32('You are not the signer of this s'),
                                            'mart contract. Contact info@futi',
                                            0x7261636f696e2e636f6d20666f722068656c702e000000000000000000000000
                            s = 0
                            while s < sub_11e68f98.length:
                                mem[0] = 8
                                if sub_11e68f98[s] != sub_11e68f98[idx]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if 300 > !stor12[stor8[idx]].field_768:
                                    revert with 0, 17
                                if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                    _11986 = mem[64]
                                    mem[mem[64] + 32] = 'pending' << 200
                                    _11994 = mem[64]
                                    mem[mem[64]] = 7
                                    mem[64] = mem[64] + 39
                                    _11996 = sha3(mem[_11994 + 32 len mem[_11994]])
                                    mem[0] = sub_11e68f98[idx]
                                    mem[32] = 12
                                    if bool(stor12[stor8[idx]].field_512):
                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_11986 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_11986 + 39] = uint255(stor12[stor8[idx]].field_513)
                                            mem[64] = _11986 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_11986 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _11996:
                                                mem[64] = _11986 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_11986 + 39] = -_11986 - 71
                                                mem[64] = 0
                                                if sha3(mem[_11986 + 71 len -_11986 - 71]) == _11996:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < uint255(stor12[stor8[idx]].field_513):
                                                    mem[s + _11986 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _15988 = mem[64]
                                                mem[mem[64]] = _11986 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                                mem[64] = _11986 + uint255(stor12[stor8[idx]].field_513) + 71
                                                if sha3(mem[_15988 + 32 len mem[_15988]]) == _11996:
                                                    mem[64] = _11986 + uint255(stor12[stor8[idx]].field_513) + 135
                                                    mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                    mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_11986 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_11986 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_11986 + 39] = stor12[stor8[idx]].field_513 % 128
                                            mem[64] = _11986 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_11986 + 71 len stor12[stor8[idx]].field_513 % 128]) == _11996:
                                                mem[64] = _11986 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_11986 + 39] = -_11986 - 71
                                                mem[64] = 0
                                                if sha3(mem[_11986 + 71 len -_11986 - 71]) == _11996:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < stor12[stor8[idx]].field_513 % 128:
                                                    mem[s + _11986 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _16003 = mem[64]
                                                mem[mem[64]] = _11986 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                                mem[64] = _11986 + stor12[stor8[idx]].field_513 % 128 + 71
                                                if sha3(mem[_16003 + 32 len mem[_16003]]) == _11996:
                                                    mem[64] = _11986 + stor12[stor8[idx]].field_513 % 128 + 135
                                                    mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                    mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_11986 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                        s = 0
                        t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                        while s < uint255(stor12[stor8[idx]].field_513):
                            mem[s + _7979 + 71] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _11968 = mem[64]
                        mem[mem[64]] = _7979 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                        mem[64] = _7979 + uint255(stor12[stor8[idx]].field_513) + 71
                        if sha3(mem[_11968 + 32 len mem[_11968]]) == _7982:
                            mem[0] = msg.sender
                            mem[32] = 5
                            if bool(stor5[msg.sender]) != 1:
                                revert with 0, 'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
                            s = 0
                            while s < sub_11e68f98.length:
                                mem[0] = 8
                                if sub_11e68f98[s] != sub_11e68f98[idx]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if 300 > !stor12[stor8[idx]].field_768:
                                    revert with 0, 17
                                if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                    _16972 = mem[64]
                                    mem[mem[64] + 32] = 'pending' << 200
                                    _17222 = mem[64]
                                    mem[mem[64]] = 7
                                    mem[64] = mem[64] + 39
                                    _17224 = sha3(mem[_17222 + 32 len mem[_17222]])
                                    mem[0] = sub_11e68f98[idx]
                                    mem[32] = 12
                                    if bool(stor12[stor8[idx]].field_512):
                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_16972 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_16972 + 39] = uint255(stor12[stor8[idx]].field_513)
                                            mem[64] = _16972 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_16972 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _17224:
                                                mem[64] = _16972 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_16972 + 39] = -_16972 - 71
                                                mem[64] = 0
                                                if sha3(mem[_16972 + 71 len -_16972 - 71]) == _17224:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < uint255(stor12[stor8[idx]].field_513):
                                                    mem[s + _16972 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _19722 = mem[64]
                                                mem[mem[64]] = _16972 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                                mem[64] = _16972 + uint255(stor12[stor8[idx]].field_513) + 71
                                                if sha3(mem[_19722 + 32 len mem[_19722]]) == _17224:
                                                    mem[64] = _16972 + uint255(stor12[stor8[idx]].field_513) + 135
                                                    mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                    mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_16972 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_16972 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_16972 + 39] = stor12[stor8[idx]].field_513 % 128
                                            mem[64] = _16972 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_16972 + 71 len stor12[stor8[idx]].field_513 % 128]) == _17224:
                                                mem[64] = _16972 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_16972 + 39] = -_16972 - 71
                                                mem[64] = 0
                                                if sha3(mem[_16972 + 71 len -_16972 - 71]) == _17224:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < stor12[stor8[idx]].field_513 % 128:
                                                    mem[s + _16972 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _19737 = mem[64]
                                                mem[mem[64]] = _16972 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                                mem[64] = _16972 + stor12[stor8[idx]].field_513 % 128 + 71
                                                if sha3(mem[_19737 + 32 len mem[_19737]]) == _17224:
                                                    mem[64] = _16972 + stor12[stor8[idx]].field_513 % 128 + 135
                                                    mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                    mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_16972 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor12[stor8[idx]].field_512):
                    mem[_7979 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                    mem[_7979 + 39] = stor12[stor8[idx]].field_513 % 128
                    mem[64] = _7979 + stor12[stor8[idx]].field_513 % 128 + 71
                    if sha3(mem[_7979 + 71 len stor12[stor8[idx]].field_513 % 128]) == _7982:
                        mem[0] = msg.sender
                        mem[32] = 5
                        if bool(stor5[msg.sender]) != 1:
                            revert with 0, 'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
                        s = 0
                        while s < sub_11e68f98.length:
                            mem[0] = 8
                            if sub_11e68f98[s] != sub_11e68f98[idx]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            mem[0] = sub_11e68f98[idx]
                            mem[32] = 12
                            if 300 > !stor12[stor8[idx]].field_768:
                                revert with 0, 17
                            if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                _11987 = mem[64]
                                mem[mem[64] + 32] = 'pending' << 200
                                _11998 = mem[64]
                                mem[mem[64]] = 7
                                mem[64] = mem[64] + 39
                                _12000 = sha3(mem[_11998 + 32 len mem[_11998]])
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if bool(stor12[stor8[idx]].field_512):
                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                        revert with 0, 34
                                    if not bool(stor12[stor8[idx]].field_512):
                                        mem[_11987 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                        mem[_11987 + 39] = uint255(stor12[stor8[idx]].field_513)
                                        mem[64] = _11987 + uint255(stor12[stor8[idx]].field_513) + 71
                                        if sha3(mem[_11987 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _12000:
                                            mem[64] = _11987 + uint255(stor12[stor8[idx]].field_513) + 135
                                            mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                            mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                            if bool(stor12[stor8[idx]].field_512):
                                                if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            if not owner:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not sub_4bccac27Address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            mem[32] = 0
                                            balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                            mem[0] = sub_4bccac27Address
                                            if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                revert with 0, 17
                                            balanceOf[stor11] += stor12[stor8[idx]].field_256
                                            mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                            emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) != 1:
                                            mem[_11987 + 39] = -_11987 - 71
                                            mem[64] = 0
                                            if sha3(mem[_11987 + 71 len -_11987 - 71]) == _12000:
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 64, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 64, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 64, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[64] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                            s = 0
                                            t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                            while s < uint255(stor12[stor8[idx]].field_513):
                                                mem[s + _11987 + 71] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            _16018 = mem[64]
                                            mem[mem[64]] = _11987 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                            mem[64] = _11987 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_16018 + 32 len mem[_16018]]) == _12000:
                                                mem[64] = _11987 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11987 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                else:
                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor12[stor8[idx]].field_512):
                                        mem[_11987 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                        mem[_11987 + 39] = stor12[stor8[idx]].field_513 % 128
                                        mem[64] = _11987 + stor12[stor8[idx]].field_513 % 128 + 71
                                        if sha3(mem[_11987 + 71 len stor12[stor8[idx]].field_513 % 128]) == _12000:
                                            mem[64] = _11987 + stor12[stor8[idx]].field_513 % 128 + 135
                                            mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                            mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                            if bool(stor12[stor8[idx]].field_512):
                                                if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                    revert with 0, 34
                                                bool(stor12[stor8[idx]].field_512) = 0
                                                uint255(stor12[stor8[idx]].field_513) = 8
                                                uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            if not owner:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not sub_4bccac27Address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            mem[32] = 0
                                            balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                            mem[0] = sub_4bccac27Address
                                            if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                revert with 0, 17
                                            balanceOf[stor11] += stor12[stor8[idx]].field_256
                                            mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                            emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) != 1:
                                            mem[_11987 + 39] = -_11987 - 71
                                            mem[64] = 0
                                            if sha3(mem[_11987 + 71 len -_11987 - 71]) == _12000:
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 64, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 64, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 64, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[64] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                            s = 0
                                            t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                            while s < stor12[stor8[idx]].field_513 % 128:
                                                mem[s + _11987 + 71] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            _16033 = mem[64]
                                            mem[mem[64]] = _11987 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                            mem[64] = _11987 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_16033 + 32 len mem[_16033]]) == _12000:
                                                mem[64] = _11987 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11987 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor12[stor8[idx]].field_512) != 1:
                        mem[_7979 + 39] = -_7979 - 71
                        mem[64] = 0
                        if sha3(mem[_7979 + 71 len -_7979 - 71]) == _7982:
                            mem[0] = msg.sender
                            mem[32] = 5
                            if bool(stor5[msg.sender]) != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            5,
                                            0,
                                            uint32('You are not the signer of this s'),
                                            'mart contract. Contact info@futi',
                                            0x7261636f696e2e636f6d20666f722068656c702e000000000000000000000000
                            s = 0
                            while s < sub_11e68f98.length:
                                mem[0] = 8
                                if sub_11e68f98[s] != sub_11e68f98[idx]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if 300 > !stor12[stor8[idx]].field_768:
                                    revert with 0, 17
                                if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                    _11989 = mem[64]
                                    mem[mem[64] + 32] = 'pending' << 200
                                    _12002 = mem[64]
                                    mem[mem[64]] = 7
                                    mem[64] = mem[64] + 39
                                    _12004 = sha3(mem[_12002 + 32 len mem[_12002]])
                                    mem[0] = sub_11e68f98[idx]
                                    mem[32] = 12
                                    if bool(stor12[stor8[idx]].field_512):
                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_11989 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_11989 + 39] = uint255(stor12[stor8[idx]].field_513)
                                            mem[64] = _11989 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_11989 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _12004:
                                                mem[64] = _11989 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_11989 + 39] = -_11989 - 71
                                                mem[64] = 0
                                                if sha3(mem[_11989 + 71 len -_11989 - 71]) == _12004:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < uint255(stor12[stor8[idx]].field_513):
                                                    mem[s + _11989 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _16048 = mem[64]
                                                mem[mem[64]] = _11989 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                                mem[64] = _11989 + uint255(stor12[stor8[idx]].field_513) + 71
                                                if sha3(mem[_16048 + 32 len mem[_16048]]) == _12004:
                                                    mem[64] = _11989 + uint255(stor12[stor8[idx]].field_513) + 135
                                                    mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                    mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_11989 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_11989 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_11989 + 39] = stor12[stor8[idx]].field_513 % 128
                                            mem[64] = _11989 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_11989 + 71 len stor12[stor8[idx]].field_513 % 128]) == _12004:
                                                mem[64] = _11989 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_11989 + 39] = -_11989 - 71
                                                mem[64] = 0
                                                if sha3(mem[_11989 + 71 len -_11989 - 71]) == _12004:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < stor12[stor8[idx]].field_513 % 128:
                                                    mem[s + _11989 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _16063 = mem[64]
                                                mem[mem[64]] = _11989 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                                mem[64] = _11989 + stor12[stor8[idx]].field_513 % 128 + 71
                                                if sha3(mem[_16063 + 32 len mem[_16063]]) == _12004:
                                                    mem[64] = _11989 + stor12[stor8[idx]].field_513 % 128 + 135
                                                    mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                    mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_11989 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                        s = 0
                        t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                        while s < stor12[stor8[idx]].field_513 % 128:
                            mem[s + _7979 + 71] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _11971 = mem[64]
                        mem[mem[64]] = _7979 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                        mem[64] = _7979 + stor12[stor8[idx]].field_513 % 128 + 71
                        if sha3(mem[_11971 + 32 len mem[_11971]]) == _7982:
                            mem[0] = msg.sender
                            mem[32] = 5
                            if bool(stor5[msg.sender]) != 1:
                                revert with 0, 'You are not the signer of this smart contract. Contact info@futiracoin.com for help.'
                            s = 0
                            while s < sub_11e68f98.length:
                                mem[0] = 8
                                if sub_11e68f98[s] != sub_11e68f98[idx]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                mem[0] = sub_11e68f98[idx]
                                mem[32] = 12
                                if 300 > !stor12[stor8[idx]].field_768:
                                    revert with 0, 17
                                if block.timestamp < stor12[stor8[idx]].field_768 + 300:
                                    _16993 = mem[64]
                                    mem[mem[64] + 32] = 'pending' << 200
                                    _17326 = mem[64]
                                    mem[mem[64]] = 7
                                    mem[64] = mem[64] + 39
                                    _17328 = sha3(mem[_17326 + 32 len mem[_17326]])
                                    mem[0] = sub_11e68f98[idx]
                                    mem[32] = 12
                                    if bool(stor12[stor8[idx]].field_512):
                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_16993 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_16993 + 39] = uint255(stor12[stor8[idx]].field_513)
                                            mem[64] = _16993 + uint255(stor12[stor8[idx]].field_513) + 71
                                            if sha3(mem[_16993 + 71 len uint255(stor12[stor8[idx]].field_513)]) == _17328:
                                                mem[64] = _16993 + uint255(stor12[stor8[idx]].field_513) + 135
                                                mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_16993 + 39] = -_16993 - 71
                                                mem[64] = 0
                                                if sha3(mem[_16993 + 71 len -_16993 - 71]) == _17328:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < uint255(stor12[stor8[idx]].field_513):
                                                    mem[s + _16993 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _19792 = mem[64]
                                                mem[mem[64]] = _16993 + uint255(stor12[stor8[idx]].field_513) + -mem[64] + 39
                                                mem[64] = _16993 + uint255(stor12[stor8[idx]].field_513) + 71
                                                if sha3(mem[_19792 + 32 len mem[_19792]]) == _17328:
                                                    mem[64] = _16993 + uint255(stor12[stor8[idx]].field_513) + 135
                                                    mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 71] = 8
                                                    mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_16993 + uint255(stor12[stor8[idx]].field_513) + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                    else:
                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor12[stor8[idx]].field_512):
                                            mem[_16993 + 71] = Mask(248, 8, stor12[stor8[idx]].field_512)
                                            mem[_16993 + 39] = stor12[stor8[idx]].field_513 % 128
                                            mem[64] = _16993 + stor12[stor8[idx]].field_513 % 128 + 71
                                            if sha3(mem[_16993 + 71 len stor12[stor8[idx]].field_513 % 128]) == _17328:
                                                mem[64] = _16993 + stor12[stor8[idx]].field_513 % 128 + 135
                                                mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                if bool(stor12[stor8[idx]].field_512):
                                                    if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                        revert with 0, 34
                                                    bool(stor12[stor8[idx]].field_512) = 0
                                                    uint255(stor12[stor8[idx]].field_513) = 8
                                                    uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                    s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                    while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                if not owner:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_4bccac27Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                mem[32] = 0
                                                balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                mem[0] = sub_4bccac27Address
                                                if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                    revert with 0, 17
                                                balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                        else:
                                            if bool(stor12[stor8[idx]].field_512) != 1:
                                                mem[_16993 + 39] = -_16993 - 71
                                                mem[64] = 0
                                                if sha3(mem[_16993 + 71 len -_16993 - 71]) == _17328:
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 64, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 64, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 64, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[64] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                            else:
                                                mem[0] = sha3(sub_11e68f98[idx], 12) + 2
                                                s = 0
                                                t = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                while s < stor12[stor8[idx]].field_513 % 128:
                                                    mem[s + _16993 + 71] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                _19807 = mem[64]
                                                mem[mem[64]] = _16993 + stor12[stor8[idx]].field_513 % 128 + -mem[64] + 39
                                                mem[64] = _16993 + stor12[stor8[idx]].field_513 % 128 + 71
                                                if sha3(mem[_19807 + 32 len mem[_19807]]) == _17328:
                                                    mem[64] = _16993 + stor12[stor8[idx]].field_513 % 128 + 135
                                                    mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 71] = 8
                                                    mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 103] = 0x617070726f766564000000000000000000000000000000000000000000000000
                                                    if bool(stor12[stor8[idx]].field_512):
                                                        if bool(stor12[stor8[idx]].field_512) == uint255(stor12[stor8[idx]].field_513) < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (uint255(stor12[stor8[idx]].field_513) + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        if bool(stor12[stor8[idx]].field_512) == stor12[stor8[idx]].field_513 % 128 < 32:
                                                            revert with 0, 34
                                                        bool(stor12[stor8[idx]].field_512) = 0
                                                        uint255(stor12[stor8[idx]].field_513) = 8
                                                        uint64(stor12[stor8[idx]].field_704) = 7021235455869216100
                                                        s = sha3(sha3(sub_11e68f98[idx], 12) + 2)
                                                        while sha3(sha3(sub_11e68f98[idx], 12) + 2) + (stor12[stor8[idx]].field_513 % 128 + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                    if not owner:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_4bccac27Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[stor10] < stor12[stor8[idx]].field_256:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    mem[32] = 0
                                                    balanceOf[stor10] -= stor12[stor8[idx]].field_256
                                                    mem[0] = sub_4bccac27Address
                                                    if balanceOf[stor11] > !stor12[stor8[idx]].field_256:
                                                        revert with 0, 17
                                                    balanceOf[stor11] += stor12[stor8[idx]].field_256
                                                    mem[_16993 + stor12[stor8[idx]].field_513 % 128 + 135] = stor12[stor8[idx]].field_256
                                                    emit Transfer(stor12[stor8[idx]].field_256, owner, sub_4bccac27Address);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
