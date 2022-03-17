contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit()
#
const DURATION = (168 * 24 * 3600)


address usdtAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address rewardDistributionAddress;
address devaddr;
address sub_5b737da2Address;
uint256 starttime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function rewardDistribution() {
    return rewardDistributionAddress
}

function totalSupply() {
    return totalSupply
}

function usdt() {
    return usdtAddress
}

function sub_5b737da2(?) {
    return sub_5b737da2Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardRate() {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function starttime() {
    return starttime
}

function owner() {
    return owner
}

function lastUpdateTime() {
    return lastUpdateTime
}

function devaddr() {
    return devaddr
}

function rewardPerTokenStored() {
    return rewardPerTokenStored
}

function periodFinish() {
    return periodFinish
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function lastTimeRewardApplicable() {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function sub_741cad27(?) {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: need dev'
    devaddr = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardDistribution(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardDistributionAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rewardPerToken() {
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
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
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
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if rewardDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
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
                    revert with 0, 'SafeMath: multiplication overflow'
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
                        revert with 0, 'SafeMath: multiplication overflow'
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
                    revert with 0, 'SafeMath: multiplication overflow'
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
                        revert with 0, 'SafeMath: multiplication overflow'
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
        rewardRate = arg1 / 168 * 24 * 3600
        lastUpdateTime = starttime
        if starttime + (168 * 24 * 3600) < starttime:
            revert with 0, 'SafeMath: addition overflow'
        periodFinish = starttime + (168 * 24 * 3600)
    else:
        if block.timestamp >= periodFinish:
            rewardRate = arg1 / 168 * 24 * 3600
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 / 168 * 24 * 3600
            else:
                require periodFinish - block.timestamp
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / 168 * 24 * 3600
        lastUpdateTime = block.timestamp
        if block.timestamp + (168 * 24 * 3600) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        periodFinish = block.timestamp + (168 * 24 * 3600)
    emit RewardAdded(arg1);
}

function earned(address arg1) {
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
            revert with 0, 'SafeMath: multiplication overflow'
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
                revert with 0, 'SafeMath: multiplication overflow'
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
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
                revert with 0, 'SafeMath: multiplication overflow'
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
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
            revert with 0, 'SafeMath: multiplication overflow'
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
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
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
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
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
        revert with 0, 'SafeMath: multiplication overflow'
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if block.timestamp < starttime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if not ext_code.hash(usdtAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            call usdtAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if not ext_code.hash(usdtAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[356 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                call usdtAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if not ext_code.hash(usdtAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[484 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                call usdtAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                    revert with 0, 'SafeMath: multiplication overflow'
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
                        revert with 0, 'SafeMath: multiplication overflow'
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
                    revert with 0, 'SafeMath: multiplication overflow'
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
                        revert with 0, 'SafeMath: multiplication overflow'
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
        if not msg.sender:
            if block.timestamp < starttime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if not ext_code.hash(usdtAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            call usdtAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if not ext_code.hash(usdtAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[484 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                call usdtAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
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
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if not ext_code.hash(usdtAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(usdtAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                call usdtAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Staked(arg1, msg.sender);
}



}
