contract main {




// =====================  Runtime code  =====================


#
#  - setMetadata(string arg1, string arg2)
#  - sub_6d800a70(?)
#  - sub_ef2d714b(?)
#
const decimals = 18


mapping of uint256 balanceOf;
array of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of struct stor6;
address rewardTokenAddress;
address rewardAddress;
uint256 rewardAmount;
uint256 sub_d6f0c62e;
mapping of uint256 lastReward;
mapping of address ownerOf;
array of struct stor13;
address burnAddress;
uint256 fee;
uint256 sub_6794ecc8;

function ownerOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerOf[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_6794ecc8(?) payable {
    return sub_6794ecc8
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function burnAddress() payable {
    return burnAddress
}

function rewardAddress() payable {
    return rewardAddress
}

function owner() payable {
    return owner
}

function lastReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastReward[arg1]
}

function sub_d6f0c62e(?) payable {
    return sub_d6f0c62e
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function fee() payable {
    return fee
}

function rewardAmount() payable {
    return rewardAmount
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7e879c73(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6f0c62e = arg1
}

function sub_d721cc77(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6794ecc8 = arg1
}

function setRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardAmount = arg1
}

function sub_03e8c25e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardTokenAddress = address(arg1)
    rewardAddress = address(arg2)
    rewardAmount = arg3
    sub_d6f0c62e = arg4
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function tokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * uint256(stor13[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor13[address(arg1)].field_0)
    if not uint256(stor13[address(arg1)].field_0):
        mem[(32 * uint256(stor13[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(stor13[address(arg1)].field_0)) + 160] = uint256(stor13[address(arg1)].field_0)
        idx = 0
        s = (32 * uint256(stor13[address(arg1)].field_0)) + 192
        t = 128
        while idx < uint256(stor13[address(arg1)].field_0):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(stor13[address(arg1)].field_0)) + 128
           len (96 * uint256(stor13[address(arg1)].field_0)) + 64
    mem[128] = address(stor13[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor13[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor13[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor13[address(arg1)].field_0)) + 128] = 32
    mem[(32 * uint256(stor13[address(arg1)].field_0)) + 160] = uint256(stor13[address(arg1)].field_0)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(stor13[address(arg1)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(stor13[address(arg1)].field_0)) + -mem[64] + 192
}

function updateOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[address(arg1)]:
        revert with 0, 'Unknown token'
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == ownerOf[address(arg1)]:
    ownerOf[address(arg1)] = ext_call.return_data[12 len 20]
    uint256(stor13[address(ext_call.return_data[0])].field_0)++
    address(stor13[address(ext_call.return_data[0])][uint256(stor13[address(ext_call.return_data[0])].field_0)].field_0) = arg1
    if uint256(stor13[stor12[address(arg1)]].field_0):
        mem[ceil32(return_data.size) + 128] = address(stor13[stor12[address(arg1)]].field_0)
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * uint256(stor13[stor12[address(arg1)]].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor13[stor12[address(arg1)]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < uint256(stor13[stor12[address(arg1)]].field_0):
        if idx >= uint256(stor13[stor12[address(arg1)]].field_0):
            revert with 0, 50
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if uint256(stor13[stor12[address(arg1)]].field_0) > 1:
            if uint256(stor13[stor12[address(arg1)]].field_0) < 1:
                revert with 0, 17
            if uint256(stor13[stor12[address(arg1)]].field_0) - 1 >= uint256(stor13[stor12[address(arg1)]].field_0):
                revert with 0, 50
            if idx >= uint256(stor13[stor12[address(arg1)]].field_0):
                revert with 0, 50
            address(stor13[stor12[address(arg1)]][idx].field_0) = address(stor13[stor12[address(arg1)]][uint256(stor13[stor12[address(arg1)]].field_0)].field_0)
        if not uint256(stor13[stor12[address(arg1)]].field_0):
            revert with 0, 49
        address(stor13[stor12[address(arg1)]][uint256(stor13[stor12[address(arg1)]].field_0)].field_0) = 0
        uint256(stor13[stor12[address(arg1)]].field_0)--
    revert with 0, 'Address not in list'
}

function uri() payable {
    mem[99] = 6
    if bool(stor6[0].field_0):
        if bool(stor6[0].field_0) == uint255(uint256(stor6[0].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[0].field_0):
            if bool(stor6[0].field_0) == uint255(uint256(stor6[0].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor6[0].field_0)):
                if 31 >= uint255(uint256(stor6[0].field_0)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor6[0].field_8)
                else:
                    mem[128] = uint256(stor6[0].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor6[0].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor6[0][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[0].field_0) == stor6[0].field_1 % 128 < 32:
                revert with 0, 34
            if stor6[0].field_1 % 128:
                if 31 >= stor6[0].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor6[0].field_8)
                else:
                    mem[128] = uint256(stor6[0].field_0)
                    idx = 128
                    s = 0
                    while stor6[0].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor6[0][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint256(stor6[0].field_0)), data=mem[128 len ceil32(uint255(uint256(stor6[0].field_0)) * 0.5)]), 
    if bool(stor6[0].field_0) == stor6[0].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor6[0].field_0):
        if bool(stor6[0].field_0) == uint255(uint256(stor6[0].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor6[0].field_0)):
            if 31 >= uint255(uint256(stor6[0].field_0)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor6[0].field_8)
            else:
                mem[128] = uint256(stor6[0].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor6[0].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor6[0][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[0].field_0) == stor6[0].field_1 % 128 < 32:
            revert with 0, 34
        if stor6[0].field_1 % 128:
            if 31 >= stor6[0].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor6[0].field_8)
            else:
                mem[128] = uint256(stor6[0].field_0)
                idx = 128
                s = 0
                while stor6[0].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor6[0][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor6[0].field_0 % 128, data=mem[128 len ceil32(stor6[0].field_1 % 128)])
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
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
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
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
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
                    mem[idx + 32] = uint256(stor3[s].field_256)
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
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
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
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
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
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
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
                    mem[idx + 32] = uint256(stor4[s].field_256)
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
                    mem[idx + 32] = uint256(stor4[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[stor4.length.field_1 % 128 + ceil32(stor4.length.field_1 % 128) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function sub_f5a3ff43(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _111 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_111] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_111 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_111 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _111
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _109 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _110 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _109) + 32
    if not _109:
        _112 = mem[96]
        idx = 0
        while idx < _112:
            if idx >= mem[96]:
                revert with 0, 50
            _218 = mem[(32 * idx) + 128]
            _219 = mem[64]
            _222 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _222:
                mem[s + _219] = mem[s + _218 + 32]
                s = s + 32
                continue 
            mem[_222 + _219] = 6
            if ceil32(_222) <= _222:
                _330 = sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])
                if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0):
                    if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0) == uint255(uint256(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _338 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0)) * 0.5) + 32
                    mem[_338] = uint255(uint256(stor[_330].field_0)) * 0.5
                    if bool(stor[_330].field_0):
                        if bool(stor[_330].field_0) == uint255(uint256(stor[_330].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_330].field_0)):
                            if 31 >= uint255(uint256(stor[_330].field_0)) * 0.5:
                                mem[_338 + 32] = 256 * Mask(248, 0, stor[_330].field_8)
                            else:
                                mem[0] = _330
                                mem[_338 + 32] = uint256(stor[sha3(_330)].field_0)
                                s = _338 + 32
                                t = sha3(_330)
                                while _338 + (uint255(uint256(stor[_330].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_330].field_0) == stor[_330].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_330].field_1 % 128:
                            if 31 >= stor[_330].field_1 % 128:
                                mem[_338 + 32] = 256 * Mask(248, 0, stor[_330].field_8)
                            else:
                                mem[0] = _330
                                mem[_338 + 32] = uint256(stor[sha3(_330)].field_0)
                                s = _338 + 32
                                t = sha3(_330)
                                while _338 + stor[_330].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _338
                else:
                    if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0) == stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_1 % 128 < 32:
                        revert with 0, 34
                    _340 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_1 % 128) + 32
                    mem[_340] = stor[_330].field_1 % 128
                    if bool(stor[_330].field_0):
                        if bool(stor[_330].field_0) == uint255(uint256(stor[_330].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_330].field_0)):
                            if 31 >= uint255(uint256(stor[_330].field_0)) * 0.5:
                                mem[_340 + 32] = 256 * Mask(248, 0, stor[_330].field_8)
                            else:
                                mem[0] = _330
                                mem[_340 + 32] = uint256(stor[sha3(_330)].field_0)
                                s = _340 + 32
                                t = sha3(_330)
                                while _340 + (uint255(uint256(stor[_330].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_330].field_0) == stor[_330].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_330].field_1 % 128:
                            if 31 >= stor[_330].field_1 % 128:
                                mem[_340 + 32] = 256 * Mask(248, 0, stor[_330].field_8)
                            else:
                                mem[0] = _330
                                mem[_340 + 32] = uint256(stor[sha3(_330)].field_0)
                                s = _340 + 32
                                t = sha3(_330)
                                while _340 + stor[_330].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _340
            else:
                _332 = sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])
                if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0):
                    if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0) == uint255(uint256(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _339 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0)) * 0.5) + 32
                    mem[_339] = uint255(uint256(stor[_332].field_0)) * 0.5
                    if bool(stor[_332].field_0):
                        if bool(stor[_332].field_0) == uint255(uint256(stor[_332].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_332].field_0)):
                            if 31 >= uint255(uint256(stor[_332].field_0)) * 0.5:
                                mem[_339 + 32] = 256 * Mask(248, 0, stor[_332].field_8)
                            else:
                                mem[0] = _332
                                mem[_339 + 32] = uint256(stor[sha3(_332)].field_0)
                                s = _339 + 32
                                t = sha3(_332)
                                while _339 + (uint255(uint256(stor[_332].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_332].field_0) == stor[_332].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_332].field_1 % 128:
                            if 31 >= stor[_332].field_1 % 128:
                                mem[_339 + 32] = 256 * Mask(248, 0, stor[_332].field_8)
                            else:
                                mem[0] = _332
                                mem[_339 + 32] = uint256(stor[sha3(_332)].field_0)
                                s = _339 + 32
                                t = sha3(_332)
                                while _339 + stor[_332].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _339
                else:
                    if bool(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_0) == stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_1 % 128 < 32:
                        revert with 0, 34
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[sha3(mem[mem[64] len _222 + _219 + -mem[64] + 32])].field_1 % 128) + 32
                    mem[_341] = stor[_332].field_1 % 128
                    if bool(stor[_332].field_0):
                        if bool(stor[_332].field_0) == uint255(uint256(stor[_332].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_332].field_0)):
                            if 31 >= uint255(uint256(stor[_332].field_0)) * 0.5:
                                mem[_341 + 32] = 256 * Mask(248, 0, stor[_332].field_8)
                            else:
                                mem[0] = _332
                                mem[_341 + 32] = uint256(stor[sha3(_332)].field_0)
                                s = _341 + 32
                                t = sha3(_332)
                                while _341 + (uint255(uint256(stor[_332].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_332].field_0) == stor[_332].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_332].field_1 % 128:
                            if 31 >= stor[_332].field_1 % 128:
                                mem[_341 + 32] = 256 * Mask(248, 0, stor[_332].field_8)
                            else:
                                mem[0] = _332
                                mem[_341 + 32] = uint256(stor[sha3(_332)].field_0)
                                s = _341 + 32
                                t = sha3(_332)
                                while _341 + stor[_332].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _341
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _217 = mem[64]
        mem[mem[64]] = 32
        _221 = mem[_110]
        mem[mem[64] + 32] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _221) + 64
        while idx < _221:
            mem[t] = u + -_217 - 64
            _319 = mem[s]
            _323 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _323:
                mem[v + u + 32] = mem[v + _319 + 32]
                v = v + 32
                continue 
            if ceil32(_323) > _323:
                mem[_323 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_323) + u + 32
            continue 
    else:
        mem[_110 + 32] = 96
        s = _110 + 32
        idx = _109
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _220 = mem[96]
        idx = 0
        while idx < _220:
            if idx >= mem[96]:
                revert with 0, 50
            _325 = mem[(32 * idx) + 128]
            _326 = mem[64]
            _328 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _328:
                mem[s + _326] = mem[s + _325 + 32]
                s = s + 32
                continue 
            mem[_328 + _326] = 6
            if ceil32(_328) <= _328:
                _429 = sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])
                if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0):
                    if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0) == uint255(uint256(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0)) * 0.5) + 32
                    mem[_433] = uint255(uint256(stor[_429].field_0)) * 0.5
                    if bool(stor[_429].field_0):
                        if bool(stor[_429].field_0) == uint255(uint256(stor[_429].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_429].field_0)):
                            if 31 >= uint255(uint256(stor[_429].field_0)) * 0.5:
                                mem[_433 + 32] = 256 * Mask(248, 0, stor[_429].field_8)
                            else:
                                mem[0] = _429
                                mem[_433 + 32] = uint256(stor[sha3(_429)].field_0)
                                s = _433 + 32
                                t = sha3(_429)
                                while _433 + (uint255(uint256(stor[_429].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_429].field_0) == stor[_429].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_429].field_1 % 128:
                            if 31 >= stor[_429].field_1 % 128:
                                mem[_433 + 32] = 256 * Mask(248, 0, stor[_429].field_8)
                            else:
                                mem[0] = _429
                                mem[_433 + 32] = uint256(stor[sha3(_429)].field_0)
                                s = _433 + 32
                                t = sha3(_429)
                                while _433 + stor[_429].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _433
                else:
                    if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0) == stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_1 % 128 < 32:
                        revert with 0, 34
                    _435 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_1 % 128) + 32
                    mem[_435] = stor[_429].field_1 % 128
                    if bool(stor[_429].field_0):
                        if bool(stor[_429].field_0) == uint255(uint256(stor[_429].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_429].field_0)):
                            if 31 >= uint255(uint256(stor[_429].field_0)) * 0.5:
                                mem[_435 + 32] = 256 * Mask(248, 0, stor[_429].field_8)
                            else:
                                mem[0] = _429
                                mem[_435 + 32] = uint256(stor[sha3(_429)].field_0)
                                s = _435 + 32
                                t = sha3(_429)
                                while _435 + (uint255(uint256(stor[_429].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_429].field_0) == stor[_429].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_429].field_1 % 128:
                            if 31 >= stor[_429].field_1 % 128:
                                mem[_435 + 32] = 256 * Mask(248, 0, stor[_429].field_8)
                            else:
                                mem[0] = _429
                                mem[_435 + 32] = uint256(stor[sha3(_429)].field_0)
                                s = _435 + 32
                                t = sha3(_429)
                                while _435 + stor[_429].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _435
            else:
                _431 = sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])
                if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0):
                    if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0) == uint255(uint256(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _434 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0)) * 0.5) + 32
                    mem[_434] = uint255(uint256(stor[_431].field_0)) * 0.5
                    if bool(stor[_431].field_0):
                        if bool(stor[_431].field_0) == uint255(uint256(stor[_431].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_431].field_0)):
                            if 31 >= uint255(uint256(stor[_431].field_0)) * 0.5:
                                mem[_434 + 32] = 256 * Mask(248, 0, stor[_431].field_8)
                            else:
                                mem[0] = _431
                                mem[_434 + 32] = uint256(stor[sha3(_431)].field_0)
                                s = _434 + 32
                                t = sha3(_431)
                                while _434 + (uint255(uint256(stor[_431].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_431].field_0) == stor[_431].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_431].field_1 % 128:
                            if 31 >= stor[_431].field_1 % 128:
                                mem[_434 + 32] = 256 * Mask(248, 0, stor[_431].field_8)
                            else:
                                mem[0] = _431
                                mem[_434 + 32] = uint256(stor[sha3(_431)].field_0)
                                s = _434 + 32
                                t = sha3(_431)
                                while _434 + stor[_431].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _434
                else:
                    if bool(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_0) == stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_1 % 128 < 32:
                        revert with 0, 34
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[sha3(mem[mem[64] len _328 + _326 + -mem[64] + 32])].field_1 % 128) + 32
                    mem[_436] = stor[_431].field_1 % 128
                    if bool(stor[_431].field_0):
                        if bool(stor[_431].field_0) == uint255(uint256(stor[_431].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_431].field_0)):
                            if 31 >= uint255(uint256(stor[_431].field_0)) * 0.5:
                                mem[_436 + 32] = 256 * Mask(248, 0, stor[_431].field_8)
                            else:
                                mem[0] = _431
                                mem[_436 + 32] = uint256(stor[sha3(_431)].field_0)
                                s = _436 + 32
                                t = sha3(_431)
                                while _436 + (uint255(uint256(stor[_431].field_0)) * 0.5) > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_431].field_0) == stor[_431].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_431].field_1 % 128:
                            if 31 >= stor[_431].field_1 % 128:
                                mem[_436 + 32] = 256 * Mask(248, 0, stor[_431].field_8)
                            else:
                                mem[0] = _431
                                mem[_436 + 32] = uint256(stor[sha3(_431)].field_0)
                                s = _436 + 32
                                t = sha3(_431)
                                while _436 + stor[_431].field_1 % 128 > s:
                                    mem[s + 32] = allowance[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[_110]:
                        revert with 0, 50
                    mem[(32 * idx) + _110 + 32] = _436
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _324 = mem[64]
        mem[mem[64]] = 32
        _327 = mem[_110]
        mem[mem[64] + 32] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _327) + 64
        while idx < _327:
            mem[t] = u + -_324 - 64
            _416 = mem[s]
            _427 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _427:
                mem[v + u + 32] = mem[v + _416 + 32]
                v = v + 32
                continue 
            if ceil32(_427) > _427:
                mem[_427 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_427) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_f62f82d6(?) payable {
    require calldata.size - 4 >= 160
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
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if address(arg3) == this.address:
        require msg.sender == owner
    if rewardAmount <= 0:
        if fee:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not burnAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < fee:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= fee
            if balanceOf[stor14] > !fee:
                revert with 0, 17
            balanceOf[stor14] += fee
            emit Transfer(fee, msg.sender, burnAddress);
        if ceil32(arg1.length) <= arg1.length:
            create contract with 0 wei
                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
        else:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8786] = arg2.length
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818] = 0
            create contract with 0 wei
                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
    else:
        if not rewardTokenAddress:
            if fee:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not burnAddress:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < fee:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= fee
                if balanceOf[stor14] > !fee:
                    revert with 0, 17
                balanceOf[stor14] += fee
                emit Transfer(fee, msg.sender, burnAddress);
            if ceil32(arg1.length) <= arg1.length:
                create contract with 0 wei
                                code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
            else:
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8786] = arg2.length
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818] = 0
                create contract with 0 wei
                                code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
        else:
            if block.timestamp < lastReward[address(msg.sender)]:
                revert with 0, 17
            if block.timestamp - lastReward[address(msg.sender)] <= sub_d6f0c62e:
                if fee:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not burnAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < fee:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= fee
                    if balanceOf[stor14] > !fee:
                        revert with 0, 17
                    balanceOf[stor14] += fee
                    emit Transfer(fee, msg.sender, burnAddress);
                if ceil32(arg1.length) <= arg1.length:
                    create contract with 0 wei
                                    code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                else:
                    mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8786] = arg2.length
                    mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 10825 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 8818] = 0
                    create contract with 0 wei
                                    code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
            else:
                lastReward[address(msg.sender)] = block.timestamp
                require ext_code.size(rewardTokenAddress)
                if rewardAddress != this.address:
                    staticcall rewardTokenAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args rewardAddress, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < rewardAmount:
                        emit 0x6c70d3bb: rewardAmount, msg.sender
                        if fee:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not burnAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < fee:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= fee
                            if balanceOf[stor14] > !fee:
                                revert with 0, 17
                            balanceOf[stor14] += fee
                            emit Transfer(fee, msg.sender, burnAddress);
                        if ceil32(arg1.length) <= arg1.length:
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                        else:
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8786] = arg2.length
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8818 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8818] = 0
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                    else:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardAddress, msg.sender, rewardAmount
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            emit Rewarded(rewardAmount, msg.sender);
                        else:
                            emit 0x6c70d3bb: rewardAmount, msg.sender
                        if fee:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not burnAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < fee:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= fee
                            if balanceOf[stor14] > !fee:
                                revert with 0, 17
                            balanceOf[stor14] += fee
                            emit Transfer(fee, msg.sender, burnAddress);
                        if ceil32(arg1.length) <= arg1.length:
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                        else:
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8786] = arg2.length
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8818 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8818] = 0
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                else:
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < rewardAmount:
                        emit 0x6c70d3bb: rewardAmount, msg.sender
                        if fee:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not burnAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < fee:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= fee
                            if balanceOf[stor14] > !fee:
                                revert with 0, 17
                            balanceOf[stor14] += fee
                            emit Transfer(fee, msg.sender, burnAddress);
                        if ceil32(arg1.length) <= arg1.length:
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                        else:
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8786] = arg2.length
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8818 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 8818] = 0
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                    else:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, rewardAmount
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            emit Rewarded(rewardAmount, msg.sender);
                        else:
                            emit 0x6c70d3bb: rewardAmount, msg.sender
                        if fee:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not burnAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < fee:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= fee
                            if balanceOf[stor14] > !fee:
                                revert with 0, 17
                            balanceOf[stor14] += fee
                            emit Transfer(fee, msg.sender, burnAddress);
                        if ceil32(arg1.length) <= arg1.length:
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, address(arg3), address(arg4)
                        else:
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8786] = arg2.length
                            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8818 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 8818] = 0
                            create contract with 0 wei
                                            code: code.data[10794 len 8496], Array(len=address(arg5), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + arg1.length + 8818 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, address(arg3), address(arg4)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == sub_6794ecc8:
        if ext_call.return_data[0]:
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not sub_6794ecc8:
            revert with 0, 18
        if ext_call.return_data[0] < ext_call.return_data[0] / sub_6794ecc8:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] / sub_6794ecc8):
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] / sub_6794ecc8)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ownerOf[address(create.new_address)] = msg.sender
    uint256(stor13[address(msg.sender)].field_0)++
    address(stor13[address(msg.sender)][uint256(stor13[address(msg.sender)].field_0)].field_0) = address(create.new_address)
    emit Created(address(create.new_address));
    return address(create.new_address)
}

function sub_80a6dfa0(?) payable {
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
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _143 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5) + 129
            mem[ceil32(ceil32(arg1.length)) + 97] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5
            if bool(stor[_143].field_0):
                if bool(stor[_143].field_0) == uint255(uint256(stor[_143].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_143].field_0)):
                    _150 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                        return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
                    mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _150 + -mem[64] + 64
                if 31 >= uint255(uint256(stor[_143].field_0)) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                    _163 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                        return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
                    mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _163 + -mem[64] + 64
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_143].field_0)) * 0.5) + 97 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                _294 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
                mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                    return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
                mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _294 + -mem[64] + 64
            if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_143].field_1 % 128:
                _154 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
                mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                    return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
                mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _154 + -mem[64] + 64
            if 31 >= stor[_143].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                _171 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
                mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                    return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
                mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _171 + -mem[64] + 64
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            _295 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _295 + -mem[64] + 64
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 0, 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
        if bool(stor[_143].field_0):
            if bool(stor[_143].field_0) == uint255(uint256(stor[_143].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[_143].field_0)):
                _156 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
                    return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
                mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(stor[_143].field_1 % 128) + _156 + -mem[64] + 64
            if 31 >= uint255(uint256(stor[_143].field_0)) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                _173 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
                    return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
                mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(stor[_143].field_1 % 128) + _173 + -mem[64] + 64
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_143].field_0)) * 0.5) + 97 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            _296 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_143].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
            if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
                return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
            mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor[_143].field_1 % 128) + _296 + -mem[64] + 64
        if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[_143].field_1 % 128:
            _164 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_143].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
            if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
                return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
            mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor[_143].field_1 % 128) + _164 + -mem[64] + 64
        if 31 >= stor[_143].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
            _181 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_143].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
            if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
                return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
            mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor[_143].field_1 % 128) + _181 + -mem[64] + 64
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _297 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_143].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
        if ceil32(stor[_143].field_1 % 128) <= stor[_143].field_1 % 128:
            return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
        mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor[_143].field_1 % 128) + _297 + -mem[64] + 64
    _145 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5 < 32:
            revert with 0, 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5
        if bool(stor[_145].field_0):
            if bool(stor[_145].field_0) == uint255(uint256(stor[_145].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[_145].field_0)):
                _152 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
                    return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
                mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _152 + -mem[64] + 64
            if 31 >= uint255(uint256(stor[_145].field_0)) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                _167 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
                    return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
                mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _167 + -mem[64] + 64
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_145].field_0)) * 0.5) + 97 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            _298 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _298 + -mem[64] + 64
        if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[_145].field_1 % 128:
            _158 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _158 + -mem[64] + 64
        if 31 >= stor[_145].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
            _175 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _175 + -mem[64] + 64
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
        mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) <= uint255(uint256(stor[_145].field_0)) * 0.5:
            return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
        mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) + _299 + -mem[64] + 64
    if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
        revert with 0, 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
    if bool(stor[_145].field_0):
        if bool(stor[_145].field_0) == uint255(uint256(stor[_145].field_0)) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, uint256(stor[_145].field_0)):
            _160 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_145].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
            if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
                return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
            mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor[_145].field_1 % 128) + _160 + -mem[64] + 64
        if 31 >= uint255(uint256(stor[_145].field_0)) * 0.5:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
            _177 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_145].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
            if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
                return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
            mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor[_145].field_1 % 128) + _177 + -mem[64] + 64
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_145].field_0)) * 0.5) + 97 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _300 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_145].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
        if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
            return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
        mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor[_145].field_1 % 128) + _300 + -mem[64] + 64
    if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
        revert with 0, 34
    if not stor[_145].field_1 % 128:
        _168 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_145].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
        if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
            return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
        mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor[_145].field_1 % 128) + _168 + -mem[64] + 64
    if 31 >= stor[_145].field_1 % 128:
        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
        _185 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_145].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
        if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
            return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
        mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor[_145].field_1 % 128) + _185 + -mem[64] + 64
    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
    idx = ceil32(ceil32(arg1.length)) + 129
    s = 0
    while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _301 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor[_145].field_1 % 128
    mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
    if ceil32(stor[_145].field_1 % 128) <= stor[_145].field_1 % 128:
        return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
    mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(stor[_145].field_1 % 128) + _301 + -mem[64] + 64
}



}
