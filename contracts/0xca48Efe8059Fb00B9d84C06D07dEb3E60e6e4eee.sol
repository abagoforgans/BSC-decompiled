contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
address rewardTokenAddress;
uint256 stor152;
mapping of uint256 stor153;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() payable {
    return totalDividendsDistributed
}

function owner() payable {
    return owner
}

function withdrawnDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawnDividendOf[address(arg1)].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != arg1
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 != arg2
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function distributeCAKEDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require totalSupply > 0
    if arg1:
        if arg1 and 0x100000000000000000000000000000000 > -1 / arg1:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if stor152 > !(arg1 << 128 / totalSupply):
            revert with 0, 17
        stor152 += arg1 << 128 / totalSupply
        emit DividendsDistributed(arg1, msg.sender);
        if totalDividendsDistributed > !arg1:
            revert with 0, 17
        totalDividendsDistributed += arg1
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

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor152 * balanceOf[address(arg1)] >= 0 and stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor152 * balanceOf[address(arg1)] < 0 and stor153[address(arg1)] < (-1 * stor152 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(arg1)] < 0:
        require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    else:
        if (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]:
            require stor153[address(arg1)] < 0
            require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] >= 0
    return (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128)
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor152 * balanceOf[address(arg1)] >= 0 and stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor152 * balanceOf[address(arg1)] < 0 and stor153[address(arg1)] < (-1 * stor152 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(arg1)] < 0:
        require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    else:
        if (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]:
            require stor153[address(arg1)] < 0
            require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] >= 0
    if Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor152 * balanceOf[address(arg1)] >= 0 and stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor152 * balanceOf[address(arg1)] < 0 and stor153[address(arg1)] < (-1 * stor152 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(arg1)] < 0:
        require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    else:
        if (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]:
            require stor153[address(arg1)] < 0
            require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] < stor152 * balanceOf[address(arg1)]
    require (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)] >= 0
    if Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawDividend() payable {
    if stor152 and balanceOf[address(msg.sender)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(msg.sender)] >= 0
    if stor152 * balanceOf[address(msg.sender)] >= 0 and stor153[address(msg.sender)] > (-1 * stor152 * balanceOf[address(msg.sender)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor152 * balanceOf[address(msg.sender)] < 0 and stor153[address(msg.sender)] < (-1 * stor152 * balanceOf[address(msg.sender)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(msg.sender)] < 0:
        require (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)] < stor152 * balanceOf[address(msg.sender)]
    else:
        if (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)] < stor152 * balanceOf[address(msg.sender)]:
            require stor153[address(msg.sender)] < 0
            require (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)] < stor152 * balanceOf[address(msg.sender)]
    require (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)] >= 0
    if Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
        revert with 0, 17
    if (Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
        if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
            revert with 0, 17
        withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128
        withdrawnDividendOf[address(msg.sender)].field_128 = 0
        emit DividendWithdrawn(((Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor152 * balanceOf[address(msg.sender)]) + stor153[address(msg.sender)]) >> 128)
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}



}
