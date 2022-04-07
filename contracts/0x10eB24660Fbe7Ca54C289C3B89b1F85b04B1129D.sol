contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - exit()
#
address rewardsDistributionAddress;
uint256 stor1;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of struct rewards;
uint256 totalSupply;
uint256 stor12;
mapping of uint256 balanceOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1].field_0
}

function totalSupply() payable {
    return totalSupply
}

function rewardsDuration() payable {
    return rewardsDuration
}

function rewardsDistribution() payable {
    return rewardsDistributionAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    require rewardRate
    if rewardRate * rewardsDuration / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardRate * rewardsDuration)
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
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743616c6c6572206973206e6f742052657761726473446973747269627574696f6e20636f6e74726163,
                    mem[206 len 22]
    if totalSupply:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
    if block.timestamp >= periodFinish:
        if rewardsDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardsDuration
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = arg1 / rewardsDuration
        else:
            require periodFinish - block.timestamp
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardsDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardsDuration
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp + rewardsDuration < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
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
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
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
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)].field_0
    require balanceOf[address(arg1)]
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)].field_0)
}

function getReward() payable {
    stor1++
    if totalSupply:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
    if msg.sender:
        if not totalSupply:
            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(msg.sender)]:
                if rewards[address(msg.sender)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require balanceOf[address(msg.sender)]
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require block.timestamp - lastUpdateTime
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require periodFinish - lastUpdateTime
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if rewards[address(msg.sender)].field_0 > 0:
        rewards[address(msg.sender)].field_0 = 0
        if ext_code.size(rewardsTokenAddress) <= 0:
            revert with 0, 'SafeBEP20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
        call rewardsTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args rewards[address(msg.sender)].field_0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
    if stor1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor1++
    if totalSupply:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
    if msg.sender:
        if not totalSupply:
            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(msg.sender)]:
                if rewards[address(msg.sender)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require balanceOf[address(msg.sender)]
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require block.timestamp - lastUpdateTime
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require periodFinish - lastUpdateTime
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if arg1 <= 0:
        revert with 0, 'Cannot stake 0'
    if block.timestamp >= periodFinish:
        revert with 0, 'Stake finiehed'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if stor12 < totalSupply + arg1:
        revert with 0, 'Provided stakingtoken too high'
    if 10 * arg1 + 9 / 10 / 10 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply + arg1 - (10 * arg1 + 9 / 10 / 10) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if 0 < -10 * arg1 + 9 / 10 / 10:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
    if ext_code.size(stakingTokenAddress) <= 0:
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    emit Staked((arg1 - (10 * arg1 + 9 / 10 / 10)), msg.sender);
    if stor1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function stakeWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    stor1++
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if block.timestamp >= periodFinish:
                    revert with 0, 'Stake finiehed'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 < totalSupply + arg1:
                    revert with 0, 'Provided stakingtoken too high'
                if 10 * arg1 + 9 / 10 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_code.size(stakingTokenAddress) <= 0:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = uint32(arg1)
                call stakingTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
            else:
                if not totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                           funct uint8(arg3) << 24
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            require block.timestamp - lastUpdateTime
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            require periodFinish - lastUpdateTime
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if block.timestamp >= periodFinish:
                    revert with 0, 'Stake finiehed'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 < totalSupply + arg1:
                    revert with 0, 'Provided stakingtoken too high'
                if 10 * arg1 + 9 / 10 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_code.size(stakingTokenAddress) <= 0:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = uint32(arg1)
                call stakingTokenAddress with:
                   funct uint8(arg3) << 24
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
            else:
                if not totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require balanceOf[address(msg.sender)]
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if arg1 <= 0:
                        revert with 0, 'Cannot stake 0'
                    if block.timestamp >= periodFinish:
                        revert with 0, 'Stake finiehed'
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor12 < totalSupply + arg1:
                        revert with 0, 'Provided stakingtoken too high'
                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_code.size(stakingTokenAddress) <= 0:
                        revert with 0, 'SafeBEP20: call to non-contract'
                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = uint32(arg1)
                    call stakingTokenAddress with:
                       funct uint8(arg3) << 24
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            require block.timestamp - lastUpdateTime
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            require periodFinish - lastUpdateTime
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                           funct uint8(arg3) << 24
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                           funct uint8(arg3) << 24
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                   funct uint8(arg3) << 24
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                           funct uint8(arg3) << 24
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if block.timestamp >= periodFinish:
                            revert with 0, 'Stake finiehed'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor12 < totalSupply + arg1:
                            revert with 0, 'Provided stakingtoken too high'
                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_code.size(stakingTokenAddress) <= 0:
                            revert with 0, 'SafeBEP20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = uint32(arg1)
                        call stakingTokenAddress with:
                           funct uint8(arg3) << 24
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        if not totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    require block.timestamp - lastUpdateTime
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require balanceOf[address(msg.sender)]
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require periodFinish - lastUpdateTime
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
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
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                   funct uint8(arg3) << 24
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                   funct uint8(arg3) << 24
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                               funct uint8(arg3) << 24
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                   funct uint8(arg3) << 24
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if block.timestamp >= periodFinish:
                                revert with 0, 'Stake finiehed'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor12 < totalSupply + arg1:
                                revert with 0, 'Provided stakingtoken too high'
                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_code.size(stakingTokenAddress) <= 0:
                                revert with 0, 'SafeBEP20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = uint32(arg1)
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
                        else:
                            if not totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require balanceOf[address(msg.sender)]
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if block.timestamp >= periodFinish:
                                    revert with 0, 'Stake finiehed'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if stor12 < totalSupply + arg1:
                                    revert with 0, 'Provided stakingtoken too high'
                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_code.size(stakingTokenAddress) <= 0:
                                    revert with 0, 'SafeBEP20: call to non-contract'
                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[352 len 4] = uint32(arg1)
                                call stakingTokenAddress with:
                                   funct uint8(arg3) << 24
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if block.timestamp >= periodFinish:
                                            revert with 0, 'Stake finiehed'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if stor12 < totalSupply + arg1:
                                            revert with 0, 'Provided stakingtoken too high'
                                        if 10 * arg1 + 9 / 10 / 10 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                        if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                        require ext_code.size(stakingTokenAddress)
                                        call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_code.size(stakingTokenAddress) <= 0:
                                            revert with 0, 'SafeBEP20: call to non-contract'
                                        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[352 len 4] = uint32(arg1)
                                        call stakingTokenAddress with:
                                           funct uint8(arg3) << 24
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                    else:
                                        require block.timestamp - lastUpdateTime
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                   funct uint8(arg3) << 24
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if block.timestamp >= periodFinish:
                                                    revert with 0, 'Stake finiehed'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor12 < totalSupply + arg1:
                                                    revert with 0, 'Provided stakingtoken too high'
                                                if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if totalSupply + arg1 < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                                if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                                require ext_code.size(stakingTokenAddress)
                                                call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_code.size(stakingTokenAddress) <= 0:
                                                    revert with 0, 'SafeBEP20: call to non-contract'
                                                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[352 len 4] = uint32(arg1)
                                                call stakingTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[324 len 4]
                                        else:
                                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if block.timestamp >= periodFinish:
                                                revert with 0, 'Stake finiehed'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if stor12 < totalSupply + arg1:
                                                revert with 0, 'Provided stakingtoken too high'
                                            if 10 * arg1 + 9 / 10 / 10 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                            if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                            require ext_code.size(stakingTokenAddress)
                                            call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_code.size(stakingTokenAddress) <= 0:
                                                revert with 0, 'SafeBEP20: call to non-contract'
                                            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[352 len 4] = uint32(arg1)
                                            call stakingTokenAddress with:
                                               funct uint8(arg3) << 24
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[324 len 4]
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
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require balanceOf[address(msg.sender)]
                                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        require periodFinish - lastUpdateTime
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require balanceOf[address(msg.sender)]
                                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if block.timestamp >= periodFinish:
                                        revert with 0, 'Stake finiehed'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if stor12 < totalSupply + arg1:
                                        revert with 0, 'Provided stakingtoken too high'
                                    if 10 * arg1 + 9 / 10 / 10 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (10 * arg1 + 9 / 10 / 10)
                                    if balanceOf[stor0] + (10 * arg1 + 9 / 10 / 10) < balanceOf[stor0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor0] += 10 * arg1 + 9 / 10 / 10
                                    require ext_code.size(stakingTokenAddress)
                                    call stakingTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_code.size(stakingTokenAddress) <= 0:
                                        revert with 0, 'SafeBEP20: call to non-contract'
                                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[352 len 4] = uint32(arg1)
                                    call stakingTokenAddress with:
                                       funct uint8(arg3) << 24
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    emit Staked((arg1 - (10 * arg1 + 9 / 10 / 10)), msg.sender);
    if stor1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
