contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
address adminAddress;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 sub_b208319f;
mapping of uint256 sub_a399b20f;

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

function sub_a399b20f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a399b20f[address(arg1)]
}

function sub_b208319f(?) payable {
    return sub_b208319f
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

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_2f5e65a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'you are not admin'
    rewardRate = arg1
}

function setnewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'you are not admin'
    adminAddress = arg1
}

function rewardPerToken() payable {
    if not sub_b208319f:
        return 0
    if block.timestamp < lastUpdateTime:
        revert with 'NH{q', 17
    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
        revert with 'NH{q', 17
    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not sub_b208319f:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f) - 1:
        revert with 'NH{q', 17
    return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f))
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_b208319f:
        if 0 < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if sub_a399b20f[address(arg1)] and -userRewardPerTokenPaid[address(arg1)] > -1 / sub_a399b20f[address(arg1)]:
            revert with 'NH{q', 17
        if -1 * sub_a399b20f[address(arg1)] * userRewardPerTokenPaid[address(arg1)] / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return ((-1 * sub_a399b20f[address(arg1)] * userRewardPerTokenPaid[address(arg1)] / 10^18) + rewards[address(arg1)])
    if block.timestamp < lastUpdateTime:
        revert with 'NH{q', 17
    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
        revert with 'NH{q', 17
    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not sub_b208319f:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f) - 1:
        revert with 'NH{q', 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f) < userRewardPerTokenPaid[address(arg1)]:
        revert with 'NH{q', 17
    if sub_a399b20f[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f) - userRewardPerTokenPaid[address(arg1)] > -1 / sub_a399b20f[address(arg1)]:
        revert with 'NH{q', 17
    if (rewardPerTokenStored * sub_a399b20f[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f * sub_a399b20f[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sub_a399b20f[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
        revert with 'NH{q', 17
    return (((rewardPerTokenStored * sub_a399b20f[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / sub_b208319f * sub_a399b20f[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sub_a399b20f[address(arg1)]) / 10^18) + rewards[address(arg1)])
}



}
