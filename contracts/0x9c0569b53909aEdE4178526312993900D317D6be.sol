contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address sub_11f1388eAddress;
uint256 stor7;
mapping of struct stor8;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;
uint256 numberOfTokenHolders;
uint256 lastProcessedIndex;
mapping of uint8 stor16;
mapping of uint256 lastClaimTimes;
uint256 claimWait;
uint256 minimumTokenBalanceForDividends;
address adminAddress;

function name() payable {
    return name[0 len name.length]
}

function getNumberOfTokenHolders() payable {
    return numberOfTokenHolders
}

function sub_11f1388e(?) payable {
    return sub_11f1388eAddress
}

function totalSupply() payable {
    return totalSupply
}

function lastClaimTimes(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimTimes[arg1]
}

function lastProcessedIndex() payable {
    return lastProcessedIndex
}

function decimals() payable {
    return decimals
}

function excludedFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function claimWait() payable {
    return claimWait
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() payable {
    return totalDividendsDistributed
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function withdrawnDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawnDividendOf[address(arg1)].field_0
}

function minimumTokenBalanceForDividends() payable {
    return minimumTokenBalanceForDividends
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getLastProcessedIndex() payable {
    return lastProcessedIndex
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                47,
                0x734655434b424142595f4469766964656e645f547261636b65723a204e6f207472616e736665727320616c6c6f7765,
                mem[211 len 17]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                47,
                0x734655434b424142595f4469766964656e645f547261636b65723a204e6f207472616e736665727320616c6c6f7765,
                mem[211 len 17]
}

function withdrawDividend() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                109,
                0x644655434b424142595f4469766964656e645f547261636b65723a2077697468647261774469766964656e642064697361626c65642e20557365207468652027636c61696d272066756e6374696f6e206f6e20746865206d61696e204655434b4241425920636f6e7472616374,
                mem[273 len 19]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function distributeUSDCDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require totalSupply > 0
    if arg1:
        if not arg1:
            require totalSupply
            if (0 / totalSupply) + stor7 < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += 0 / totalSupply
        else:
            if arg1 << 128 / arg1 != 0x100000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require totalSupply
            if (arg1 << 128 / totalSupply) + stor7 < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += arg1 << 128 / totalSupply
        emit DividendsDistributed(arg1, msg.sender);
        if arg1 + totalDividendsDistributed < totalDividendsDistributed:
            revert with 0, 'SafeMath: addition overflow'
        totalDividendsDistributed += arg1
}

function updateClaimWait(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    78,
                    0x654655434b424142595f4469766964656e645f547261636b65723a20636c61696d57616974206d757374206265207570646174656420746f206265747765656e203120616e6420323420686f7572,
                    mem[242 len 18]
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    78,
                    0x654655434b424142595f4469766964656e645f547261636b65723a20636c61696d57616974206d757374206265207570646174656420746f206265747765656e203120616e6420323420686f7572,
                    mem[242 len 18]
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x734655434b424142595f4469766964656e645f547261636b65723a2043616e6e6f742075706461746520636c61696d5761697420746f2073616d652076616c75
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        return stor8[address(arg1)].field_128
    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(arg1)] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(arg1)].field_0 < 0:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
            if stor8[address(arg1)].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    return (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(arg1)] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(arg1)].field_0 < 0:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
            if stor8[address(arg1)].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(arg1)] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(arg1)].field_0 < 0:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
            if stor8[address(arg1)].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function sub_51c9011d(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only Admin'
    require not stor16[address(arg1)]
    stor16[address(arg1)] = 1
    if 0 > balanceOf[address(arg1)]:
        if balanceOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if -balanceOf[address(arg1)] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply -= balanceOf[address(arg1)]
        if 0 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = 0
        emit Transfer(-balanceOf[address(arg1)], 0, arg1);
        if not stor7:
            if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0:
                revert with 0, 'sub  is not success'
        else:
            if -1 * balanceOf[address(arg1)] * stor7 / stor7 != -balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if -1 * balanceOf[address(arg1)] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) > stor8[address(arg1)].field_0:
                if -1 * balanceOf[address(arg1)] * stor7 >= 0:
                    revert with 0, 'sub  is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) <= stor8[address(arg1)].field_0:
                    revert with 0, 'sub  is not success'
            stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
    else:
        if 0 < balanceOf[address(arg1)]:
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] = 0
            if balanceOf[address(arg1)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            if not stor7:
                if stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                    revert with 0, 'add is not success'
            else:
                if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg1)] * stor7 < 0:
                    revert with 0, 'toInt256Safe is not success'
                if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                    if balanceOf[address(arg1)] * stor7 >= 0:
                        revert with 0, 'add is not success'
                    if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 >= stor8[address(arg1)].field_0:
                        revert with 0, 'add is not success'
                stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x4c60db9c with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExcludeFromDividends(arg1);
}

function excludeFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require not stor16[address(arg1)]
    stor16[address(arg1)] = 1
    if 0 > balanceOf[address(arg1)]:
        if balanceOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if -balanceOf[address(arg1)] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply -= balanceOf[address(arg1)]
        if 0 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = 0
        emit Transfer(-balanceOf[address(arg1)], 0, arg1);
        if not stor7:
            if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0:
                revert with 0, 'sub  is not success'
        else:
            if -1 * balanceOf[address(arg1)] * stor7 / stor7 != -balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if -1 * balanceOf[address(arg1)] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) > stor8[address(arg1)].field_0:
                if -1 * balanceOf[address(arg1)] * stor7 >= 0:
                    revert with 0, 'sub  is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) <= stor8[address(arg1)].field_0:
                    revert with 0, 'sub  is not success'
            stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
    else:
        if 0 < balanceOf[address(arg1)]:
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] = 0
            if balanceOf[address(arg1)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            if not stor7:
                if stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                    revert with 0, 'add is not success'
            else:
                if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if balanceOf[address(arg1)] * stor7 < 0:
                    revert with 0, 'toInt256Safe is not success'
                if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                    if balanceOf[address(arg1)] * stor7 >= 0:
                        revert with 0, 'add is not success'
                    if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 >= stor8[address(arg1)].field_0:
                        revert with 0, 'add is not success'
                stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x4c60db9c with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExcludeFromDividends(arg1);
}

function processAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
            return 0
        if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
        emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
        require ext_code.size(sub_11f1388eAddress)
        call sub_11f1388eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
            return 0
        if not stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
            return 0
        lastClaimTimes[address(arg1)] = block.timestamp
        emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
    else:
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
            return 0
        if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
        withdrawnDividendOf[address(arg1)].field_128 = 0
        emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
        require ext_code.size(sub_11f1388eAddress)
        call sub_11f1388eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
            return 0
        if not (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
            return 0
        lastClaimTimes[address(arg1)] = block.timestamp
        emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
    return 1
}

function setBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor16[address(arg1)]:
        if arg2 < minimumTokenBalanceForDividends:
            if 0 > balanceOf[address(arg1)]:
                if balanceOf[address(arg1)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if -balanceOf[address(arg1)] + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply -= balanceOf[address(arg1)]
                if 0 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = 0
                emit Transfer(-balanceOf[address(arg1)], 0, arg1);
                if not stor7:
                    if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0:
                        revert with 0, 'sub  is not success'
                else:
                    if -1 * balanceOf[address(arg1)] * stor7 / stor7 != -balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if -1 * balanceOf[address(arg1)] * stor7 < 0:
                        revert with 0, 'toInt256Safe is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) > stor8[address(arg1)].field_0:
                        if -1 * balanceOf[address(arg1)] * stor7 >= 0:
                            revert with 0, 'sub  is not success'
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) <= stor8[address(arg1)].field_0:
                            revert with 0, 'sub  is not success'
                    stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
                require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x4c60db9c with:
                     gas gas_remaining wei
                    args 11, arg1
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    revert with 0, 'eOwnable: caller is not the owne'
                if not stor7:
                    if stor8[address(arg1)].field_0 < 0:
                        revert with 0, 'toUint256Safe is not success'
                    if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                        if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                        emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(sub_11f1388eAddress)
                        call sub_11f1388eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                        else:
                            if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                else:
                    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if balanceOf[address(arg1)] * stor7 < 0:
                        revert with 0, 'toInt256Safe is not success'
                    if stor8[address(arg1)].field_0 < 0:
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                            revert with 0, 'add is not success'
                    else:
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                            if stor8[address(arg1)].field_0 >= 0:
                                revert with 0, 'add is not success'
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                        revert with 0, 'toUint256Safe is not success'
                    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                        if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                        withdrawnDividendOf[address(arg1)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(sub_11f1388eAddress)
                        call sub_11f1388eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                        else:
                            if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
            else:
                if 0 >= balanceOf[address(arg1)]:
                    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x4c60db9c with:
                         gas gas_remaining wei
                        args 11, arg1
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor7:
                        if stor8[address(arg1)].field_0 < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                            emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                            else:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                    else:
                        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if balanceOf[address(arg1)] * stor7 < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if stor8[address(arg1)].field_0 < 0:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                        else:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                                if stor8[address(arg1)].field_0 >= 0:
                                    revert with 0, 'add is not success'
                                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                    revert with 0, 'add is not success'
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                            else:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                else:
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(arg1)] = 0
                    if balanceOf[address(arg1)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(arg1)]
                    emit Transfer(balanceOf[address(arg1)], arg1, 0);
                    if not stor7:
                        if stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                            revert with 0, 'add is not success'
                    else:
                        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if balanceOf[address(arg1)] * stor7 < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                            if balanceOf[address(arg1)] * stor7 >= 0:
                                revert with 0, 'add is not success'
                            if (balanceOf[address(arg1)] * stor7) + stor8[address(arg1)].field_0 >= stor8[address(arg1)].field_0:
                                revert with 0, 'add is not success'
                        stor8[address(arg1)].field_0 += balanceOf[address(arg1)] * stor7
                    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x4c60db9c with:
                         gas gas_remaining wei
                        args 11, arg1
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor7:
                        if stor8[address(arg1)].field_0 < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                            emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                            else:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                    else:
                        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if balanceOf[address(arg1)] * stor7 < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if stor8[address(arg1)].field_0 < 0:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                        else:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                                if stor8[address(arg1)].field_0 >= 0:
                                    revert with 0, 'add is not success'
                                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                    revert with 0, 'add is not success'
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                            else:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
        else:
            if arg2 > balanceOf[address(arg1)]:
                if balanceOf[address(arg1)] > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if arg2 - balanceOf[address(arg1)] + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = arg2 - balanceOf[address(arg1)] + totalSupply
                if arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2
                emit Transfer((arg2 - balanceOf[address(arg1)]), 0, arg1);
                if not stor7:
                    if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0:
                        revert with 0, 'sub  is not success'
                else:
                    if (arg2 * stor7) - (balanceOf[address(arg1)] * stor7) / stor7 != arg2 - balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (arg2 * stor7) - (balanceOf[address(arg1)] * stor7) < 0:
                        revert with 0, 'toInt256Safe is not success'
                    if stor8[address(arg1)].field_0 - (arg2 * stor7) + (balanceOf[address(arg1)] * stor7) > stor8[address(arg1)].field_0:
                        if (arg2 * stor7) - (balanceOf[address(arg1)] * stor7) >= 0:
                            revert with 0, 'sub  is not success'
                        if stor8[address(arg1)].field_0 - (arg2 * stor7) + (balanceOf[address(arg1)] * stor7) <= stor8[address(arg1)].field_0:
                            revert with 0, 'sub  is not success'
                    stor8[address(arg1)].field_0 = stor8[address(arg1)].field_0 - (arg2 * stor7) + (balanceOf[address(arg1)] * stor7)
                require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0xbc2b405c with:
                     gas gas_remaining wei
                    args 11, address(arg1), arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    revert with 0, 'eOwnable: caller is not the owne'
                if not stor7:
                    if stor8[address(arg1)].field_0 < 0:
                        revert with 0, 'toUint256Safe is not success'
                    if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                        if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                        emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(sub_11f1388eAddress)
                        call sub_11f1388eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                        else:
                            if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                else:
                    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if balanceOf[address(arg1)] * stor7 < 0:
                        revert with 0, 'toInt256Safe is not success'
                    if stor8[address(arg1)].field_0 < 0:
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                            revert with 0, 'add is not success'
                    else:
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                            if stor8[address(arg1)].field_0 >= 0:
                                revert with 0, 'add is not success'
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                        revert with 0, 'toUint256Safe is not success'
                    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                        if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                        withdrawnDividendOf[address(arg1)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(sub_11f1388eAddress)
                        call sub_11f1388eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                        else:
                            if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
            else:
                if arg2 >= balanceOf[address(arg1)]:
                    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0xbc2b405c with:
                         gas gas_remaining wei
                        args 11, address(arg1), arg2
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor7:
                        if stor8[address(arg1)].field_0 < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                            emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                            else:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                    else:
                        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if balanceOf[address(arg1)] * stor7 < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if stor8[address(arg1)].field_0 < 0:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                        else:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                                if stor8[address(arg1)].field_0 >= 0:
                                    revert with 0, 'add is not success'
                                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                    revert with 0, 'add is not success'
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                            else:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                else:
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(arg1)] = arg2
                    if balanceOf[address(arg1)] - arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
                    emit Transfer((balanceOf[address(arg1)] - arg2), arg1, 0);
                    if not stor7:
                        if stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                            revert with 0, 'add is not success'
                    else:
                        if (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) / stor7 != balanceOf[address(arg1)] - arg2:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) + stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0:
                            if (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) >= 0:
                                revert with 0, 'add is not success'
                            if (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) + stor8[address(arg1)].field_0 >= stor8[address(arg1)].field_0:
                                revert with 0, 'add is not success'
                        stor8[address(arg1)].field_0 = (balanceOf[address(arg1)] * stor7) - (arg2 * stor7) + stor8[address(arg1)].field_0
                    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
                    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0xbc2b405c with:
                         gas gas_remaining wei
                        args 11, address(arg1), arg2
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor7:
                        if stor8[address(arg1)].field_0 < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
                            emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor8[address(arg1)].field_128
                            else:
                                if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                    else:
                        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if balanceOf[address(arg1)] * stor7 < 0:
                            revert with 0, 'toInt256Safe is not success'
                        if stor8[address(arg1)].field_0 < 0:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                revert with 0, 'add is not success'
                        else:
                            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                                if stor8[address(arg1)].field_0 >= 0:
                                    revert with 0, 'add is not success'
                                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                                    revert with 0, 'add is not success'
                        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                            revert with 0, 'toUint256Safe is not success'
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(sub_11f1388eAddress)
                            call sub_11f1388eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128)
                            else:
                                if (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
}

function getAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x17e142d1 with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(arg1)].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               -1,
                               stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor8[address(arg1)].field_128,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           claimWait + lastClaimTimes[address(arg1)],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)] - block.timestamp
            if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(arg1)] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(arg1)].field_0 < 0:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                    if stor8[address(arg1)].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)] - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if lastProcessedIndex < 0:
            if delegate.return_data[0] - lastProcessedIndex <= delegate.return_data[0]:
                revert with 0, 'sub  is not success'
        else:
            if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
                if lastProcessedIndex >= 0:
                    revert with 0, 'sub  is not success'
                if delegate.return_data[0] - lastProcessedIndex <= delegate.return_data[0]:
                    revert with 0, 'sub  is not success'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(arg1)].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0] - lastProcessedIndex,
                               stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor8[address(arg1)].field_128,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           claimWait + lastClaimTimes[address(arg1)],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)] - block.timestamp
            if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(arg1)] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(arg1)].field_0 < 0:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                    if stor8[address(arg1)].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)] - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if delegate.return_data[0] < delegate.return_data[0]:
            revert with 0, 'add is not success'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(arg1)].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor8[address(arg1)].field_128,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           claimWait + lastClaimTimes[address(arg1)],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)] - block.timestamp
            if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(arg1)] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(arg1)].field_0 < 0:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                    if stor8[address(arg1)].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0],
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)] - block.timestamp
    if lastProcessedIndex > numberOfTokenHolders:
        revert with 0, 'SafeMath: subtraction overflow'
    if numberOfTokenHolders - lastProcessedIndex < 0:
        if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] >= delegate.return_data[0]:
            revert with 0, 'add is not success'
    else:
        if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] < delegate.return_data[0]:
            if numberOfTokenHolders - lastProcessedIndex >= 0:
                revert with 0, 'add is not success'
            if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] >= delegate.return_data[0]:
                revert with 0, 'add is not success'
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(arg1)].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                           stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor8[address(arg1)].field_128,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(arg1), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       claimWait + lastClaimTimes[address(arg1)],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)] - block.timestamp
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(arg1)] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(arg1)].field_0 < 0:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
                if stor8[address(arg1)].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)] - block.timestamp
    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(arg1)] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(arg1)].field_0 < 0:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
            if stor8[address(arg1)].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor7:
        if stor8[address(arg1)].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor8[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor8[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   claimWait + lastClaimTimes[address(arg1)],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               stor8[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)] - block.timestamp
    if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(arg1)] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(arg1)].field_0 < 0:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < balanceOf[address(arg1)] * stor7:
            if stor8[address(arg1)].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) >= balanceOf[address(arg1)] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if not lastClaimTimes[address(arg1)]:
        if 0 <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
                   lastClaimTimes[address(arg1)],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(arg1), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               0,
               -block.timestamp
    if claimWait + lastClaimTimes[address(arg1)] < lastClaimTimes[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if claimWait + lastClaimTimes[address(arg1)] <= block.timestamp:
        return address(arg1), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
               lastClaimTimes[address(arg1)],
               claimWait + lastClaimTimes[address(arg1)],
               0
    if block.timestamp > claimWait + lastClaimTimes[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return address(arg1), 
           delegate.return_data[0],
           numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
           (Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
           Mask(128, 128, stor8[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor7)) >> 128,
           lastClaimTimes[address(arg1)],
           claimWait + lastClaimTimes[address(arg1)],
           claimWait + lastClaimTimes[address(arg1)] - block.timestamp
}

function getAccountAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0xdeb3d896 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= delegate.return_data[0]:
        return 0, -1, -1, 0, 0, 0, 0, 0
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0xd1aa9e7e with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x94653bd3e57f5d1dc5343f09c794ad87caa7926a)
    delegate 0x94653bd3e57f5d1dc5343f09c794ad87caa7926a.0x17e142d1 with:
         gas gas_remaining wei
        args 11, address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor8[address(delegate.return_data[0])].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(delegate.return_data[0])].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               -1,
                               stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor8[address(delegate.return_data[0])].field_128,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           claimWait + lastClaimTimes[address(delegate.return_data[0])],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
            if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                    if stor8[address(delegate.return_data[0])].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if lastProcessedIndex < 0:
            if delegate.return_data[0] - lastProcessedIndex <= delegate.return_data[0]:
                revert with 0, 'sub  is not success'
        else:
            if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
                if lastProcessedIndex >= 0:
                    revert with 0, 'sub  is not success'
                if delegate.return_data[0] - lastProcessedIndex <= delegate.return_data[0]:
                    revert with 0, 'sub  is not success'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor8[address(delegate.return_data[0])].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(delegate.return_data[0])].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0] - lastProcessedIndex,
                               stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor8[address(delegate.return_data[0])].field_128,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           claimWait + lastClaimTimes[address(delegate.return_data[0])],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
            if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                    if stor8[address(delegate.return_data[0])].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if delegate.return_data[0] < delegate.return_data[0]:
            revert with 0, 'add is not success'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor8[address(delegate.return_data[0])].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor7:
                if stor8[address(delegate.return_data[0])].field_0 < 0:
                    revert with 0, 'toUint256Safe is not success'
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor8[address(delegate.return_data[0])].field_128,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           claimWait + lastClaimTimes[address(delegate.return_data[0])],
                           0
                if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
            if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
                revert with 0, 'toInt256Safe is not success'
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
            else:
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                    if stor8[address(delegate.return_data[0])].field_0 >= 0:
                        revert with 0, 'add is not success'
                    if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                        revert with 0, 'add is not success'
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0],
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
    if lastProcessedIndex > numberOfTokenHolders:
        revert with 0, 'SafeMath: subtraction overflow'
    if numberOfTokenHolders - lastProcessedIndex < 0:
        if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] >= delegate.return_data[0]:
            revert with 0, 'add is not success'
    else:
        if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] < delegate.return_data[0]:
            if numberOfTokenHolders - lastProcessedIndex >= 0:
                revert with 0, 'add is not success'
            if numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0] >= delegate.return_data[0]:
                revert with 0, 'add is not success'
    if not stor7:
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor8[address(delegate.return_data[0])].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor7:
            if stor8[address(delegate.return_data[0])].field_0 < 0:
                revert with 0, 'toUint256Safe is not success'
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                           stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor8[address(delegate.return_data[0])].field_128,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       claimWait + lastClaimTimes[address(delegate.return_data[0])],
                       0
            if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
        if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
            revert with 0, 'toInt256Safe is not success'
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
        else:
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
                if stor8[address(delegate.return_data[0])].field_0 >= 0:
                    revert with 0, 'add is not success'
                if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                    revert with 0, 'add is not success'
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               stor8[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
    if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(delegate.return_data[0])].field_0 < 0:
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
            if stor8[address(delegate.return_data[0])].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor7:
        if stor8[address(delegate.return_data[0])].field_0 < 0:
            revert with 0, 'toUint256Safe is not success'
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                       (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor8[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor8[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   claimWait + lastClaimTimes[address(delegate.return_data[0])],
                   0
        if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               stor8[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
    if balanceOf[address(delegate.return_data[0])] * stor7 / stor7 != balanceOf[address(delegate.return_data[0])]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balanceOf[address(delegate.return_data[0])] * stor7 < 0:
        revert with 0, 'toInt256Safe is not success'
    if stor8[address(delegate.return_data[0])].field_0 < 0:
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
            revert with 0, 'add is not success'
    else:
        if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < balanceOf[address(delegate.return_data[0])] * stor7:
            if stor8[address(delegate.return_data[0])].field_0 >= 0:
                revert with 0, 'add is not success'
            if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) >= balanceOf[address(delegate.return_data[0])] * stor7:
                revert with 0, 'add is not success'
    if stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7) < 0:
        revert with 0, 'toUint256Safe is not success'
    if not lastClaimTimes[address(delegate.return_data[0])]:
        if 0 <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
                   (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               0,
               -block.timestamp
    if claimWait + lastClaimTimes[address(delegate.return_data[0])] < lastClaimTimes[address(delegate.return_data[0])]:
        revert with 0, 'SafeMath: addition overflow'
    if claimWait + lastClaimTimes[address(delegate.return_data[0])] <= block.timestamp:
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
               (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
               lastClaimTimes[address(delegate.return_data[0])],
               claimWait + lastClaimTimes[address(delegate.return_data[0])],
               0
    if block.timestamp > claimWait + lastClaimTimes[address(delegate.return_data[0])]:
        revert with 0, 'SafeMath: subtraction overflow'
    return address(delegate.return_data[0]), 
           delegate.return_data[0],
           numberOfTokenHolders - lastProcessedIndex + delegate.return_data[0],
           (Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
           Mask(128, 128, stor8[address(delegate.return_data[0])].field_0 + (balanceOf[address(delegate.return_data[0])] * stor7)) >> 128,
           lastClaimTimes[address(delegate.return_data[0])],
           claimWait + lastClaimTimes[address(delegate.return_data[0])],
           claimWait + lastClaimTimes[address(delegate.return_data[0])] - block.timestamp
}



}
