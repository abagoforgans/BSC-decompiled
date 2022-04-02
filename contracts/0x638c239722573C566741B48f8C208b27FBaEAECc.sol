contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit()
#
address BUSDAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address rewardDistributionAddress;
address cashAddress;
uint256 DURATION;
uint256 starttime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
address feeToAddress;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 deposits;

function feeTo() payable {
    return feeToAddress
}

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function rewardDistribution() payable {
    return rewardDistributionAddress
}

function totalSupply() payable {
    return totalSupply
}

function DURATION() payable {
    return DURATION
}

function BUSD() payable {
    return BUSDAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function starttime() payable {
    return starttime
}

function owner() payable {
    return owner
}

function cash() payable {
    return cashAddress
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardDistributionAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rewardPerToken() payable {
    if not totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616c6c6572206973206e6f742072657761726420646973747269627574696f,
                    mem[197 len 31]
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp <= starttime:
            if DURATION <= 0:
                revert with 0, 'SafeMath: division by zero'
            require DURATION
            rewardRate = arg1 / DURATION
            lastUpdateTime = starttime
            if starttime + DURATION < starttime:
                revert with 0, 'SafeMath: addition overflow'
            periodFinish = starttime + DURATION
        else:
            if block.timestamp >= periodFinish:
                if DURATION <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require DURATION
                rewardRate = arg1 / DURATION
            else:
                if block.timestamp > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - block.timestamp:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if DURATION <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require DURATION
                    rewardRate = arg1 / DURATION
                else:
                    require periodFinish - block.timestamp
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if DURATION <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require DURATION
                    rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / DURATION
            lastUpdateTime = block.timestamp
            if block.timestamp + DURATION < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            periodFinish = block.timestamp + DURATION
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp <= starttime:
            if DURATION <= 0:
                revert with 0, 'SafeMath: division by zero'
            require DURATION
            rewardRate = arg1 / DURATION
            lastUpdateTime = starttime
            if starttime + DURATION < starttime:
                revert with 0, 'SafeMath: addition overflow'
            periodFinish = starttime + DURATION
        else:
            if block.timestamp >= periodFinish:
                if DURATION <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require DURATION
                rewardRate = arg1 / DURATION
            else:
                if block.timestamp > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - block.timestamp:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if DURATION <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require DURATION
                    rewardRate = arg1 / DURATION
                else:
                    require periodFinish - block.timestamp
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if DURATION <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require DURATION
                    rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / DURATION
            lastUpdateTime = block.timestamp
            if block.timestamp + DURATION < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            periodFinish = block.timestamp + DURATION
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    require balanceOf[address(arg1)]
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if block.timestamp < starttime:
                    revert with 0, 'BICBUSDPool: not start'
                if arg1 <= 0:
                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                49,
                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                mem[213 len 15]
                deposits[address(msg.sender)] += arg1
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if ext_code.size(BUSDAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if not totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                    call BUSDAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if block.timestamp < periodFinish:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                        else:
                            require block.timestamp - lastUpdateTime
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                        else:
                            require periodFinish - lastUpdateTime
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            else:
                                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                    call BUSDAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if block.timestamp < starttime:
                    revert with 0, 'BICBUSDPool: not start'
                if arg1 <= 0:
                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                49,
                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                mem[213 len 15]
                deposits[address(msg.sender)] += arg1
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if ext_code.size(BUSDAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call BUSDAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if not totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if block.timestamp < starttime:
                        revert with 0, 'BICBUSDPool: not start'
                    if arg1 <= 0:
                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                        revert with 0, 
                                    32,
                                    49,
                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                    mem[341 len 15]
                    deposits[address(msg.sender)] += arg1
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    if ext_code.size(BUSDAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call BUSDAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if block.timestamp >= periodFinish:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[469 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                        else:
                            require periodFinish - lastUpdateTime
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                    else:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                        else:
                            require block.timestamp - lastUpdateTime
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                    call BUSDAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call BUSDAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[469 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[597 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[597 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call BUSDAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[469 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp >= periodFinish:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                            else:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call BUSDAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[469 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp >= periodFinish:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[597 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                            else:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[597 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if block.timestamp < starttime:
                            revert with 0, 'BICBUSDPool: not start'
                        if arg1 <= 0:
                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                            revert with 0, 
                                        32,
                                        49,
                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                        mem[341 len 15]
                        deposits[address(msg.sender)] += arg1
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        if ext_code.size(BUSDAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call BUSDAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[597 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if block.timestamp < starttime:
                                    revert with 0, 'BICBUSDPool: not start'
                                if arg1 <= 0:
                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                    revert with 0, 
                                                32,
                                                49,
                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                mem[469 len 15]
                                deposits[address(msg.sender)] += arg1
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                if ext_code.size(BUSDAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if block.timestamp < starttime:
                                            revert with 0, 'BICBUSDPool: not start'
                                        if arg1 <= 0:
                                            revert with 0, 'BICBUSDPool: Cannot stake 0'
                                        if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                            revert with 0, 
                                                        32,
                                                        49,
                                                        0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                        mem[597 len 15]
                                        deposits[address(msg.sender)] += arg1
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        if ext_code.size(BUSDAddress) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if block.timestamp < starttime:
                                revert with 0, 'BICBUSDPool: not start'
                            if arg1 <= 0:
                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                revert with 0, 
                                            32,
                                            49,
                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                            mem[341 len 15]
                            deposits[address(msg.sender)] += arg1
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            if ext_code.size(BUSDAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call BUSDAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if block.timestamp < starttime:
                                        revert with 0, 'BICBUSDPool: not start'
                                    if arg1 <= 0:
                                        revert with 0, 'BICBUSDPool: Cannot stake 0'
                                    if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                        revert with 0, 
                                                    32,
                                                    49,
                                                    0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                    mem[469 len 15]
                                    deposits[address(msg.sender)] += arg1
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    if ext_code.size(BUSDAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if block.timestamp < starttime:
                                                revert with 0, 'BICBUSDPool: not start'
                                            if arg1 <= 0:
                                                revert with 0, 'BICBUSDPool: Cannot stake 0'
                                            if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                revert with 0, 
                                                            32,
                                                            49,
                                                            0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                            mem[597 len 15]
                                            deposits[address(msg.sender)] += arg1
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            if ext_code.size(BUSDAddress) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if block.timestamp < starttime:
                                                    revert with 0, 'BICBUSDPool: not start'
                                                if arg1 <= 0:
                                                    revert with 0, 'BICBUSDPool: Cannot stake 0'
                                                if deposits[address(msg.sender)] + arg1 < deposits[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if deposits[address(msg.sender)] + arg1 > 20000 * 10^18:
                                                    revert with 0, 
                                                                32,
                                                                49,
                                                                0x7342494342555344506f6f6c3a206465706f73697420616d6f756e742065786365656473206d6178696d756d2032303030,
                                                                mem[597 len 15]
                                                deposits[address(msg.sender)] += arg1
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1
                                                if ext_code.size(BUSDAddress) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                call BUSDAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
    emit Staked(arg1, msg.sender);
}



}
