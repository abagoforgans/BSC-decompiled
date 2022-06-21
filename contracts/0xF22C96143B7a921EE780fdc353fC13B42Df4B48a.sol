contract main {




// =====================  Runtime code  =====================


address rewardsTokenAddress;
address stakingTokenAddress;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 stor7;
mapping of uint256 stor8;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function _fallback() payable {
    revert
}

function rewardPerToken() payable {
    if not stor7:
        return 0
    if block.timestamp < lastUpdateTime:
        revert with 'NH{q', 17
    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
        revert with 'NH{q', 17
    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not stor7:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
        revert with 'NH{q', 17
    return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7))
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7:
        if 0 < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if stor8[address(arg1)] and -userRewardPerTokenPaid[address(arg1)] > -1 / stor8[address(arg1)]:
            revert with 'NH{q', 17
        if -1 * stor8[address(arg1)] * userRewardPerTokenPaid[address(arg1)] / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return ((-1 * stor8[address(arg1)] * userRewardPerTokenPaid[address(arg1)] / 10^18) + rewards[address(arg1)])
    if block.timestamp < lastUpdateTime:
        revert with 'NH{q', 17
    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
        revert with 'NH{q', 17
    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not stor7:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
        revert with 'NH{q', 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) < userRewardPerTokenPaid[address(arg1)]:
        revert with 'NH{q', 17
    if stor8[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - userRewardPerTokenPaid[address(arg1)] > -1 / stor8[address(arg1)]:
        revert with 'NH{q', 17
    if (rewardPerTokenStored * stor8[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor8[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
        revert with 'NH{q', 17
    return (((rewardPerTokenStored * stor8[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor8[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function getReward() payable {
    if not stor7:
        rewardPerTokenStored = 0
        lastUpdateTime = block.timestamp
        if 0 < userRewardPerTokenPaid[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
    else:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
            revert with 'NH{q', 17
        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7
        lastUpdateTime = block.timestamp
        if not stor7:
            if 0 < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
        else:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not stor7:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
                revert with 'NH{q', 17
            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    rewards[address(msg.sender)] = 0
    call rewardsTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, rewards[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7:
        rewardPerTokenStored = 0
        lastUpdateTime = block.timestamp
        if 0 < userRewardPerTokenPaid[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
    else:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
            revert with 'NH{q', 17
        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7
        lastUpdateTime = block.timestamp
        if not stor7:
            if 0 < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
        else:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not stor7:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
                revert with 'NH{q', 17
            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if stor7 < arg1:
        revert with 'NH{q', 17
    stor7 -= arg1
    if stor8[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    stor8[address(msg.sender)] -= arg1
    call stakingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7:
        rewardPerTokenStored = 0
        lastUpdateTime = block.timestamp
        if 0 < userRewardPerTokenPaid[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
    else:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
            revert with 'NH{q', 17
        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7
        lastUpdateTime = block.timestamp
        if not stor7:
            if 0 < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and -userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += -1 * stor8[address(msg.sender)] * userRewardPerTokenPaid[address(msg.sender)] / 10^18
        else:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not stor7:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - 1:
                revert with 'NH{q', 17
            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if stor8[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7) - userRewardPerTokenPaid[address(msg.sender)] > -1 / stor8[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * stor8[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / stor7 * stor8[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stor8[address(msg.sender)]) / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if stor7 > -arg1 - 1:
        revert with 'NH{q', 17
    stor7 += arg1
    if stor8[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stor8[address(msg.sender)] += arg1
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
