contract main {




// =====================  Runtime code  =====================


#
#  - info(address arg1)
#  - withdraw(uint256 arg1)
#  - getReward()
#  - withdrawAll()
#  - deposit(uint256 arg1)
#  - depositAll()
#  - recoverBEP20(address arg1, uint256 arg2)
#  - setMinter(address arg1)
#
address owner;
address rewardsDistributionAddress;
uint256 lastPauseTime;
uint8 paused;
address rewardsTokenAddress; offset 8
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 balance;
mapping of uint256 balanceOf;
uint256 poolId;
address keeperAddress;
mapping of uint256 depositedAt;
address helperAddress;
address minterAddress;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function minter() payable {
    return minterAddress
}

function totalSupply() payable {
    return balance
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[arg1]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function poolId() payable {
    return poolId
}

function rewardsDistribution() payable {
    return rewardsDistributionAddress
}

function paused() payable {
    return bool(paused)
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function helper() payable {
    return helperAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function lastPauseTime() payable {
    return lastPauseTime
}

function keeper() payable {
    return keeperAddress
}

function balance() payable {
    return balance
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardsDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsDistributionAddress = arg1
}

function setHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zero address'
    helperAddress = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'auth'
    if not arg1:
        revert with 0, 'zero address'
    keeperAddress = arg1
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardsDuration * rewardRate)
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0, 'period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(paused):
        paused = uint8(arg1)
        if uint8(arg1):
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(paused));
}

function tvlStaking() payable {
    require ext_code.size(helperAddress)
    staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args stakingTokenAddress, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tvlReward() payable {
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x5eaa8163 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, 0
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function apy() payable {
    require ext_code.size(helperAddress)
    staticcall helperAddress.compoundingAPY(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args poolId, 8760 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(helperAddress)
    staticcall helperAddress.compoundingAPY(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0, 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(helperAddress)
    staticcall helperAddress.compoundingAPY(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0, 8760 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 365:
        if not ext_call.return_data[0] / 365:
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / ext_call.return_data[0] / 365, 0, 0
    if ext_call.return_data[0] * ext_call.return_data[0] / 365 / ext_call.return_data[0] / 365 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] / 365:
        revert with 0, 'SafeMath: division by zero', 0
    return ext_call.return_data[0] * ext_call.return_data[0] / 365 / ext_call.return_data[0] / 365, 0, 0
}

function harvest() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    call rewardsTokenAddress.0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
}

function tvl() payable {
    require ext_code.size(helperAddress)
    staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args stakingTokenAddress, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x5eaa8163 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, 0
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvl(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function rewardPerToken() payable {
    if 0 == balance:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardsDistributionAddress != msg.sender:
        revert with 0, 'onlyRewardsDistribution'
    if balance != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 'SafeMath: division by zero', 0
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = arg1 / rewardsDuration
        else:
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0, 'SafeMath: multiplication overflow'
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 'SafeMath: division by zero', 0
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'reward'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function profitOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x5eaa8163 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if not minterAddress:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -ext_call.return_data[0], ext_call.return_data[0], 0
        if (rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not minterAddress:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args ((rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((rewards[address(arg1)] * ext_call.return_data[0]) + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0],
               0
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewards[address(arg1)]:
                    if not minterAddress:
                        return 0
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.isMinter(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.performanceFee(uint256 rg1) with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return -ext_call.return_data[0], ext_call.return_data[0], 0
                if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not minterAddress:
                    return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                       0,
                       0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                       0,
                       0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
                   ext_call.return_data[0],
                   0
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewards[address(arg1)]:
                    if not minterAddress:
                        return 0
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.isMinter(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.performanceFee(uint256 rg1) with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(minterAddress)
                    staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return -ext_call.return_data[0], ext_call.return_data[0], 0
                if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not minterAddress:
                    return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                       0,
                       0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                       0,
                       0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
                   ext_call.return_data[0],
                   0
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if not minterAddress:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -ext_call.return_data[0], ext_call.return_data[0], 0
        if (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not minterAddress:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args ((rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0],
               0
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if not minterAddress:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -ext_call.return_data[0], ext_call.return_data[0], 0
        if (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not minterAddress:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0],
               0
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if not minterAddress:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.isMinter(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(minterAddress)
                staticcall minterAddress.performanceFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(minterAddress)
                staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return -ext_call.return_data[0], ext_call.return_data[0], 0
            if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not minterAddress:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if not minterAddress:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -ext_call.return_data[0], ext_call.return_data[0], 0
        if (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not minterAddress:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
                   0,
                   0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((rewards[address(arg1)] * ext_call.return_data[0]) + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0],
               0
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)]:
            if not minterAddress:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.isMinter(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(minterAddress)
            staticcall minterAddress.performanceFee(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(minterAddress)
            staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -ext_call.return_data[0], ext_call.return_data[0], 0
        if ext_call.return_data[0] * rewards[address(arg1)] / rewards[address(arg1)] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not minterAddress:
            return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return ext_call.return_data[0] * rewards[address(arg1)] / 10^18, 0, 0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] * rewards[address(arg1)] / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0] * rewards[address(arg1)] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (ext_call.return_data[0] * rewards[address(arg1)] / 10^18) - ext_call.return_data[0], ext_call.return_data[0], 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
        if not minterAddress:
            return 0
        require ext_code.size(minterAddress)
        staticcall minterAddress.isMinter(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(minterAddress)
        staticcall minterAddress.performanceFee(uint256 rg1) with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(minterAddress)
        staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return -ext_call.return_data[0], ext_call.return_data[0], 0
    if (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not minterAddress:
        return (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
               0,
               0
    require ext_code.size(minterAddress)
    staticcall minterAddress.isMinter(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18, 
               0,
               0
    require ext_code.size(minterAddress)
    staticcall minterAddress.performanceFee(uint256 rg1) with:
            gas gas_remaining wei
           args ((rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > (rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(helperAddress)
    staticcall helperAddress.tvlInBNB(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(minterAddress)
    staticcall minterAddress.amountBunnyToMint(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((rewards[address(arg1)] * ext_call.return_data[0]) + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0], 
           ext_call.return_data[0],
           0
}



}
