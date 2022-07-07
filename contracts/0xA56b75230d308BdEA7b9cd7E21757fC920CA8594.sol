contract main {




// =====================  Runtime code  =====================


#
#  - setBalance(address arg1, uint256 arg2)
#  - process(uint256 arg1)
#
const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
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
uint256 numberOfTokenHolders;
uint256 lastProcessedIndex;
mapping of uint8 stor161;
mapping of uint256 lastClaimTimes;
uint256 claimWait;
uint256 minimumTokenBalanceForDividends;

function getNumberOfTokenHolders() payable {
    return numberOfTokenHolders
}

function totalSupply() payable {
    return totalSupply
}

function lastClaimTimes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTimes[arg1]
}

function lastProcessedIndex() payable {
    return lastProcessedIndex
}

function excludedFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor161[arg1])
}

function claimWait() payable {
    return claimWait
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

function minimumTokenBalanceForDividends() payable {
    return minimumTokenBalanceForDividends
}

function isExcludedFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor161[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getLastProcessedIndex() payable {
    return lastProcessedIndex
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateMinimumTokenBalanceForDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumTokenBalanceForDividends = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dividend_Tracker: No transfers allowed'
}

function withdrawDividend() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'Dividend_Tracker: withdrawDividend disabled. Use the 'claim' function on the main BABYTOKEN contract.'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dividend_Tracker: No transfers allowed'
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

function updateClaimWait(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: Cannot update claimWait to same value'
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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

function processAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
    if not (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
        return 0
    if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
        revert with 0, 17
    withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128
    withdrawnDividendOf[address(arg1)].field_128 = 0
    emit DividendWithdrawn(((Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128)
        return 0
    if not (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
        return 0
    lastClaimTimes[address(arg1)] = block.timestamp
    emit Claim(((Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
    return 1
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

function excludeFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor161[address(arg1)]
    stor161[address(arg1)] = 1
    if 0 > balanceOf[address(arg1)]:
        if 0 < balanceOf[address(arg1)]:
            revert with 0, 17
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !-balanceOf[address(arg1)]:
            revert with 0, 17
        totalSupply -= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] > !-balanceOf[address(arg1)]:
            revert with 0, 17
        balanceOf[address(arg1)] = 0
        emit Transfer(-balanceOf[address(arg1)], 0, arg1);
        if stor152 and -balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require -1 * stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] < (-1 * stor152 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor152 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if -1 * stor152 * balanceOf[address(arg1)] < 0 and stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if -1 * stor152 * balanceOf[address(arg1)] < 0:
            require stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) > stor153[address(arg1)]
        else:
            if stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) > stor153[address(arg1)]:
                require -1 * stor152 * balanceOf[address(arg1)] < 0
                require stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) > stor153[address(arg1)]
        stor153[address(arg1)] += stor152 * balanceOf[address(arg1)]
    else:
        if 0 < balanceOf[address(arg1)]:
            if balanceOf[address(arg1)] < 0:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            balanceOf[address(arg1)] = 0
            if totalSupply < balanceOf[address(arg1)]:
                revert with 0, 17
            totalSupply -= balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            if stor152 and balanceOf[address(arg1)] > -1 / stor152:
                revert with 0, 17
            require stor152 * balanceOf[address(arg1)] >= 0
            if stor152 * balanceOf[address(arg1)] > -stor153[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor153[address(arg1)] >= 0:
                revert with 0, 17
            if stor153[address(arg1)] < 0 and stor152 * balanceOf[address(arg1)] < -stor153[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor152 * balanceOf[address(arg1)] < 0:
                require stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) < stor153[address(arg1)]
            else:
                if stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) < stor153[address(arg1)]:
                    require stor152 * balanceOf[address(arg1)] < 0
                    require stor153[address(arg1)] + (stor152 * balanceOf[address(arg1)]) < stor153[address(arg1)]
            stor153[address(arg1)] += stor152 * balanceOf[address(arg1)]
    require ext_code.size(0x1f333d23ac71accb604122d91d00cb3e9ecbefe3)
    delegate 0x1f333d23ac71accb604122d91d00cb3e9ecbefe3.0x4c60db9c with:
         gas gas_remaining wei
        args 156, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExcludeFromDividends(arg1);
}

function initialize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                        else:
                            uint16(stor0.field_0) = 257
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if not uint8(stor0.field_8):
                                        uint16(stor0.field_0) = 257
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 16
        stor54.length.field_128 = 0x4449564944454e445f545241434b4552
        idx = 0
        while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 16
        stor54.length.field_128 = 0x4449564944454e445f545241434b4552
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 16
        stor55.length.field_128 = 0x4449564944454e445f545241434b4552
        idx = 0
        while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 16
        stor55.length.field_128 = 0x4449564944454e445f545241434b4552
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    if uint8(stor0.field_8):
        rewardTokenAddress = arg1
        claimWait = 3600
        minimumTokenBalanceForDividends = arg2
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        rewardTokenAddress = arg1
        uint8(stor0.field_8) = 0
        claimWait = 3600
        minimumTokenBalanceForDividends = arg2
        uint8(stor0.field_8) = 0
}

function getAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x1f333d23ac71accb604122d91d00cb3e9ecbefe3)
    delegate 0x1f333d23ac71accb604122d91d00cb3e9ecbefe3.0x17e142d1 with:
         gas gas_remaining wei
        args 156, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if lastProcessedIndex < 0:
            require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
        else:
            if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
                require lastProcessedIndex < 0
                require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require delegate.return_data[0] >= delegate.return_data[0]
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if stor152 and balanceOf[address(arg1)] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(arg1)] >= 0
        if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0],
               (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if numberOfTokenHolders < lastProcessedIndex:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
        revert with 0, 17
    if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex < 0:
        require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
    else:
        if delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]:
            require numberOfTokenHolders - lastProcessedIndex < 0
            require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
    if stor152 and balanceOf[address(arg1)] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(arg1)] >= 0
    if stor153[address(arg1)] > (-1 * stor152 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(arg1)] >= 0:
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
    if not lastClaimTimes[address(arg1)]:
        if 0 <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
                   lastClaimTimes[address(arg1)],
                   0,
                   0
        if 0 < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
               lastClaimTimes[address(arg1)],
               0,
               -block.timestamp
    if lastClaimTimes[address(arg1)] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               0
    if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
        revert with 0, 17
    return address(arg1), 
           delegate.return_data[0],
           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
           (Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
           Mask(128, 128, (stor152 * balanceOf[address(arg1)]) + stor153[address(arg1)]),
           lastClaimTimes[address(arg1)],
           lastClaimTimes[address(arg1)] + claimWait,
           lastClaimTimes[address(arg1)] + claimWait - block.timestamp
}

function getAccountAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1f333d23ac71accb604122d91d00cb3e9ecbefe3)
    delegate 0x1f333d23ac71accb604122d91d00cb3e9ecbefe3.0xdeb3d896 with:
         gas gas_remaining wei
        args 156
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= delegate.return_data[0]:
        return 0, -1, -1, 0, 0, 0, 0, 0
    require ext_code.size(0x1f333d23ac71accb604122d91d00cb3e9ecbefe3)
    delegate 0x1f333d23ac71accb604122d91d00cb3e9ecbefe3.0xd1aa9e7e with:
         gas gas_remaining wei
        args 156, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(0x1f333d23ac71accb604122d91d00cb3e9ecbefe3)
    delegate 0x1f333d23ac71accb604122d91d00cb3e9ecbefe3.0x17e142d1 with:
         gas gas_remaining wei
        args 156, address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if lastProcessedIndex < 0:
            require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
        else:
            if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
                require lastProcessedIndex < 0
                require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require delegate.return_data[0] >= delegate.return_data[0]
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
            revert with 0, 17
        require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor153[address(delegate.return_data[0])] < 0:
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
                require stor153[address(delegate.return_data[0])] < 0
                require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0],
               (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if numberOfTokenHolders < lastProcessedIndex:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
        revert with 0, 17
    if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex < 0:
        require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
    else:
        if delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]:
            require numberOfTokenHolders - lastProcessedIndex < 0
            require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
    if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
    if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
        revert with 0, 17
    if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(delegate.return_data[0])] < 0:
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
    else:
        if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
            require stor153[address(delegate.return_data[0])] < 0
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
    require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
    if Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
        revert with 0, 17
    if stor152 and balanceOf[address(delegate.return_data[0])] > -1 / stor152:
        revert with 0, 17
    require stor152 * balanceOf[address(delegate.return_data[0])] >= 0
    if stor153[address(delegate.return_data[0])] > (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor152 * balanceOf[address(delegate.return_data[0])] >= 0:
        revert with 0, 17
    if stor152 * balanceOf[address(delegate.return_data[0])] < 0 and stor153[address(delegate.return_data[0])] < (-1 * stor152 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor153[address(delegate.return_data[0])] < 0:
        require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
    else:
        if (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]:
            require stor153[address(delegate.return_data[0])] < 0
            require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] < stor152 * balanceOf[address(delegate.return_data[0])]
    require (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])] >= 0
    if not lastClaimTimes[address(delegate.return_data[0])]:
        if 0 <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   0
        if 0 < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
               lastClaimTimes[address(delegate.return_data[0])],
               0,
               -block.timestamp
    if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               0
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
        revert with 0, 17
    return address(delegate.return_data[0]), 
           delegate.return_data[0],
           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
           (Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
           Mask(128, 128, (stor152 * balanceOf[address(delegate.return_data[0])]) + stor153[address(delegate.return_data[0])]),
           lastClaimTimes[address(delegate.return_data[0])],
           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
           lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
}



}
