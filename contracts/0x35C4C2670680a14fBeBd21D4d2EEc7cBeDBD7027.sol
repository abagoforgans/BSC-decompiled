contract main {




// =====================  Runtime code  =====================


#
#  - setBalance(address arg1, uint256 arg2)
#  - process(uint256 arg1)
#  - _fallback()
#
const decimals = 18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 stor6;
mapping of struct stor7;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;
array of address stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint8 stor13;
uint256 lastProcessedIndex;
mapping of uint8 stor15;
mapping of uint256 lastClaimTimes;
address _operatorAddress;
uint256 claimWait;
uint256 minimumTokenBalanceForDividends;

function getNumberOfTokenHolders() {
    return stor10.length
}

function totalSupply() {
    return totalSupply
}

function lastClaimTimes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTimes[arg1]
}

function lastProcessedIndex() {
    return lastProcessedIndex
}

function excludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function claimWait() {
    return claimWait
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _operator() {
    return _operatorAddress
}

function totalDividendsDistributed() {
    return totalDividendsDistributed
}

function owner() {
    return owner
}

function withdrawnDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawnDividendOf[address(arg1)].field_0
}

function minimumTokenBalanceForDividends() {
    return minimumTokenBalanceForDividends
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getLastProcessedIndex() {
    return lastProcessedIndex
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _operatorAddress != msg.sender:
        revert with 0, 'not operator'
    _operatorAddress = arg1
}

function updateMinimumTokenBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _operatorAddress != msg.sender:
        revert with 0, 'not operator'
    minimumTokenBalanceForDividends = arg1
}

function withdrawDividend() {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'MNG_Dividend_Tracker: withdrawDividend disabled. Use the 'claim' function on the main MNG contract.'
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MNG_Dividend_Tracker: No transfers allowed'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MNG_Dividend_Tracker: No transfers allowed'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
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

function decreaseAllowance(address arg1, uint256 arg2) {
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

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MNG_Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MNG_Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MNG_Dividend_Tracker: Cannot update claimWait to same value'
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function distributeDividends() payable {
    require totalSupply > 0
    if msg.value:
        if not msg.value:
            if not totalSupply:
                revert with 0, 18
            if stor6 > !(0 / totalSupply):
                revert with 0, 17
            if stor6 + (0 / totalSupply) < stor6:
                revert with 0, 'SafeMath: addition overflow'
            stor6 += 0 / totalSupply
        else:
            if msg.value and 0x100000000000000000000000000000000 > -1 / msg.value:
                revert with 0, 17
            if not msg.value:
                revert with 0, 18
            if msg.value << 128 / msg.value != 0x100000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 18
            if stor6 > !(msg.value << 128 / totalSupply):
                revert with 0, 17
            if stor6 + (msg.value << 128 / totalSupply) < stor6:
                revert with 0, 'SafeMath: addition overflow'
            stor6 += msg.value << 128 / totalSupply
        emit DividendsDistributed(msg.value, msg.sender);
        if totalDividendsDistributed > !msg.value:
            revert with 0, 17
        if totalDividendsDistributed + msg.value < totalDividendsDistributed:
            revert with 0, 'SafeMath: addition overflow'
        totalDividendsDistributed += msg.value
}

function accumulativeDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        return stor7[address(arg1)].field_128
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor7[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
    return (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128)
}

function dividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor7[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor7[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function name() {
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

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor15[address(arg1)]
    stor15[address(arg1)] = 1
    if 0 > balanceOf[address(arg1)]:
        if balanceOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
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
        if not stor6:
            if stor7[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0
        else:
            if stor6 and -balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if -1 * stor6 * balanceOf[address(arg1)] / stor6 != -balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require -1 * stor6 * balanceOf[address(arg1)] >= 0
            if stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if -1 * stor6 * balanceOf[address(arg1)] < 0:
                require stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor7[address(arg1)].field_0
            else:
                if stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor7[address(arg1)].field_0:
                    require -1 * stor6 * balanceOf[address(arg1)] < 0
                    require stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor7[address(arg1)].field_0
            stor7[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
    else:
        if 0 < balanceOf[address(arg1)]:
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(arg1)] < 0:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(arg1)] = 0
            if totalSupply < balanceOf[address(arg1)]:
                revert with 0, 17
            totalSupply -= balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            if not stor6:
                if 0 > -stor7[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor7[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor7[address(arg1)].field_0 < 0 and 0 < -stor7[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_0
            else:
                if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor6 * balanceOf[address(arg1)] >= 0
                if stor6 * balanceOf[address(arg1)] > -stor7[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor7[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor7[address(arg1)].field_0 < 0 and stor6 * balanceOf[address(arg1)] < -stor7[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor6 * balanceOf[address(arg1)] < 0:
                    require stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor7[address(arg1)].field_0
                else:
                    if stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor7[address(arg1)].field_0:
                        require stor6 * balanceOf[address(arg1)] < 0
                        require stor7[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor7[address(arg1)].field_0
                stor7[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
    if stor13[address(arg1)]:
        stor13[address(arg1)] = 0
        stor11[address(arg1)] = 0
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        stor12[stor10[stor10.length]] = stor12[address(arg1)]
        stor12[arg1] = 0
        if stor12[address(arg1)] >= stor10.length:
            revert with 0, 50
        stor10[stor12[address(arg1)]] = stor10[stor10.length]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length] = 0
        stor10.length--
    emit ExcludeFromDividends(arg1);
}

function processAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
            if withdrawnDividendOf[address(arg1)].field_0 > !(stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                revert with 0, 17
            if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = stor7[address(arg1)].field_128
            emit DividendWithdrawn((stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
            call arg1 with:
               value stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 wei
                 gas 3000 wei
            if ext_call.success:
                if not stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                    return 0
                lastClaimTimes[address(arg1)] = block.timestamp
                emit Claim((stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
                return 1
            if stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if withdrawnDividendOf[address(arg1)].field_0 < stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor7[address(arg1)].field_128
    else:
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                revert with 0, 17
            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128
            withdrawnDividendOf[address(arg1)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
            call arg1 with:
               value (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 wei
                 gas 3000 wei
            if ext_call.success:
                if not (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                    return 0
                lastClaimTimes[address(arg1)] = block.timestamp
                emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
                return 1
            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128)
    return 0
}

function getAccountAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor10.length:
        return 0, -1, -1, 0, 0, 0, 0, 0
    if not stor13[stor10[arg1]]:
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if withdrawnDividendOf[stor10[arg1]].field_0 > stor7[stor10[arg1]].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[stor10[arg1]].field_128 < withdrawnDividendOf[stor10[arg1]].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[stor10[arg1]].field_0 >= 0
                if not lastClaimTimes[stor10[arg1]]:
                    if 0 <= block.timestamp:
                        return stor10[arg1], 
                               -1,
                               -1,
                               stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                               stor7[stor10[arg1]].field_0,
                               lastClaimTimes[stor10[arg1]],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return stor10[arg1], 
                           -1,
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           -block.timestamp
                if lastClaimTimes[stor10[arg1]] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                    return stor10[arg1], 
                           -1,
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           lastClaimTimes[stor10[arg1]] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       -1,
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
            if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[stor10[arg1]] >= 0
            if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[stor10[arg1]].field_0 < 0:
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            else:
                if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                    require stor7[stor10[arg1]].field_0 < 0
                    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           -1,
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       -1,
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       -1,
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   -1,
                   -1,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if withdrawnDividendOf[stor10[arg1]].field_0 > Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128 < withdrawnDividendOf[stor10[arg1]].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           -1,
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               -1,
               -1,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if stor12[stor10[arg1]] < 0:
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if withdrawnDividendOf[stor10[arg1]].field_0 > stor7[stor10[arg1]].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[stor10[arg1]].field_128 < withdrawnDividendOf[stor10[arg1]].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[stor10[arg1]].field_0 >= 0
                if not lastClaimTimes[stor10[arg1]]:
                    if 0 <= block.timestamp:
                        return stor10[arg1], 
                               stor12[stor10[arg1]],
                               -1,
                               stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                               stor7[stor10[arg1]].field_0,
                               lastClaimTimes[stor10[arg1]],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           -block.timestamp
                if lastClaimTimes[stor10[arg1]] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           lastClaimTimes[stor10[arg1]] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
            if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[stor10[arg1]] >= 0
            if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[stor10[arg1]].field_0 < 0:
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            else:
                if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                    require stor7[stor10[arg1]].field_0 < 0
                    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           -1,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   -1,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if withdrawnDividendOf[stor10[arg1]].field_0 > Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128 < withdrawnDividendOf[stor10[arg1]].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               -1,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if stor12[stor10[arg1]] > lastProcessedIndex:
        if stor12[stor10[arg1]] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and stor12[stor10[arg1]] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if lastProcessedIndex < 0:
            require stor12[stor10[arg1]] - lastProcessedIndex > stor12[stor10[arg1]]
        else:
            if stor12[stor10[arg1]] - lastProcessedIndex > stor12[stor10[arg1]]:
                require lastProcessedIndex < 0
                require stor12[stor10[arg1]] - lastProcessedIndex > stor12[stor10[arg1]]
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if withdrawnDividendOf[stor10[arg1]].field_0 > stor7[stor10[arg1]].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[stor10[arg1]].field_128 < withdrawnDividendOf[stor10[arg1]].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[stor10[arg1]].field_0 >= 0
                if not lastClaimTimes[stor10[arg1]]:
                    if 0 <= block.timestamp:
                        return stor10[arg1], 
                               stor12[stor10[arg1]],
                               stor12[stor10[arg1]] - lastProcessedIndex,
                               stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                               stor7[stor10[arg1]].field_0,
                               lastClaimTimes[stor10[arg1]],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]] - lastProcessedIndex,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           -block.timestamp
                if lastClaimTimes[stor10[arg1]] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]] - lastProcessedIndex,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           lastClaimTimes[stor10[arg1]] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
            if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[stor10[arg1]] >= 0
            if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[stor10[arg1]].field_0 < 0:
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            else:
                if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                    require stor7[stor10[arg1]].field_0 < 0
                    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]] - lastProcessedIndex,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] - lastProcessedIndex,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if withdrawnDividendOf[stor10[arg1]].field_0 > Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128 < withdrawnDividendOf[stor10[arg1]].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]] - lastProcessedIndex,
                           (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if lastProcessedIndex >= stor10.length:
        if 0 > -stor12[stor10[arg1]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor12[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor12[stor10[arg1]] < 0 and 0 < -stor12[stor10[arg1]] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require stor12[stor10[arg1]] >= stor12[stor10[arg1]]
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if withdrawnDividendOf[stor10[arg1]].field_0 > stor7[stor10[arg1]].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[stor10[arg1]].field_128 < withdrawnDividendOf[stor10[arg1]].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[stor10[arg1]].field_0 >= 0
                if not lastClaimTimes[stor10[arg1]]:
                    if 0 <= block.timestamp:
                        return stor10[arg1], 
                               stor12[stor10[arg1]],
                               stor12[stor10[arg1]],
                               stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                               stor7[stor10[arg1]].field_0,
                               lastClaimTimes[stor10[arg1]],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]],
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           -block.timestamp
                if lastClaimTimes[stor10[arg1]] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]],
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           lastClaimTimes[stor10[arg1]] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
            if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[stor10[arg1]] >= 0
            if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[stor10[arg1]].field_0 < 0:
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            else:
                if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                    require stor7[stor10[arg1]].field_0 < 0
                    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]],
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]],
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if withdrawnDividendOf[stor10[arg1]].field_0 > Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128 < withdrawnDividendOf[stor10[arg1]].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]],
                           (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]],
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]],
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]],
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]],
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]],
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if lastProcessedIndex > stor10.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor10.length < lastProcessedIndex:
        revert with 0, 17
    if stor10.length - lastProcessedIndex > -stor12[stor10[arg1]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor12[stor10[arg1]] >= 0:
        revert with 0, 17
    if stor12[stor10[arg1]] < 0 and stor10.length - lastProcessedIndex < -stor12[stor10[arg1]] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor10.length - lastProcessedIndex < 0:
        require stor12[stor10[arg1]] + stor10.length - lastProcessedIndex < stor12[stor10[arg1]]
    else:
        if stor12[stor10[arg1]] + stor10.length - lastProcessedIndex < stor12[stor10[arg1]]:
            require stor10.length - lastProcessedIndex < 0
            require stor12[stor10[arg1]] + stor10.length - lastProcessedIndex < stor12[stor10[arg1]]
    if not stor6:
        if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[stor10[arg1]].field_0 >= 0
        if withdrawnDividendOf[stor10[arg1]].field_0 > stor7[stor10[arg1]].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7[stor10[arg1]].field_128 < withdrawnDividendOf[stor10[arg1]].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[stor10[arg1]].field_0 >= 0
            if not lastClaimTimes[stor10[arg1]]:
                if 0 <= block.timestamp:
                    return stor10[arg1], 
                           stor12[stor10[arg1]],
                           stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                           stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                           stor7[stor10[arg1]].field_0,
                           lastClaimTimes[stor10[arg1]],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       -block.timestamp
            if lastClaimTimes[stor10[arg1]] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       lastClaimTimes[stor10[arg1]] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
        if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[stor10[arg1]] >= 0
        if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[stor10[arg1]].field_0 < 0:
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        else:
            if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
                require stor7[stor10[arg1]].field_0 < 0
                require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                       stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                       Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
               stor7[stor10[arg1]].field_128 - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[stor10[arg1]] >= 0
    if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[stor10[arg1]].field_0 < 0:
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
    else:
        if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
            require stor7[stor10[arg1]].field_0 < 0
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
    if withdrawnDividendOf[stor10[arg1]].field_0 > Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128 < withdrawnDividendOf[stor10[arg1]].field_0:
        revert with 0, 17
    if not stor6:
        if stor7[stor10[arg1]].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[stor10[arg1]].field_0 >= 0
        if not lastClaimTimes[stor10[arg1]]:
            if 0 <= block.timestamp:
                return stor10[arg1], 
                       stor12[stor10[arg1]],
                       stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                       stor7[stor10[arg1]].field_0,
                       lastClaimTimes[stor10[arg1]],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   0,
                   -block.timestamp
        if lastClaimTimes[stor10[arg1]] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   stor7[stor10[arg1]].field_0,
                   lastClaimTimes[stor10[arg1]],
                   lastClaimTimes[stor10[arg1]] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               stor7[stor10[arg1]].field_0,
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
    if stor6 and balanceOf[stor10[arg1]] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[stor10[arg1]] / stor6 != balanceOf[stor10[arg1]]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[stor10[arg1]] >= 0
    if stor7[stor10[arg1]].field_0 > (-1 * stor6 * balanceOf[stor10[arg1]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[stor10[arg1]] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[stor10[arg1]] < 0 and stor7[stor10[arg1]].field_0 < (-1 * stor6 * balanceOf[stor10[arg1]]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[stor10[arg1]].field_0 < 0:
        require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
    else:
        if (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]:
            require stor7[stor10[arg1]].field_0 < 0
            require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 < stor6 * balanceOf[stor10[arg1]]
    require (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0 >= 0
    if not lastClaimTimes[stor10[arg1]]:
        if 0 <= block.timestamp:
            return stor10[arg1], 
                   stor12[stor10[arg1]],
                   stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
                   Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
                   lastClaimTimes[stor10[arg1]],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < block.timestamp:
            revert with 0, 17
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               0,
               -block.timestamp
    if lastClaimTimes[stor10[arg1]] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[stor10[arg1]] + claimWait < lastClaimTimes[stor10[arg1]]:
        revert with 0, 'SafeMath: addition overflow'
    if lastClaimTimes[stor10[arg1]] + claimWait <= block.timestamp:
        return stor10[arg1], 
               stor12[stor10[arg1]],
               stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
               Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
               lastClaimTimes[stor10[arg1]],
               lastClaimTimes[stor10[arg1]] + claimWait,
               0
    if block.timestamp > lastClaimTimes[stor10[arg1]] + claimWait:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lastClaimTimes[stor10[arg1]] + claimWait < block.timestamp:
        revert with 0, 17
    return stor10[arg1], 
           stor12[stor10[arg1]],
           stor12[stor10[arg1]] + stor10.length - lastProcessedIndex,
           (Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0) >> 128) - withdrawnDividendOf[stor10[arg1]].field_0,
           Mask(128, 128, (stor6 * balanceOf[stor10[arg1]]) + stor7[stor10[arg1]].field_0),
           lastClaimTimes[stor10[arg1]],
           lastClaimTimes[stor10[arg1]] + claimWait,
           lastClaimTimes[stor10[arg1]] + claimWait - block.timestamp
}

function getAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(arg1)]:
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               -1,
                               -1,
                               stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor7[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           -1,
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           -1,
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       -1,
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor7[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           -1,
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       -1,
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       -1,
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   -1,
                   -1,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           -1,
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       -1,
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   -1,
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               -1,
               -1,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor12[address(arg1)] < 0:
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               stor12[address(arg1)],
                               -1,
                               stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor7[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           stor12[address(arg1)],
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor7[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           -1,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   -1,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               -1,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor12[address(arg1)] > lastProcessedIndex:
        if stor12[address(arg1)] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and stor12[address(arg1)] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if lastProcessedIndex < 0:
            require stor12[address(arg1)] - lastProcessedIndex > stor12[address(arg1)]
        else:
            if stor12[address(arg1)] - lastProcessedIndex > stor12[address(arg1)]:
                require lastProcessedIndex < 0
                require stor12[address(arg1)] - lastProcessedIndex > stor12[address(arg1)]
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               stor12[address(arg1)],
                               stor12[address(arg1)] - lastProcessedIndex,
                               stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor7[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)] - lastProcessedIndex,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)] - lastProcessedIndex,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor7[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)] - lastProcessedIndex,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] - lastProcessedIndex,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)] - lastProcessedIndex,
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if lastProcessedIndex >= stor10.length:
        if 0 > -stor12[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor12[address(arg1)] >= 0:
            revert with 0, 17
        if stor12[address(arg1)] < 0 and 0 < -stor12[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require stor12[address(arg1)] >= stor12[address(arg1)]
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor7[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               stor12[address(arg1)],
                               stor12[address(arg1)],
                               stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor7[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)],
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)],
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor7[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor7[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)],
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)],
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)],
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)],
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)],
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)],
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)],
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if lastProcessedIndex > stor10.length:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor10.length < lastProcessedIndex:
        revert with 0, 17
    if stor10.length - lastProcessedIndex > -stor12[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor12[address(arg1)] >= 0:
        revert with 0, 17
    if stor12[address(arg1)] < 0 and stor10.length - lastProcessedIndex < -stor12[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor10.length - lastProcessedIndex < 0:
        require stor12[address(arg1)] + stor10.length - lastProcessedIndex < stor12[address(arg1)]
    else:
        if stor12[address(arg1)] + stor10.length - lastProcessedIndex < stor12[address(arg1)]:
            require stor10.length - lastProcessedIndex < 0
            require stor12[address(arg1)] + stor10.length - lastProcessedIndex < stor12[address(arg1)]
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor7[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor7[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           stor12[address(arg1)],
                           stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                           stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor7[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor7[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor7[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                       stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)] + stor10.length - lastProcessedIndex,
               stor7[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor7[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    if not stor6:
        if stor7[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor7[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       stor12[address(arg1)],
                       stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor7[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor7[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               stor7[address(arg1)].field_0,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor7[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor7[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor7[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor7[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0 >= 0
    if not lastClaimTimes[address(arg1)]:
        if 0 <= block.timestamp:
            return address(arg1), 
                   stor12[address(arg1)],
                   stor12[address(arg1)] + stor10.length - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               0,
               -block.timestamp
    if lastClaimTimes[address(arg1)] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
        return address(arg1), 
               stor12[address(arg1)],
               stor12[address(arg1)] + stor10.length - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               0
    if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
        revert with 0, 17
    return address(arg1), 
           stor12[address(arg1)],
           stor12[address(arg1)] + stor10.length - lastProcessedIndex,
           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor7[address(arg1)].field_0),
           lastClaimTimes[address(arg1)],
           lastClaimTimes[address(arg1)] + claimWait,
           lastClaimTimes[address(arg1)] + claimWait - block.timestamp
}



}
